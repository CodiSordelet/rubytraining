class TreeNode
    attr_accessor :left, :right, :value
    def initialize(value)
        self.value = value
        self.left = nil
        self.right = nil
    end

    def add_node(node)
       return unless node.value != self.value
       if node.value < self.value
         if !self.left
            self.left = node
         else 
            self.left.add_node(node)
         end
       end

       if node.value > self.value 
         if !self.right
            self.right = node
         else 
            self.right.add_node(node)
         end
       end
    end
end

class BST 
    attr_accessor :root
    def initialize
        self.root = nil
    end

    def add_node(value)
        node = TreeNode.new(value)
        if !self.root
            self.root = node
        else
            self.root.add_node(node)
        end
    end
end