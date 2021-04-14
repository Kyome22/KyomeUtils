import XCTest
@testable import KyomeUtils

final class CGSizeTests: XCTestCase {

    let v: CGFloat = 3.0
    var s1: CGSize = .zero
    var s2: CGSize = .zero

    override func setUp() {
        s1 = CGSize(width: 24, height: 57)
        s2 = CGSize(width: 76, height: 43)
    }

    func testAddition() {
        XCTAssertEqual(s1 + s2, CGSize(width: 100, height: 100))
    }

    func testAdditionAssignment() {
        s1 += s2
        XCTAssertEqual(s1, CGSize(width: 100, height: 100))
    }

    func testSubtraction() {
        XCTAssertEqual(s1 - s2, CGSize(width: -52, height: 14))
    }

    func testSubtractionAssignment() {
        s1 -= s2
        XCTAssertEqual(s1, CGSize(width: -52, height: 14))
    }

    func testMultiplication() {
        XCTAssertEqual(v * s1, CGSize(width: 72, height: 171))
        XCTAssertEqual(s1 * v, CGSize(width: 72, height: 171))
    }

    func testMultiplicationAssignment() {
        s1 *= v
        XCTAssertEqual(s1, CGSize(width: 72, height: 171))
    }

    func testDivision() {
        XCTAssertEqual(s1 / v, CGSize(width: 8, height: 19))
    }

    func testDivisionAssignment() {
        s1 /= v
        XCTAssertEqual(s1, CGSize(width: 8, height: 19))
    }

    func testInitSide() {
        let s = CGSize(345.6)
        XCTAssertEqual(s, CGSize(width: 345.6, height: 345.6))
    }

    func testIntSize() {
        let s = CGSize(width: 1.23, height: -5.67)
        XCTAssertEqual(s.intSize, CGSize(width: 1, height: -5))
    }

}
