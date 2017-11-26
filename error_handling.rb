module Error_handling

  def h_nil
    if(@test == nil)
      raise NillyException.new("goodbye, get me out of this loop") # instead of self.break
    end
  end
end

class NillyException < StandardError

  def initialize(message)
    # Call the parent's constructor to set the message
    puts message
  end
end
