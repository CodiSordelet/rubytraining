class ListNode 
    attr_accessor :val, :nextNode 

    def initialize(val, nextNode: nil)
        self.val = val
        self.next = nextNode
    end
end

class LinkedList 

    def initialize(head: nil)
        self.head = head
    end 

    def addNode(val)
        newNode = ListNode.new(val)
        if self.head == nil
            self.head = newNode
        elsif 
            lastNode = self.getLast
            lastNode.next = newNode
        end
    end

    def getLast
       if self.head == nil
        curr = self.head
       end 

       while curr.next != nil  do
        curr = curr.next
       end

       curr
    end

    def clear
        self.head = nil
    end

    def size 
        total = self.head ? 1 : 0
        node = self.head
        if node == nil 
            return
        end

        while node.next != nil do
            node = node.next
            total = total + 1
        end

        total
    end

    def contains(comparableNode)
        node = self.head
        if self.size > 0 
            while node.next != null
                if comparableNode.equal?(node)
                    return true
                end
            end
        end

        false
    end
end