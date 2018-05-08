#find the dupes
def find_dupes(numbers)
  new = '';
    duplicates = numbers.select{ |number| numbers.count(number) > 1}
   duplicates.uniq
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
#merge two hashes
#if dupe is found
#1.
# def merge_hashes(hashes)
#     # Write your code here.
#
#
# end
#

# sort second string based on first sort
list1 = "c,a,e,b,d|has,this,ordered,list,been"
def sort_by(lists)
    part1=[]
    part2=[]
    lists =  lists.split("|")
    part1= lists[0].split(",")
    part2 = lists[1].split(",")
    r_part1, r_part2 = part1.zip(part2).sort_by(&:first).transpose
    puts r_part2.join(",")

end
puts sort_by(list1)

#all possible permuations for a string combo
def permut(word)
  word.chars.to_a.permutation.map(&:join)
end
puts permut("wordy")

#Given a phrase, count the occurrences of each word in that phrase.
#
def countwords(phrase)
  counts = Hash.new(0)
  array = phrase.split(" ")
  array.each do | word |
     counts[word] +=1
  end
  puts counts
end
puts countwords("olly olly in come free")
