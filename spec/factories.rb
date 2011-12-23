#By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                   "John Mark"
  user.email                  "abc@abc.com"
  user.password               "111111"
  user.password_confirmation  "111111"
end
