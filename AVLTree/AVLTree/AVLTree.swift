public class AVLTree: Equatable {
    
    let key: Int
    
    var left: AVLTree?
    
    init(key: Int) {
        self.key = key
    }
    
    func insert(_ node: AVLTree) {
        self.left = node
    }
    
    public static func == (lhs: AVLTree, rhs: AVLTree) -> Bool {
        return lhs.key == rhs.key
    }
}
