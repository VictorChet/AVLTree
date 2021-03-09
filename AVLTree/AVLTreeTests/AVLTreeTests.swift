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
    
    func testTreesEqual() {
        let tree1 = AVLTree(key: 3)
        tree1.insert(AVLTree(key: 2))
        let tree2 = AVLTree(key: 3)
        tree2.insert(AVLTree(key: 2))
        XCTAssertTrue(tree1 == tree2)
        tree1.insert(AVLTree(key: 4))
        tree2.insert(AVLTree(key: 4))
        XCTAssertTrue(tree1 == tree2)
        tree1.insert(AVLTree(key: 1))
        tree2.insert(AVLTree(key: 1))
        XCTAssertTrue(tree1 == tree2)
        tree1.insert(AVLTree(key: 5))
        tree2.insert(AVLTree(key: 5))
        XCTAssertTrue(tree1 == tree2)
    }
    
    func testTreesNotEqual() {
        let tree1 = AVLTree(key: 4)
        tree1.insert(AVLTree(key: 3))
        let tree2 = AVLTree(key: 4)
        tree2.insert(AVLTree(key: 2))
        XCTAssertTrue(tree1 != tree2)
        let tree3 = AVLTree(key: 4)
        tree3.insert(AVLTree(key: 3))
        tree1.insert(AVLTree(key: 5))
        tree3.insert(AVLTree(key: 6))
        XCTAssertTrue(tree1 != tree3)
        tree1.insert(AVLTree(key: 2))
        let tree4 = AVLTree(key: 4)
        tree4.insert(AVLTree(key: 3))
        tree4.insert(AVLTree(key: 5))
        tree4.insert(AVLTree(key: 1))
        XCTAssertTrue(tree1 != tree4)
        tree1.insert(AVLTree(key: 6))
        let tree5 = AVLTree(key: 4)
        tree5.insert(AVLTree(key: 3))
        tree5.insert(AVLTree(key: 5))
        tree5.insert(AVLTree(key: 2))
        tree5.insert(AVLTree(key: 7))
        XCTAssertTrue(tree1 != tree5)
    }
    
    func testInsertLeftToEmpty() {
        let sut = AVLTree(key: 3)
        let left = AVLTree(key: 2)
        sut.insert(left)
        XCTAssertEqual(sut.left, left)
    }
    
    func testInsertRightToEmpty() {
        let sut = AVLTree(key: 3)
        let right = AVLTree(key: 4)
        sut.insert(right)
        XCTAssertEqual(sut.right, right)
    }

}
