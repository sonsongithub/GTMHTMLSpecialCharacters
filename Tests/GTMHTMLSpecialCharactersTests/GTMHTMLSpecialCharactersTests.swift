import XCTest
@testable import GTMHTMLSpecialCharacters

class GTMHTMLSpecialCharactersTests: XCTestCase {
    func testExample() {
        let a = "aaa$$&&"
        print(a.gtm_stringByEscapingForHTML())
    }


    static var allTests : [(String, (GTMHTMLSpecialCharactersTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
