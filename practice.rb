#find the dupes
def find_dupes(numbers)
    duplicates = numbers.select{ |number| numbers.count(number) > 1}
   return duplicates.uniq
end
numbers = 1,5,3,1,1,6,5,2
puts find_dupes(numbers)


#sentence.reverse!
def flip_words(sentence)
  array = sentence.split(" ")
  array_new =[]  # Write your code here.
   array.each do | word |
     word.reverse!
     array_new << word
     sentence = array_new.join(" ")
   end
   sentence
end
puts flip_words("this is awesome yeah really it is")
