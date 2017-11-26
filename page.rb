require 'Nokogiri'
require 'HTTParty'
require 'mechanize'

require_relative 'input.rb'

class Page
  visited_pages = []

  def initialize(page_title)
    self.set_page(page_title)
  end

  def set_page(page_title) # need to handle NIL
    mechanize = Mechanize.new;
    self.class.const_set(:PAGE, mechanize.get("http://wikipedia.org/wiki/#{page_title}"))
  end

  def tell_mw()
    puts PAGE.search('//div[@class="mw-parser-output"]/p/a')
  end

  def analyze_page()
    puts PAGE; puts PAGE.title; puts "tell"; self.tell_mw();
  end
end

class InterfaceMachine
  puts page = Page.new(Input.new.get_input)
  page.analyze_page ## put the if logic in!!
  # tell_mw
end
