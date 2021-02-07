json.array! @users do |user|
  json.extract! user, :id, :name, :age, :email, :career
end
