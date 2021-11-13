json.extract! customerdatum, :id, :playername, :betamount, :paymenttype, :multiplier, :gametype, :commission, :currencyconvert, :outcome, :netincome, :created_at, :updated_at
json.url customerdatum_url(customerdatum, format: :json)
