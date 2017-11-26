module Error_handling

  def h_nil
    self.line()
    if(@test == nil)
      raise NillyException.new("goodbye, get me out of this loop") # instead of self.break
    end
  end

  def line() # fast, best for ruby 2.0 onward.
    caller_locations(2).first.tap{|loc| puts "#{loc.path}:#{loc.lineno}:"} # caller_locations(1,1).first.tap{|loc| puts "#{loc.path}:#{loc.lineno}:"}
  end

  def line_if_old_ruby # would work for all ruby versions.
    caller_line = caller[1].split(":")[1]; puts "#{__FILE__} : #{caller_line} : "
  end
end

class NillyException < StandardError

  def initialize(message)
    # Call the parent's constructor to set the message
    puts message
  end
end
