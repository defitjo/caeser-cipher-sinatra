def caeser_cipher (word, letter_shift)
  word.split("").collect do |letter|
    if letter.ord.between?(65,90)
      letter = letter_range(letter.ord, letter_shift, 65, 90).chr
    elsif letter.ord.between?(97,122)
      letter = letter_range(letter.ord, letter_shift, 97, 122).chr
    else
      letter
    end
  end
  .join
end


def letter_range(position, increment, down_amount, up_amount)
  if position + increment > up_amount
    position = (position + increment) - (up_amount - down_amount) - 1
  elsif position + increment < down_amount
    position = (position + increment) + (up_amount - down_amount) + 1
  else
    position += increment
  end
end
