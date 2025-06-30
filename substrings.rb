dictionary1 = ["below","down","go","going","horn","how","howdy","it","i","low",
              "own","part","partner","sit"]

dictionary2 = ["the", "quick", "brown", "own", "row", "fox", "ox", "jumps",
               "jump", "over", "i", "lazy", "dog", "do", "he"]

# "The quick brown fox jumps over the lazy dog"

def substrings (string, dictionary)
  final_hash = Hash.new(0)
  working_string = string.split(" ")
  working_string.each do |word|
    dictionary.each do |entry|
      if (word.downcase == entry) or (word.downcase.include? entry) == true
        final_hash[entry] += 1
      end
    end
  end
  puts final_hash
end