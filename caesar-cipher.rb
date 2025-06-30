def caesar_cipher(string, shift)
  string.each do |letter, number|
    new_letter = letter.ord + number
    return new_letter.char
  end
end