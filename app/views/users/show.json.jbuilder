json.extract! @user, :id, :email, :careers, :learns, :instructs

json.orders @user.careers do |career|
  json.extract! career, :id, :category
end
