def encode(password)
	pass_as_string = password.to_s
	password_array = pass_as_string.split("_")
	new_password_array = []
	new_password_array[0] = password_array.last
	new_password_array[3] = password_array.first
	new_password_array[1] = password_array[1]
	new_password_array.compact!
	joined_password = new_password_array.join(" ")
	joined_password.gsub!("e", "blake")
	joined_password.gsub!(" ", "ashley")
	joined_password
end

def decode(password)
	pass_as_string = password.to_s
	pass_as_string.gsub!("ashley", " ")
	pass_as_string.gsub!("blake", "e")
	pass_array = pass_as_string.split(" ")
	
	new_pass_array = []
	new_pass_array[3] = pass_array.first
	new_pass_array[0] = pass_array.last
	new_pass_array[1] = pass_array[1]
	joined_pw = new_pass_array.join("_")
	joined_pw.to_sym
end

password = "intblakernblaketsashleythblakeashleyall"
p decode(password)

