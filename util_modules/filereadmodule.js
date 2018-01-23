'use strict';

/**
 *
 * @param {string} fileName
 * @return {string}
 */

exports.fileRead = function (fileName) {
    var data = fs.readFileSync(fileName);
    return data;
    
}