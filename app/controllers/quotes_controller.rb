class QuotesController < Rulers::Controller
  def a_quote
    @gateway = env["GATEWAY_INTERFACE"]
    render :a_quote, :noun => :winking
  end

  def exception
    raise "It's a bad one!"
  end
end