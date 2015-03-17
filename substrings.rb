dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings input, dict
  freq = Hash.new(0)
  matches = input.downcase.scan(/\w+/)
  matches.each do |match|
    dict.each do |word|
      freq[word] += 1 if match.include?(word)   
    end    
  end 
  puts freq
end

substrings("Howdy partner, sit down! How's it going?", dictionary)