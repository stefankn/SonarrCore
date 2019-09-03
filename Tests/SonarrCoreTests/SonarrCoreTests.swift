import XCTest
@testable import SonarrCore

final class SonarrCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SonarrCore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
