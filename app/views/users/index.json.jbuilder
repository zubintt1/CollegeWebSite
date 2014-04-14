json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :username, :email, :rollnumber, :security_question, :security_answer
  json.url user_url(user, format: :json)
end
