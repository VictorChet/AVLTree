import XCTest
@testable import AVLTree

class AVLTreeTests: XCTestCase {
    
    func testInitWithKey() {
        let sut = AVLTree(key: 3)
        XCTAssertEqual(sut.key, 3)
    }
    
    func testInsertLeftToEmpty() {
        let sut = AVLTree(key: 3)
        let left = AVLTree(key: 2)
        sut.insert(left)
    }

}
