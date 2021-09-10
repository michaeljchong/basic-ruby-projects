def substrings(string, dictionary)
  string.downcase.split(' ').reduce(Hash.new(0)) do |count, word|
    dictionary.each do |substr|
      count[substr] += 1 if word.include? substr
    end
    count
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)