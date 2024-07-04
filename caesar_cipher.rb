def caesar_cipher(string, shift_factor)
  alpha_uppercase = ("A".."Z").to_a
  alpha_lowercase  =  ("a".."z").to_a
  cipher = []

  string.chars.map do |char|
    new_array = []

    if alpha_uppercase.include?(char)
      new_char = alpha_uppercase[(alpha_uppercase.index(char) + shift_factor) % 26 ]
      new_array.push(new_char)
    elsif alpha_lowercase.include?(char)
      new_char = alpha_lowercase[(alpha_lowercase.index(char) + shift_factor) % 26 ]
      new_array.push(new_char)
      else
        new_array.push(char)
    end

    cipher.push(new_array.join)
  end

  puts cipher.join
end

caesar_cipher("What a string!", 5)