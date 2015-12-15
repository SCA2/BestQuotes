class QuotesController < Rulers::Controller
  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def update
    model = FileModel.find(params["id"])
    attrs = {
      "submitter" => params["submitter"] || model["submitter"],
      "quote" => params["quote"] || model["quote"],
      "attribution" => params["attribution"] || model["attribution"]
    }
    model.save(attrs)
    render :quote, :obj => model
  end

  def a_quote
    @gateway = env["GATEWAY_INTERFACE"]
    render :a_quote, :noun => :winking
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => " A picture is worth 1024 pixels",
      "attribution" => "me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  def quote_1
    quote_1 = FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def exception
    raise "It's a bad one!"
  end
end