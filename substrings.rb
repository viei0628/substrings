dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Please enter a word: "
word = gets.chomp.downcase
my_hash = {}

def substrings(word, dictionary)
  my_hash = {}

  dictionary.each do |occurence|
    word_arr = word.split(" ")
    word_arr.each do |x|
    if x.include?(occurence)
      if my_hash.has_key? occurence.to_s
        my_hash[occurence] += 1
      else
        my_hash[occurence] = 1
      end
      #my_hash[occurence] += 1
    end
  end
  end
  puts my_hash
end
substrings(word, dictionary)
