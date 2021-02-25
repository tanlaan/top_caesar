def caesar_cipher(phrase, shift=0)
  # split string to characters
  # map through each character
  #   lowercase
  #   uppercase
  # reduce array back down to string 
  # return
  
  if shift % 26 == 0 
    return phrase
  end

  cipher = phrase.split('').map do |char|
    shift_char(char, shift)
  end

  cipher.reduce('') {|word, char| word.concat(char)}
end

def shift_char(char, shift)
  if char < 'a' || char > 'z' and char < 'A' || char > 'Z'
    char
  else
    if char == char.downcase
      shift_lowercase(char, shift)
    else
      shift_uppercase(char, shift)
    end
  end
end

def shift_lowercase(char, shift)
  if shift.positive?
    if 'z'.ord - char.ord < shift
      shift - ('z'.ord - char.ord + 1) + 'a'.ord
    else
      char.ord + shift
    end
  else
    if 'a'.ord - char.ord > shift
      shift - ('a'.ord - char.ord - 1) + 'z'.ord
    else
      char.ord + shift
    end
  end
end

def shift_uppercase(char, shift)
  if shift.positive?
    if 'Z'.ord - char.ord < shift
      shift - ('Z'.ord - char.ord + 1) + 'A'.ord
    else
      char.ord + shift
    end
  else
    if 'A'.ord - char.ord > shift
      shift - ('A'.ord - char.ord - 1) + 'Z'.ord
    else
      char.ord + shift
    end
  end
end 
