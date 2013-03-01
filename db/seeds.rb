# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

users = ['']

users.each do |user|
  u = User.find_or_create_by_email(:email => user, :password => "", :password_confirmation => "")
end

user = User.find_by_email("")
user.admin = true
user.save!