# find_me_this_char: The wrapper function that takes care of everything

def find_me_this_char(filename,nth_line,nth_word,nth_char)
	line = get_line(nth_line,filename)
	word = find_word(line,nth_word)
	want = find_char(word,nth_char)
end

# store_lines: Makes a hash of the file where the keys are the line numbers and the values are the strings of lines
def store_lines(filename)
	storage = {}
	counter = 1
	file = File.new(filename)
	while line = file.gets
		storage[counter] = line
		counter = counter + 1
	end
	storage
end

# get_line: Gets the nth line

def get_line(nth_line,filename)
	hash = store_lines(filename)
	hash[nth_line]
end

# find_word: Finds the nth word in a line

def find_word(line,nth_word)
	words = line.split
	words[nth_word]
end

# find_char: Finds the nth character in a word

def find_char(word,nth_char)
	word[nth_char]
end
