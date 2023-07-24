require_relative './node'

class LinkedList
    attr_accessor :head

    def initialize
      @head = nil
    end

# Append a node to the end of the list
def append(node)
    if @head.nil?
      @head = node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = node
    end
  end

   # Prepend a node to the beginning of the list (the head)
   def prepend(node)
    if @head.nil?
      @head = node
    else
      node.next_node = @head
      @head = node
    end

    def delete_head
        return nil if @head.nil?
    
        @head = @head.next_node
      end

      def delete_tail
        return nil if @head.nil?
        return @head = nil if @head.next_node.nil?
    
        current = @head
        current = current.next_node while current.next_node.next_node
        current.next_node = nil
      end

      def add_after(index, node)
        return if @head.nil?
        return prepend(node) if index == 0
    
        current = @head
        current_index = 0
    
        while current_index < index && current.next_node
          current = current.next_node
          current_index += 1
        end
    
        node.next_node = current.next_node
        current.next_node = node
      end

      def search(value)
        return nil if @head.nil?
    
        current = @head
        while current
          return current if current.data == value
          current = current.next_node
        end
    
        nil # Value not found in the list
      end
  end
end
