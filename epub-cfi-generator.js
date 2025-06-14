const fs = require('fs');
const path = require('path');
const xmldom = require('@xmldom/xmldom');
const AdmZip = require('adm-zip');
const tmp = require('tmp');

const xpathUtils = require('./readium-cfi/xpathUtils');
const cfiGenerator = require('./readium-cfi/cfi_generator').Generator;

const { DEBUG } = process.env;

(() => {
  const domParser = new xmldom.DOMParser();

  function validateSingleNode(nodes) {
    if (nodes.length !== 1) {
      if (DEBUG) {
        nodes.forEach(console.log);
      }
      throw new Error(`Ambiguous nodes, size: ${nodes.length}`);
    }
    return nodes[0];
  }

  function getPackageFilePath(epubPath) {
    return new Promise((resolve, reject) => {
      const filePath = path.join(epubPath, 'META-INF/container.xml');
      fs.readFile(filePath, 'utf8', (err, data) => {
        try {
          if (err) {
            throw new Error(`Error reading container.xml file ${filePath}: ${err}`);
          }

          resolve(path.join(epubPath, validateSingleNode(xpathUtils.nsXPath(
            xpathUtils.NS_CONTAINER,
            '//main:rootfile',
            domParser.parseFromString(data)
          )).getAttribute('full-path')));
        } catch (e) {
          reject(e);
        }
      });
    });
  }

  function getSpinesInfo(packageFilePath) {
    const rootDir = path.dirname(packageFilePath);

    return new Promise((resolve, reject) => {
      fs.readFile(packageFilePath, 'utf8', (err, data) => {
        try {
          if (err) {
            throw new Error(`Error reading package file ${packageFilePath}: ${err}`);
          }

          const doc = domParser.parseFromString(data);
          const itemrefs = xpathUtils.nsXPath(xpathUtils.NS_PACKAGE_DOC, '//main:spine//main:itemref', doc);

          if (DEBUG) {
            console.log(`spines found: ${itemrefs.length}`);
          }

          resolve(itemrefs.map((itemref) => {
            const item = validateSingleNode(xpathUtils.nsXPath(
              xpathUtils.NS_PACKAGE_DOC,
              `//main:item[@id="${itemref.getAttribute('idref')}"]`,
              doc
            ));

            return {
              spineCfi: cfiGenerator.createCFIElementSteps(itemref, 'package', null, null, null),
              idref: itemref.getAttribute('idref'),
              href: item.getAttribute('href'),
              path: `${rootDir}/${item.getAttribute('href')}`
            };
          }));
        } catch (e) {
          reject(e);
        }
      });
    });
  }

	let full_text = "";
	let offset = 1;

  function getSpineNodesCfi(spineFilePath, spineNodeCfi) {
    return new Promise((resolve, reject) => {
      fs.readFile(spineFilePath, 'utf8', (err, data) => {
        try {
          if (err) {
            throw new Error(`Error reading spine file ${spineFilePath}: ${err}`);
          }

          const doc = domParser.parseFromString(data);

          const textNodes = xpathUtils.htmlXPath('/main:html/main:body//text()[normalize-space()]', doc);

          if (DEBUG) {
            console.log(`spine file ${spineFilePath}, length: ${data.length}, number of text nodes: ${textNodes.length}`);
          }

          resolve(textNodes.map((node) => {
            const cfi = cfiGenerator.generateCharacterOffsetCFIComponent(node, null, null, null);
						old_offset = offset;
						offset += node.toString().length;
						full_text += node.toString();
            return {
              node: node.toString(),
							offset: old_offset,
							length: node.toString().length,
              cfi: `${spineNodeCfi}!${cfi}`
            };
          }));
        } catch (e) {
          reject(e);
        }
      });
    });
  }

  function EpubCfiGenerator() {
    if (!(this instanceof EpubCfiGenerator)) {
      return new EpubCfiGenerator();
    }
  }

  EpubCfiGenerator.prototype.parse = (inputPath) => new Promise((resolve, reject) => {
    fs.lstat(inputPath, (err, stats) => {
      if (!err) {
        resolve(stats);
      } else {
        reject(err);
      }
    });
  }).then((stats) => {
    if (!stats.isDirectory()) {
      tmp.setGracefulCleanup();
      const tmpDirObj = tmp.dirSync({});
      const zip = new AdmZip(inputPath);
      zip.extractAllTo(tmpDirObj.name.toString(), true);

      return tmpDirObj.name;
    }
    return inputPath;
  }).then(getPackageFilePath).then((packageFilePath) => getSpinesInfo(packageFilePath))
    .then(
      (spinesInfo) => Promise.all(
        spinesInfo.map(
          (spineInfo) => getSpineNodesCfi(spineInfo.path, spineInfo.spineCfi).then((nodes) => {
            // eslint-disable-next-line no-param-reassign
            spineInfo.content = nodes;
            /* eslint-disable no-param-reassign */
            delete spineInfo.path;
            delete spineInfo.spineCfi;
            /* eslint-enable */
          })
        )
      ).then(() => {return {full_text: full_text, spines: spinesInfo}})
    );

  module.exports = EpubCfiGenerator;
})();
