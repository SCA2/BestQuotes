require "rulers"

$LOAD_PATH << File.join(File.dirname(__FILE__),
                        "..", "app", "controllers")

require "quotes_controller"

module BestQuotes
  include Rulers
  class Applicaton < Rulers::Application
  end
end