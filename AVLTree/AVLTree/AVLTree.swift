public class AVLTree: Equatable {
    
    let key: Int
    
    var height = 1
    
    var left: AVLTree?
    
    var right: AVLTree?
    
    init(key: Int) {
        self.key = key
    }
    
    private func balanceFactor() -> Int {
        let hl = self.left?.height ?? 0
        let hr = self.right?.height ?? 0
        return hr - hl
    }
    
    private func fixHeight() {
        let hl = self.left?.height ?? 0
        let hr = self.right?.height ?? 0
        self.height = max(hl, hr) + 1
    }
    
    private func rotateRight() -> AVLTree? {
        let q = self.left
        self.left = q?.right
        q?.right = self
        self.fixHeight()
        q?.fixHeight()
        return q
    }
    
    private func rotateLeft() -> AVLTree? {
        let p = self.right
        self.right = p?.left
        p?.left = self
        self.fixHeight()
        p?.fixHeight()
        return p
    }
    
    private func balance() -> AVLTree? {
        self.fixHeight()
        if self.balanceFactor() == 2 {
            if let right = self.right, right.balanceFactor() < 0 {
                self.right = self.right?.rotateRight()
            }
            return self.rotateLeft()
        }
        if self.balanceFactor() == -2 {
            if let left = self.left, left.balanceFactor() > 0 {
                self.left = self.left?.rotateLeft()
            }
            return self.rotateRight()
        }
        return self
    }
    
    func inserting(_ node: AVLTree) -> AVLTree? {
        if node.key < self.key {
            if self.left == nil {
                self.left = node
            }
            else {
                self.left = self.left?.inserting(node)
            }
        }
        else if node.key > self.key {
            if self.right == nil {
                self.right = node
            }
            else {
                self.right = self.right?.inserting(node)
            }
        }
        return self.balance()
    }
    
    func removing(nodeWithKey: Int) -> AVLTree? {
        return nil
    }
    
    public static func == (lhs: AVLTree, rhs: AVLTree) -> Bool {
        return lhs.key == rhs.key && lhs.left == rhs.left && lhs.right == rhs.right
    }
    
}
