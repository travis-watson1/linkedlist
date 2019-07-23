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

def reverse_list(list, previous=nil)
    
    current_node = list.next_node
    list.next_node = previous 
    if current_node
      reverse_list(current_node, list)
    else
      list
    end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
revlist = reverse_list(node3)

print_values(revlist)