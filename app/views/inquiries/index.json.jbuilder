json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :id, :first_name, :last_name, :email, :subject, :description
  json.url inquiry_url(inquiry, format: :json)
end
