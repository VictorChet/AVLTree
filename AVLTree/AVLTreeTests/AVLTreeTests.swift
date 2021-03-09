import XCTest
@testable import AVLTree

class AVLTreeTests: XCTestCase {
    
    func testInitWithKey() {
        let sut = AVLTree(key: 3)
        XCTAssertEqual(sut.key, 3)
    }
    
    func testEmptyTreesEqual() {
        let tree1 = AVLTree(key: 3)
        let tree2 = AVLTree(key: 3)
        XCTAssertTrue(tree1 == tree2)
    }
    
    func testEmptyTreesNotEqual() {
        let tree1 = AVLTree(key: 3)
        let tree2 = AVLTree(key: 4)
        XCTAssertTrue(tree1 != tree2)
    }
    
    func testInsertLeftToEmpty() {
        let sut = AVLTree(key: 3)
        let left = AVLTree(key: 2)
        sut.insert(left)
        XCTAssertEqual(sut.left, left)
    }

}
