json.data do
  json.user do
    json.call(@user, :id, :name, :email, :id_type, :personal_id)
  end
end
