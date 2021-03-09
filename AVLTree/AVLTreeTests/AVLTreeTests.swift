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
        var tree1: AVLTree? = AVLTree(key: 3)
        tree1 = tree1?.inserting(AVLTree(key: 2))
        var tree2: AVLTree? = AVLTree(key: 3)
        tree2 = tree2?.inserting(AVLTree(key: 2))
        XCTAssertTrue(tree1 == tree2)
        tree1 = tree1?.inserting(AVLTree(key: 4))
        tree2 = tree2?.inserting(AVLTree(key: 4))
        XCTAssertTrue(tree1 == tree2)
        tree1 = tree1?.inserting(AVLTree(key: 1))
        tree2 = tree2?.inserting(AVLTree(key: 1))
        XCTAssertTrue(tree1 == tree2)
        tree1 = tree1?.inserting(AVLTree(key: 5))
        tree2 = tree2?.inserting(AVLTree(key: 5))
        XCTAssertTrue(tree1 == tree2)
    }
    
    func testTreesNotEqual() {
        var tree1: AVLTree? = AVLTree(key: 4)
        tree1 = tree1?.inserting(AVLTree(key: 3))
        var tree2: AVLTree? = AVLTree(key: 4)
        tree2 = tree2?.inserting(AVLTree(key: 2))
        XCTAssertTrue(tree1 != tree2)
        var tree3: AVLTree? = AVLTree(key: 4)
        tree3 = tree3?.inserting(AVLTree(key: 3))
        tree1 = tree1?.inserting(AVLTree(key: 5))
        tree3 = tree3?.inserting(AVLTree(key: 6))
        XCTAssertTrue(tree1 != tree3)
        tree1 = tree1?.inserting(AVLTree(key: 2))
        var tree4: AVLTree? = AVLTree(key: 4)
        tree4 = tree4?.inserting(AVLTree(key: 3))
        tree4 = tree4?.inserting(AVLTree(key: 5))
        tree4 = tree4?.inserting(AVLTree(key: 1))
        XCTAssertTrue(tree1 != tree4)
        tree1 = tree1?.inserting(AVLTree(key: 6))
        var tree5: AVLTree? = AVLTree(key: 4)
        tree5 = tree5?.inserting(AVLTree(key: 3))
        tree5 = tree5?.inserting(AVLTree(key: 5))
        tree5 = tree5?.inserting(AVLTree(key: 2))
        tree5 = tree5?.inserting(AVLTree(key: 7))
        XCTAssertTrue(tree1 != tree5)
    }
    
    func testInsertLeftToEmpty() {
        var sut: AVLTree? = AVLTree(key: 3)
        let left = AVLTree(key: 2)
        sut = sut?.inserting(left)
        XCTAssertEqual(sut?.left, left)
    }
    
    func testInsertRightToEmpty() {
        var sut: AVLTree? = AVLTree(key: 3)
        let right = AVLTree(key: 4)
        sut = sut?.inserting(right)
        XCTAssertEqual(sut?.right, right)
    }
    
    func testInsert() {
        var sut: AVLTree? = AVLTree(key: 4)
        let left = AVLTree(key: 3)
        sut = sut?.inserting(left)
        let left2 = AVLTree(key: 2)
        sut = sut?.inserting(left2)
        XCTAssertEqual(sut?.left, left2)
        let left3 = AVLTree(key: 1)
        sut = sut?.inserting(left3)
        XCTAssertEqual(left3, sut?.left?.left)
    }

}
