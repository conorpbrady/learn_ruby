class Timer
  #write your code here
  def initialize
    @seconds = 0
  end
  def seconds=(s)
    @seconds=s
  end
  def seconds
    @seconds
  end

  def time_string
    h = m = s = 0
    totalSeconds = @seconds
    if(totalSeconds/3600 > 0)
      h = totalSeconds/3600
      totalSeconds -= h*3600
    end

    if(totalSeconds/60 > 0)
      m = totalSeconds/60
      totalSeconds -= m*60
    end

    s = totalSeconds

    return "%02d:%02d:%02d" % [h,m,s]
  end
end
