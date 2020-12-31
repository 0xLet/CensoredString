import XCTest
@testable import CensoredString

final class CensoredStringTests: XCTestCase {
    func testBasicCensor() {
        CensoredString.censoredWords = [
            "Hello",
            "World"
        ]
        
        XCTAssertEqual(CensoredString("Hello, Hello!").censored,
                       CensoredString("World, World!").censored)
    }
    
    func testCaseCensor() {
        CensoredString.censoredWords = [
            "Hello",
            "World"
        ]
        
        XCTAssertNotEqual(CensoredString("hello, Hello!").censored,
                       CensoredString("World, World!").censored)
    }
    
    func testCaseCensor_caseInsensitive() {
        CensoredString.censoredOptions = .caseInsensitive
        CensoredString.censoredWords = [
            "hello",
            "world"
        ]
        
        XCTAssertEqual(CensoredString("hello, Hello!").censored,
                       CensoredString("World, World!").censored)
    }
    
    func testBasicCensor_original() {
        CensoredString.censoredWords = [
            "Hello",
            "World",
        ]
        
        XCTAssertNotEqual(CensoredString("Hello, Hello!").original,
                       CensoredString("World, World!").original)
    }
    
    func testCensorPork() {
        CensoredString.censoredOptions = .caseInsensitive
        CensoredString.censoredWords = [
            "bacon",
            "pork",
        ]
        
        let bacon_ipsum = "Bacon ipsum dolor amet chicken doner buffalo capicola, ribeye hamburger t-bone flank sausage pork chop tri-tip. Spare ribs filet mignon tri-tip short loin venison biltong ball tip tongue leberkas. Short ribs shoulder doner tongue sirloin beef ribs biltong tail picanha kevin. Pork jowl porchetta salami tri-tip ribeye. Short loin burgdoggen shank ground round spare ribs jowl shoulder pork belly andouille. Capicola bacon brisket prosciutto. Chicken ham beef ribs, brisket short loin shank t-bone kevin pork loin."
        
        let expected_censored_ipsum = "***** ipsum dolor amet chicken doner buffalo capicola, ribeye hamburger t-bone flank sausage **** chop tri-tip. Spare ribs filet mignon tri-tip short loin venison biltong ball tip tongue leberkas. Short ribs shoulder doner tongue sirloin beef ribs biltong tail picanha kevin. **** jowl porchetta salami tri-tip ribeye. Short loin burgdoggen shank ground round spare ribs jowl shoulder **** belly andouille. Capicola ***** brisket prosciutto. Chicken ham beef ribs, brisket short loin shank t-bone kevin **** loin."
        
        XCTAssertEqual(CensoredString(bacon_ipsum).censored, expected_censored_ipsum)
    }


    static var allTests = [
        ("testBasicCensor", testBasicCensor),
        ("testCaseCensor", testCaseCensor),
        ("testCaseCensor_caseInsensitive", testCaseCensor_caseInsensitive),
        ("testBasicCensor_original", testBasicCensor_original),
        ("testCensorPork", testCensorPork)
    ]
}
