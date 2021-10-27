def caesar_cipher(string, num)
=begin
  for each character
    if character is alpha
    convert character to number
    add cipher to number
    check if number passes z, if so wrap around to beginning of alpha
    convert back to character 
=end

  string.chars.map do |char|
    if /[[:alpha:]]/.match char
      shift = char.ord + num
      if /[[:upper:]]/.match char
        shift = shift - 90 + 64 if shift > 90
      else
        shift = shift - 122 + 96 if shift > 122
      end
      shift.chr
    else
      char
    end
  end.join
end

# p caesar_cipher('What a string!', 5)
# 'Bmfy f xywnsl!'
