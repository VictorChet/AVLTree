import XCTest
@testable import AVLTree

class AVLTreeTests: XCTestCase {
    
    func testInitWithKey() {
        let sut = AVLTree(key: 3)
        XCTAssertEqual(sut.key, 3)
    }

}
