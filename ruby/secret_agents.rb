##Encrypt
#- Identify string containing password
#- Identify the length of the password
#- Identify, in order, the individual characters comprising the password
#- Determine the chacters which immediately proceed the password characters alphabetically
#- For each password character, print the immediately proceeding character
#- Combine the proceeding characters
#- Print the combined proceeding characters

def encrypter(password)
  index = 0

  while index < password.length
    str = "abcdefghijklmnopqrstuvwxyza" #added 'a' to end of alphabet in case password contains a 'z'. Otherwise, Ruby would return TypeError message - no implicit conversion of nil into string"#
    current_letter = password[index]
    current_letter_position = str.index(current_letter)
    encrypted_letter_position = current_letter_position+1
    encrypted_letter = str[encrypted_letter_position]
    password[index] = encrypted_letter
    index +=1
  end
  return password
end

# puts encrypter("abc") <-- test code -->
# puts encrypter("zed") <-- test code -->

##Decrypt
# Identify the password produced by the encryption tool
# Initiate a loop
# Introduce the password into the loop
# Until index is equal to password length, repeat the loop
# Identify each individual password character's alphabetic index
# For each individual character in the password, identify the immediately preceeding character alphabetically
# Print the combined preceeding characters

def decrypter(encrypted_password)
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
      if current_letter == "a"
        decrypted_letter = "z"
      end
    encrypted_password[index] = decrypted_letter
    index +=1
  end
  return encrypted_password
end

# puts decrypter("bcd") <-- test code -->
# puts decrypter("afe") <-- test code -->

# puts decrypter(encrypter("swordfish")) <-- test code -->
#when decrypter(encrypter("swordfish")) is called, 'swordfish' is printed as if nothing happened to it and that is the way it should appear when nest the encrypter method in the decrypter method. You are encrypting 'swordfish' FIRST and then decrypting the encrypted 'swordfish' thereafter.


# Ask user whether they want to decrypt or encrypt password
puts "Do you want to encrypt or decrypt a password?"
response = gets.chomp.downcase

# Ask user for password
puts "Enter your password"
password = gets.chomp.downcase

# If encrypt, run encrypter
# If decrypt, run decrypter
  if response == "encrypt"
    p encrypter(password)
  else
    puts decrypter(password)
  end
# Run chosen task and print password

