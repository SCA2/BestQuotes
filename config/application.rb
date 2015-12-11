require "rulers"

module BestQuotes
  include Rulers
  class Applicaton < Rulers::Application
    a = [1, 2, 37, 9]
    puts a.sum
  end
end