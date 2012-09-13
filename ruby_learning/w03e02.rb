require './prompt.rb'

### this is 'prompt.rb'
#def prompt(string)
#  puts string
#  STDOUT.flush
#  gets
#end

def get_inputs
  puts
  file_name = prompt('Enter file name: ').chomp
  file_text = get_text(file_name)
  puts "\nHere is the text in file \'#{file_name}\':\n" + file_text.to_s
  word_to_change = prompt("\nWhat is the word you want to replace?").chomp
  new_word = prompt("\nWhat is the new word to replace '#{word_to_change}'?").chomp
  return file_name, word_to_change, new_word, file_text
end  

def get_text(file_name)
  f = File.open(file_name,'r')
  file_text = f.readlines
  f.close
  return file_text
end

def replace_word(old_lines,old_word,new_word)
  old_lines.each do |line|
  line.gsub!(old_word,new_word)
  end
end

file_name,old_word,new_word,old_lines = get_inputs

new_lines = File.open(file_name,'w')
new_line = replace_word(old_lines,old_word,new_word )
new_lines.puts(new_line)
new_lines.close

puts "\nHere is the changed text in file \'#{file_name}\':\n" + get_text(file_name).to_s + "\n"
