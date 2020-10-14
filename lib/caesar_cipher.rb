def caesar_cipher(str, offset)
  code = ''

  offset = 26 + offset if offset.negative?

  str.each_char do |char|
    if char =~ /[a-z]/

      value = char.codepoints[0] - 97
      value_result = (value + offset) % 26
      code += (97 + value_result).chr

    elsif char =~ /[A-Z]/

      value = char.codepoints[0] - 65
      value_result = (value + offset) % 26
      code += (65 + value_result).chr

    else
      code += char
    end
  end
  code
end
