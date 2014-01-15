class Demo
  def initialize(web_client)
    @web_client = web_client
  end

  def info
    @web_client.type
  end
end
