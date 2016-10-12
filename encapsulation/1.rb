# The client wants to implement a chat application.
# The application consists of three type of messages
# 1. groupMessage --> Anybody can send a message to this group.
# 2. personalChat --> Message can be sent by client through the user only.
# 3. secureChat		--> Since this is a confidentials message it should not be called by the client. 

# conditions to be followed
	# 1. The methods names in User class should not be changed.
	# 2. Use proper access specifiers to fulfill the client's requirements.

#  required output
	
	# send message 'Hi friends' to the public group
		# output ->  This is a Public Group
							 # Hi Friends

	# output --> This is a Personal Chat
						 	 # Hi, how are you?

	# client should not be able to call the secureChat 

class Message
	def initialize
		puts "This is a Messaging app"
	end

	# define sendPersonalMessage which calls the personalChat()

	def groupChat(message)
		puts "This is a Public Group"
		puts message
	end

	private
	# The User should not access the secure Chat through its object--> this is confidentials
	def secureChat(message)
		puts "This is a secure Chat"
		puts message
	end

	protected
	# The user can access this method throught its user class method 
	def personalChat(message)
		puts "This is a Personal Chat"
		puts message
	end
end


class User < Message
	def initialize
		puts "Welcome User"
	end

	def sendSecureMessage
		a = User.new
		a.secureChat("This is confidential")
	end

	def sendPersonalMessage
		a = User.new
		a.personalChat("Hi, how are you?")

		# if the object is not created then also the method call works...... Here the object creation is to differentiate between private and protected access specifier..........
	end
end

client = User.new
client.groupChat("Hi Friends")

client.sendPersonalMessage

# client.sendSecureMessage

begin
	client.sendSecureMessage
rescue
	puts "client should not be able to call the secureChat "
end

