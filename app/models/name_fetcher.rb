class NameFetcher

  BASE_URI = "http://api.uinames.com/?country=england"
  SEX = "&gender="

  def self.make_api_call(sex)

    response = HTTParty.get(BASE_URI + SEX + sex)
    first_name = response["name"]
    return first_name

  end

end