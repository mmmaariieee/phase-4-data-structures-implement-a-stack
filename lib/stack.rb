# your code here
class Stack

    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        raise 'Stack Overflow' if full?
        @stack.push(value)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.size
    end

    def empty?
        @stack.size == 0
    end

    def full?
        @stack.size == @limit
    end

    def search(target)
        @stack.each_with_index do |item, idx|
            return size - idx - 1 if item == target
        end
      
        -1
    end

end