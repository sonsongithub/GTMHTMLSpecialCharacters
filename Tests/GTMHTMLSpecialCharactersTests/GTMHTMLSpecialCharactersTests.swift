import XCTest
@testable import GTMHTMLSpecialCharacters

class GTMHTMLSpecialCharactersTests: XCTestCase {

    let testCount = 1000
    let stringToBeUnescaped = "&quot;&amp;&amp;apos;&lt;&gt;&OElig;&oelig;&Scaron;&scaron;&Yuml;&circ;&tilde;&ensp;&emsp;&thinsp;&zwnj;&zwj;&lrm;&rlm;&ndash;&mdash;&lsquo;&rsquo;&sbquo;&ldquo;&rdquo;&bdquo;&dagger;&Dagger;&permil;&lsaquo;&rsaquo;&euro;hoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahoghoge&copy;a&copy;aaaaa&copy;aaaaahog"
    let stringToBeEscaped = "\"&&apos;<>ŒœŠšŸˆ˜   ‌‍‎‏–—‘’‚“”„†‡‰‹›€hoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahoghoge©a©aaaaa©aaaaahog"
    
    func testStringRoundtrippingEscapedHTML() {
        let string = "This test ©™®๒०᠐٧"
        XCTAssert(string.gtm_stringByEscapingForHTML().gtm_stringByUnescapingFromHTML() == string)
    }
    
    func testEscapePerformance() {
        self.measure {
            for _ in 0..<self.testCount {
                let _ = self.stringToBeUnescaped.gtm_stringByUnescapingFromHTML()
            }
        }
    }
    
    func testUnescapePerformance() {
        self.measure {
            for _ in 0..<self.testCount {
                let _ = self.stringToBeEscaped.gtm_stringByEscapingForHTML()
            }
        }
    }

    static var allTests : [(String, (GTMHTMLSpecialCharactersTests) -> () throws -> Void)] {
        return [
            ("testStringRoundtrippingEscapedHTML", testStringRoundtrippingEscapedHTML),
            ("testEscapePerformance", testEscapePerformance),
            ("testUnescapePerformance", testUnescapePerformance),
        ]
    }
}
