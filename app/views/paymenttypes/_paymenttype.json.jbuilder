json.extract! paymenttype, :id, :paymentname, :currentprice, :crypto, :cryptourl, :created_at, :updated_at
json.url paymenttype_url(paymenttype, format: :json)
