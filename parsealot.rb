$: << File.dirname('helper.rb') unless $:.include? File.dirname('helper.rb')
require 'helper'

puts find_me_this_char("test.txt",3,1,3)


