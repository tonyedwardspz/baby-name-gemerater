json.array!(@generated_names) do |generated_name|
  json.extract! generated_name, :id, :first_name, :surname
  json.url generated_name_url(generated_name, format: :json)
end
