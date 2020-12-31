import XCTest
@testable import CensoredString

final class CensoredStringTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CensoredString().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
