module FunWithStrings
  def palindrome?
    downcase!              #convert all to lower case to ignore case
    ostr = gsub(/\W+/,'')  #remove all non word characters
    rev = ostr.reverse    
    if rev.eql? ostr      #check if is a palindrome
      return true
    else
      return false
    end
  end
  def count_words
    words = self.downcase.split(/[^a-zA-A]+/).reject{|e| e.empty?}
    result = Hash.new(0)
    words.each { |word| result[word] += 1 }
    return result
  end
  def anagram_groups
    # your code here
    words = self.downcase.split  #get an array of the input words
    return words.group_by { |i| i.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
