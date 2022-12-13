

User = Struct.new( :name, :confirmed)

user = User.new( "marciogaucho", false )

confirm_user = proc do |user|
  user.confirmed = true
  user
end

send_confirmation_notification = proc do |user|
  if user.confirmed
    puts "#{user.name} has been confirmed." 
  end
end

send_confirmation_notification.call(confirm_user.call(user))

#this code example lacks SOC !!
  
