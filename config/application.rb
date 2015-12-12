require "rulers"

$LOAD_PATH << File.join(File.dirname(__FILE__),
                        "..", "app", "controllers")

module BestQuotes
  include Rulers
  class Applicaton < Rulers::Application
  end
end