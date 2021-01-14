#1 Créer une methode avec un string et une clé de chiffrement --> def caesar_cipher(string, 5)

def caesar_cipher(string, key)
  caesar_string = ""
  
  string.scan (/./) do |i|
    if ("a".."z").include? (i.downcase)
      key.times {i = i.next}
    end
    caesar_string << i[-1]
  end
  return caesar_string
end

puts caesar_cipher("What a string!", 5)