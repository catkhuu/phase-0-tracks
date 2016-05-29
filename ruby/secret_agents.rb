##Encrypt
#- Identify string containing password
#- Identify the length of the password
#- Identify, in order, the individual characters comprising the password
#- Determine the chacters which immediately proceed the password characters alphabetically
#- For each password character, print the immediately proceeding character
#- Combine the proceeding characters
#- Print the combined proceeding characters

puts "Please enter your password"
  password = gets.chomp.downcase

index = 0

while index < password.length
  password[index] = password[index].next
  index +=1
end

puts password

##Decrypt
# Identify the password produced by the encryption tool
# Initiate a loop
# Introduce the password into the loop
# Until index is equal to password length, repeat the loop
# Identify each individual password character's alphabetic index
# For each individual character in the password, identify the immediately preceeding character alphabetically
# Print the combined preceeding characters

puts "Enter the encrypted password"
  encrypted_password = gets.chomp.downcase

index = 0
while index < encrypted_password.length
  str = "abcdefghijklmnopqrstuvwxyz"
  current_letter = encrypted_password[index]
  #For password of "hello", expect first current_letter to be "h"
  #Find the index of current letter in string. And store in variable current_letter_position
  #Reduce current_letter_position by 1. Store in variable decrypted_letter_position
  #Find the letter that corresponds to decrypted_letter_position from str variable. Store in variable decrypted_letter
  #Replace characters in encrypted password with decrypted_letter.
  current_letter_position = str.index(current_letter)
  decrypted_letter_position = current_letter_position-1
  decrypted_letter = str[decrypted_letter_position]
  encrypted_password[index] = decrypted_letter
  index +=1
end

puts encrypted_password



