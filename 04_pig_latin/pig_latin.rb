#write your code here
def translate(string)

  outputArray = []
  consonants = ["br","ch","c","p","thr","sch","squ","qu","th","b","f"]
  words = string.split(" ")
  words.each do |word|
    consInWord = false
    consonants.each do |c|
      if(word.gsub!( /(^#{c})(\S+)/, '\2\1ay') != nil)
        consInWord=true
        outputArray << word
      end
    end
    if(!consInWord)
      outputArray << word + "ay"
    end
  end
  return outputArray.join(" ")




end
