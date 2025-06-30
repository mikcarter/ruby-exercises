def caesar_cipher(string, shift)
  final_string = ""
  proper_shift = shift % 26
  string.each_char do |letter|
    if letter.ord.between?(65, 90)
      if letter.ord + proper_shift > 90
        new_letter = 64 + (letter.ord + proper_shift - 90)
        final_string << new_letter
      else
        new_letter = letter.ord + proper_shift
        final_string << new_letter
      end
    elsif letter.ord.between?(97, 122)
      if letter.ord + proper_shift > 122
        new_letter = 96 + (letter.ord + proper_shift - 122)
        final_string << new_letter
      else
        new_letter = letter.ord + proper_shift
        final_string << new_letter
      end
    else
      final_string << letter
    end
  end
  puts final_string
end

caesar_cipher("Bmfy f xywnsl!", -5)

# lowercase range -> 97 - 122
# uppercase range -> 65 - 90