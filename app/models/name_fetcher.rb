class NameFetcher

  BASE_URI = "http://api.uinames.com/?country=england"
  SEX = "&gender="

  def self.make_api_call(sex)
    api_params = ''
    unless sex == 'both'
       api_params = SEX + sex
    end

    ap BASE_URI + api_params

    response = HTTParty.get(BASE_URI + api_params)
    ap response
    first_name = response["name"]
    return first_name

  end

end