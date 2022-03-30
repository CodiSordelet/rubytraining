require "bst"
require "set"

class Toy
    def self.factorial(num)
       if num <= 1
         return 1
       else
        return num * self.factorial(num - 1)
       end
    end

    def self.is_palindrome(str)
        str.reverse == str
    end

    def self.reverse(str)
       l = 0 
       r = str.length - 1

       while l < r do
        temp = str[l]
        str[l] = str[r]
        str[r] = temp
        l += 1
        r -= 1
       end

       str
    end

    def self.generate_bst
      tree = BST.new
      values = [9,1,6,3,70,1,34,63,23,5,6,43,2,4,99,65,4]

      values.each {
        | value | tree.add_node(value)
      }

      tree
    end

    def self.largest_value_in_bst(node)
      if !node.right
        return node.value
      end

      self.largest_value_in_bst(node.right)
    end

    def self.smallest_value_in_bst(node)
      if !node.left
        return node.value
      end

      self.smallest_value_in_bst(node.left)
    end

    def self.deep_clone_hash(hash)
      clone = nil
      hash_keys = hash.keys
      cloned_hash = {}

      hash_keys.each {
        |key|
        if hash[key].class.name == "Hash"
            cloned_hash[key] = self.deep_clone_hash hash[key]
        end

        if hash[key].class.name == "Array"
            cloned_hash[key] = []
            hash[key].each {
              |value| cloned_hash[key].push value
            }
        end

        cloned_hash[key] = hash[key]
      }

      cloned_hash
    end

    def self.fib(n)
      memo = {
        0 => 0,
        1 => 1
      }

      if memo[n]
        return memo[n]
      end

      n += 1

      for i in 2...n
        memo[i] = memo[i - 1] + memo[i - 2]
      end

      memo[n - 1]
    end

    def self.get_bmi(h,w)
      height_in_meters = h * 0.0254
      weight_in_kilograms = w / 2.205
      bmi = weight_in_kilograms / (height_in_meters ** 2)

      bmi.ceil
    end

    def self.get_bmi_class(bmi)
      case bmi
        when 0...16
          return "UNDERWEIGHT"
        when 16...24.9
          return "HEALTHY"
        when 25...29.9
          return "OVERWEIGHT"
        else 
          return "OBESE"
      end
    end
end