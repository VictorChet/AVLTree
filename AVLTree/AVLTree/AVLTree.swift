public class AVLTree: Equatable {
    
    let key: Int
    
    var left: AVLTree?
    
    var right: AVLTree?
    
    init(key: Int) {
        self.key = key
    }
    
    func insert(_ node: AVLTree) {
        if node.key < self.key {
            self.left = node
        }
        else if node.key > self.key {
            self.right = node
        }
    }
    
    public static func == (lhs: AVLTree, rhs: AVLTree) -> Bool {
        return lhs.key == rhs.key && lhs.left == rhs.left && lhs.right == rhs.right
    }
}
