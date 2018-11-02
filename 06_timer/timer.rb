class Timer
  attr_reader :seconds
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    @minutes = @seconds/60
    @hours = @minutes/60
    @minutes -= @hours * 60
    @seconds -= @minutes * 60 
    @seconds -= @hours * 3600
    "#{@hours.to_s.rjust(2,'0')}:#{@minutes.to_s.rjust(2,'0')}:#{@seconds.to_s.rjust(2,'0')}"
  end

end

a = Timer.new
a.seconds = 12
puts a.time_string
