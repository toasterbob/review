require "byebug"
# display_demo.rb
(1..100).each do |num|
  square = num ** 2
  half = num / 2.0
  debugger
end
