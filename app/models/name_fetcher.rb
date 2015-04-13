class NameFetcher

  BASE_URI = "http://api.uinames.com/?country=england"

  def self.make_api_call

    response = HTTParty.get(BASE_URI)
    first_name = response["name"]

    #ap response
    #ap first_name

    return first_name

  end

end