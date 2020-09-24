def caesar_cipher(str, offset)
    code = ""
    str.each_char do |char|
        if char =~ /[a-z]/

            value  = char.codepoints[0] - 97
            valueResult = (value + offset) % 26
            code += (97 + valueResult).chr

        elsif char=~ /[A-Z]/

            value = char.codepoints[0] - 65
            valueResult = (value + offset) % 26
            code += (65 + valueResult).chr
        
        else
            code += char
        end
    end
    code
end


puts caesar_cipher("What a string!", 5)