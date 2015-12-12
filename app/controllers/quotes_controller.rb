class QuotesController < Rulers::Controller
  def a_quote
    "To be or not to be, that is the question." +
    "\n<pre>\n#{env}\n</pre>"
  end

  def exception
    raise "It's a bad one!"
  end
end