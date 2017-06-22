require 'rubygems'
require 'twilio-ruby'

account_sid = "AC9a8e9bad8fdaa3d2df44783dd601747c"
auth_token = "ca3f997d5e578143d994e620b6098456"

@clinet = Twilio::REST::Client.new(AC9a8e9bad8fdaa3d2df44783dd601747c, ca3f997d5e578143d994e620b6098456)

message = @client.account.message.create(
	:from => ""
	:to => "404-509-8930"
	:body => "HIIII!")

puts message.to