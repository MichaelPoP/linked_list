# Implement a Linked List

#1 Need to create a representation of a Node (or Vertex).
#2 Write a method add_to_tail that appends a new value to the end.
#3 Write a method length that returns the length of a list.
#4 Overide the to_s method to nicely print the list.
#5 Bonus: Write a function remove to remove a node from the list.
  class Node 
    attr_reader :val, :next
    def initialize(val)
      @val = val
      @next = nil
    end

    def add_to_tail(val)
      if @next == nil
        @next = Node.new(val)
      else
        @next.add_to_tail(val)
      end
    end
    
    def length
      if @next == nil
        return 1
      else 
        return @next.length + 1
      end
    end

    def remove(val)
      if @val == val
        puts "the value #{val}"
        return @next
      else 
        puts "before reset @next #{@next}"
        @next = @next.remove(val)
        puts "after reset @next #{@next}"
        return self
      end
    end

  

    def to_s
      if @next == nil
       @val
      else
        "#{@val} #{@next}"
      end
    end
  end

head = Node.new("a")
head.add_to_tail("s")
head.add_to_tail("s")
head.add_to_tail("i")
head.add_to_tail("s")
head.add_to_tail("t")


puts head.remove("i")
puts head.remove("s")
puts head.remove("t")

puts head
puts head.length



 # if head.nil?
 #      head = Node.new(val)
 #     else
 #        while current_node.next
 #          current_node = current_node.next
 #        end
 #        current_node.next = Node.new(val)
 #     end




# class Node 
#     attr_accessor :val, :next
#     def initialize(val)
#       @val = val
#       @next = nil
#     end
#     def add_to_tail(val)
#       if @next == nil
#         @next = Node.new(val)
#       else
#         @next.add_to_tail(val)
#       end
#     end
#     def to_s
#         if @next == nil
#        # "[Node #{@val}]"
#        @val
#        else
#         "#{@val} #{@next}"
#       end
#     end
#   end
# class List
# end

# head = Node.new("d")
# head.add_to_tail("o")
# head.add_to_tail("g")
# puts head








# class List
#   # Nodes for the linked list.
#   class Node
#     # Get the last facility which scans to the end of the list.
#     include Follower

#     def initialize(d, n = nil)
#       @val = d
#       @next = n
#     end
#     attr_reader :next, :val
#     attr_writer :next
#   end

#   # Get the printing facility.
#   include Printer

#   # Create the list with its first node.
#   def initialize(first)
#     @head = Node.new(first)
#   end

#   # Add at the front.  We can only add, and the list is created with one
#   # node, so no special case for empty list.  How nice.
#   def at_front(v)
#     n = Node.new(v)
#     n.next = @head
#     @head = n
#   end

#   # Add to the end of the list.
#   def at_end(v)
#     n = Node.new(v)
#     @head.last.next = n
#   end

#   # Process each member of the list.  The yield operator calls the block
#   # sent to the function.
#   def each
#     p = @head
#     while p != nil
#       yield p.val
#       p = p.next
#     end
#   end
# end




















# class ListNode
#   attr_accessor :value, :succ
 
#   def initialize(value, succ=nil)
#     self.value = value
#     self.succ = succ
#   end
 
#   def each(&b)
#     yield self
#     succ.each(&b) if succ
#   end
 
#   include Enumerable
 
#   def self.from_array(ary)
#     head = self.new(ary[0], nil)
#     prev = head
#     ary[1..-1].each do |val|
#       node = self.new(val, nil)
#       prev.succ = node
#       prev = node
#     end
#     head
#   end
# end
 
# list = ListNode.from_array([1,2,3,4])