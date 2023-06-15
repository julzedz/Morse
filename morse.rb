ALPHABET = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
  '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
  '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
}

def decode_char(char)
  ALPHABET[char]
end

def decode_word(word)
  str = ''
  word.split.each { |i| str += decode_char(i) }
  str
end

def decode_message(morse_message)
  message_array = morse_message.split('   ')
  message = ''
  message_array.each { |i| message += "#{decode_word(i)} " }
  message
end
