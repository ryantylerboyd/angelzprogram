json.extract! gameinstance, :id, :sessionid, :playername, :betamount, :gametype, :multiplier, :commission, :paymentname, :currentprice, :crypto, :cryptoprice, :outcome, :result, :created_at, :updated_at
json.url gameinstance_url(gameinstance, format: :json)
