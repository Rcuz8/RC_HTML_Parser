//
//  RC_HTML_Parser.swift
//  Testing Anything
//
//  Created by Ryan Cocuzzo on 12/25/16.
//  Copyright © 2016 rcocuzzo8. All rights reserved.
//

import Foundation

class RC_HTML_Parser {
    
    var html: String!
    
    
    
    init(htmlToBeParsed: String) {
        html = htmlToBeParsed
    }
    
    /*
     input: tag being searched for
     output: list of String code between Opening tag and Closing tag for the specified input tag
     
     Process:
     
     Create a temporary variable for the class html variable, this variable will be shrunk throughout the method to filter out crap code and already noted code
     Create a variable for the string list of code
     Try: Check for instances of tag variable in html string, get the location of that tag and the closing tag. Note the string between the tags and add them to the list of strings.
     
     */
    
    func getParsedStringsWith(tagName: String) -> [String] {
        if let baseHTML = html as? String {
            var replHtml = baseHTML
            var stringList = [String] ()
            let tag = "<\(tagName)>"
            let closingTag = "</\(tagName)>"
            print("Method Entry..\n HTML: \(html)\n")
            print("opening tag: \(tag)")
            print("closing tag: \(closingTag)")
            var loop = 1
            while replHtml.contains(tag) && replHtml.contains(closingTag) {
                print("\n\n\n\nLoop #\(loop)")
                loop = loop + 1
                print("replHtml contains tag and closing tag..\nHTML:   \(replHtml)")
                // -----
                
                let start = replHtml.indexOf(target: tag)! + tag.length
                let end = replHtml.indexOf(target: closingTag)!              //+ closingTag.length
                print("Start: \(start)")
                print("End: \(end)")
                //      let r = Range(uncheckedBounds: (lower: start, upper: end))
                
                // -----
                
                
                //      let tagInt: Int = replHtml.indexOf(target: tag)! + tag.length
                let ti = replHtml.index(replHtml.startIndex, offsetBy: start)
                let cti = replHtml.index(replHtml.startIndex, offsetBy: end)
                print(ti)
                print(cti)
                let range = Range(uncheckedBounds: (lower: ti, upper: cti))
                
                //         let tagIndex = replHtml.distance(from: replHtml.startIndex, to: <#T##String.Index#>)
                
                
                let htmlSnippet = replHtml[range] // Found It!
                
                
                //  Shrink replHTML
                let newLowerBound = replHtml.index(range.upperBound, offsetBy: closingTag.length)
                let newReplHtmlRange = Range(uncheckedBounds: (lower: newLowerBound, upper: replHtml.endIndex))
                replHtml = replHtml.substring(with: newReplHtmlRange)
                
                // Add htmlSnippet to list
                stringList.append(htmlSnippet)
                
                
            }
            return stringList
        } else {
            return []
        }
    }
    
}

extension String {
    var length:Int {
        return self.characters.count
    }
    
    
    func indexOf(target: String) -> Int? {
        
        let range = (self as NSString).range(of: target)
        
        guard range.toRange() != nil else {
            return nil
        }
        
        return range.location
        
    }
    func lastIndexOf(target: String) -> Int? {
        
        
        
        let range = (self as NSString).range(of: target, options: NSString.CompareOptions.backwards)
        
        guard range.toRange() != nil else {
            return nil
        }
        
        return self.length - range.location - 1
        
    }
    func contains(s: String) -> Bool {
        return (self.range(of: s) != nil) ? true : false
    }
    
    static public var html: String {
        get {
            return "html"
        }
    }
    
    static public var header1: String {
        get {
            return "h1"
        }
    }
    
    static public var header2: String {
        get {
            return "h2"
        }
    }
    
    static public var header3: String {
        get {
            return "h3"
        }
    }
    
    static public var header4: String {
        get {
            return "h4"
        }
    }
    
    static public var header5: String {
        get {
            return "h5"
        }
    }
    
    static public var section: String {
        get {
            return "div"
        }
    }
    
    static public var dialog: String {
        get {
            return "dialog"
        }
    }
    
    static public var descriptionList: String {
        get {
            return "dl"
        }
    }
    
    static public var emphasized: String {
        get {
            return "em"
        }
    }
    
    static public var footer: String {
        get {
            return "footer"
        }
    }
    
    static public var themeChange: String {
        get {
            return "hr"
        }
    }
    
    static public var list: String {
        get {
            return "li"
        }
    }
    
    static public var main: String {
        get {
            return "main"
        }
    }
    
    static public var menu: String {
        get {
            return "menu"
        }
    }
    
    static public var orderedList: String {
        get {
            return "ol"
        }
    }
    
    static public var dropDownOptionGroup: String {
        get {
            return "optgroup"
        }
    }
    
    static public var dropDownList: String {
        get {
            return "select"
        }
    }
    
    static public var paragraph: String {
        get {
            return "p"
        }
    }
    
    static public var section2: String {
        get {
            return "section"
        }
    }
    
    static public var section3: String {
        get {
            return "span"
        }
    }
    
    static public var bold: String {
        get {
            return "strong"
        }
    }
    
    static public var table: String {
        get {
            return "table"
        }
    }
    
    static public var tableBodyContent: String {
        get {
            return "tbody"
        }
    }
    
    static public var tableCell: String {
        get {
            return "td"
        }
    }
    
    static public var tableFooter: String {
        get {
            return "tfoot"
        }
    }
    
    static public var tableHeader: String {
        get {
            return "thead"
        }
    }
    
    static public var tableRow: String {
        get {
            return "tr"
        }
    }
    
    static public var unorderedList: String {
        get {
            return "ul"
        }
    }
    
    static public var lineBreak: String {
        get {
            return "br"
        }
    }
    
    static public var article: String {
        get {
            return "article"
        }
    }
    
    static public var address: String {
        get {
            return "address"
        }
    }
    
}


