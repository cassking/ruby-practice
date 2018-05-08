#find the dupes
def find_dupes(numbers)
    duplicates = numbers.select{ |number| numbers.count(number) > 1}
   return duplicates.uniq
end
numbers = 1,5,3,1,1,6,5,2
puts find_dupes(numbers)
