#!/usr/bin/ruby

require "forgery"

firstname = Forgery::Name.first_name
lastname  = Forgery::Name.last_name
username  = (firstname[0] + lastname + rand(10...99).to_s).downcase
password  = Forgery::Basic.password

email     = username + "@mailinator.com"
inbox   = "http://mailinator.com/inbox.jsp?to=" + username

puts "First Name:    " + firstname
puts "Last Name:     " + lastname
puts "Username:      " + username
puts "Password:      " + password
puts "Email address: " + email
puts "Email inbox:   " + inbox
