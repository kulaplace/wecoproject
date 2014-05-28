json.array!(@leads) do |lead|
  json.extract! lead, :id, :name, :company, :address, :email, :phone, :status, :lead_id
  json.url lead_url(lead, format: :json)
end
