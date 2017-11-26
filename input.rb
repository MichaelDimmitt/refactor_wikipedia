class Input
  def get_input()
    puts "Please enter the title of your page:"
    page_title = gets
  end
end

class InterfaceMachine
  puts Input.new.get_input
end
