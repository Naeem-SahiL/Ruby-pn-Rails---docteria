json.extract! hospital, :id, :hospital_name, :address, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
