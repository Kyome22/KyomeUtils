import XCTest
@testable import KyomeUtils

final class CGPointTests: XCTestCase {

    let v: CGFloat = 3.0
    var p1: CGPoint = .zero
    var p2: CGPoint = .zero

    override func setUp() {
        p1 = CGPoint(x: 24, y: 57)
        p2 = CGPoint(x: 76, y: 43)
    }

    func testAddition() {
        XCTAssertEqual(p1 + p2, CGPoint(x: 100, y: 100))
    }

    func testAdditionAssignment() {
        p1 += p2
        XCTAssertEqual(p1, CGPoint(x: 100, y: 100))
    }

    func testSubtraction() {
        XCTAssertEqual(p1 - p2, CGPoint(x: -52, y: 14))
    }

    func testSubtractionAssignment() {
        p1 -= p2
        XCTAssertEqual(p1, CGPoint(x: -52, y: 14))
    }

    func testMultiplication() {
        XCTAssertEqual(v * p1, CGPoint(x: 72, y: 171))
        XCTAssertEqual(p1 * v, CGPoint(x: 72, y: 171))
    }

    func testMultiplicationAssignment() {
        p1 *= v
        XCTAssertEqual(p1, CGPoint(x: 72, y: 171))
    }

    func testDivision() {
        XCTAssertEqual(p1 / v, CGPoint(x: 8, y: 19))
    }

    func testDivisionAssignment() {
        p1 /= v
        XCTAssertEqual(p1, CGPoint(x: 8, y: 19))
    }

    func testInitScalar() {
        let p = CGPoint(345.6)
        XCTAssertEqual(p, CGPoint(x: 345.6, y: 345.6))
    }

    func testIntPoint() {
        let p = CGPoint(x: 1.23, y: -5.67)
        XCTAssertEqual(p.intPoint, CGPoint(x: 1, y: -5))
    }

    func testLength() {
        let p1 = CGPoint(x: 10, y: -10)
        let p2 = CGPoint(x: 50, y: 20)
        XCTAssertEqual(p2.length(from: p1), 50)
    }

    func testRadian() {
        let p1 = CGPoint(x: 10, y: -10)
        let p2 = CGPoint(x: 60, y: 40)
        XCTAssertEqual(p2.radian(from: p1), CGFloat.pi / 4.0)
    }

    func testDegree() {
        let p1 = CGPoint(x: 10, y: -10)
        let p2 = CGPoint(x: 60, y: 40)
        XCTAssertEqual(p2.degree(from: p1), 45)
    }

}
