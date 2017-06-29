/*
npm install htmlparser2
 */
var path = require("path");
var htmlparser = require('htmlparser2');
_ = require("../../js/underscore-min.js");
module.exports = function(content) {
    this.cacheable && this.cacheable();

    var output = '';
    var templateCount = 0;
    var err = false;
    var compiledTemplates = [];

    var writeOutput = new htmlparser.DomHandler(function (error, dom) {
        output += 'module.exports = {\n';
        _.each(dom, function (el) {
            if (el.children &&
                el.children[0]  &&
                el.type === 'script' &&
                el.attribs.type === 'text/template') {
                var templateString = el.children[0].data;
                var id = el.attribs.id;
                var compiled;
                try {
                    compiled = '"'+id + '": ' + JSON.stringify(templateString);
                    compiledTemplates.push(compiled);
                    templateCount += 1;
                }
                catch (e) {
                    err = new Error('Template Compilation Error: ' + '#' + id + ' - ' + e.message);
                }
            }
        });
        output += compiledTemplates.join(',\n');
        output += '\n};';
    });

    var parser = new htmlparser.Parser(writeOutput);
    parser.parseComplete(content);

    if (err) {
        return err;
    }

    if (templateCount > 0) {
        return output;
    } else {
        return '';
    }
}