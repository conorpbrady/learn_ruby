class Book
# write your code here
  @title = '';
  def title=(title)
    words = title.split(" ")
    titleStringArray = []
    words.each_with_index do |word,index|
      if(index==0 || !(word == "and" || word=="the" || word=="in" || word=="a" || word=="an"|| word=="of"))
        titleStringArray << word.capitalize
      else
        titleStringArray << word
      end
    end
    @title = titleStringArray.join(" ")
  end
  def title
    @title
  end
end
