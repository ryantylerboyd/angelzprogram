json.extract! session, :id, :sessionid, :created_at, :updated_at
json.url session_url(session, format: :json)
