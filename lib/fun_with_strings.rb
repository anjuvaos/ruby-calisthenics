module FunWithStrings
  def palindrome?
    cad=self.downcase.gsub(/[^a-z]/,'')
    cad2=cad.reverse
    cad==cad2 
  end
  def count_words
    cont_words=Hash.new(0)
    arr=self.downcase.gsub(/[^a-z|^ ]/,'').split(" ")
    arr.each{|w| cont_words[w]+=1}
    return cont_words
  end
  def anagram_groups
    words=self.split(" ")
    result = {}
    words.each{ |word|
       key = word.split('').sort.join
       if result.has_key?(key)
         result[key].push(word)
       else
         result[key] = [word]
       end
    }   
    arr=result.values
    
  end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
