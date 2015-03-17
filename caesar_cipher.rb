def caesar_cipher (string, shift)
  ciphered = ""
  string.each_byte do |byte|    
    if byte.between?(96,123) || byte.between?(64,91)
      ciph = byte + shift
      if (ciph > 122) || (ciph.between?(90,97)) then ciph -= 26 end
      ciphered << ciph.chr      
    else
      ciphered << byte.chr
    end
  end
  puts ciphered
end


caesar_cipher("What a string!zZ", 5)