class LinkedListNode
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
end

def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
end


class Stack
    attr_accessor :data
    
    def initialize
        @data = nil
    end
    
    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end
    
    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        if @data.nil?
            nil
        else
            value = @data.value
            @data = @data.next_node
            return value
        end
    end
    
end
def reverse_list(list)
    stack = Stack.new
    while list
        stack.push(list.value)
        list = list.next_node
    end

    return LinkedListNode.new(stack.pop, stack.data)
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


revlist = reverse_list(node3)

print_values(revlist)