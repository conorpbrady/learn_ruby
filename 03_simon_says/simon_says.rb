#write your code here
def echo(string)
  p string
end

def shout(string)
  p string.upcase
end

def repeat(string,n=2)
  output = "";
  (1..n).each do |i|
    output += string
    output += " " if i!=n
  end
  return output
end

def start_of_word(string, n)
  return string[0,n]
end

def first_word(string)
  return string[/\w+/]
end

def titleize(string)
  words = string.split(" ");
  titleStringArray = []
  words.each_with_index do |word,index|
    if(index==0 || !(word == "and" || word=="the" || word=="over"))
      titleStringArray << word.capitalize
    else
      titleStringArray << word
      end
    end
  return titleStringArray.join(" ")
end
