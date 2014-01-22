json.array!(@companies) do |company|
  json.extract! company, :id, :name, :cnpj, :phone, :address, :number, :cep
  json.url company_url(company, format: :json)
end
