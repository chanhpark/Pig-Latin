def translate(sentence)
  words = sentence.split.map do |word| #it will split the input(sentence) as each element that will start iterating through
  if word.start_with?('a', 'e', 'i', 'o', 'u') #if a word starts with a vowel
    word = word << 'way' #way will be added to the end of the word
  else
    word = word.partition(/[AEIOUaeiou]/) #word will partition through until it is a vowel
    word.rotate! #it will rotate each element to the back until the vowel is the 1st letter
    word = word << 'ay' #ay will be added to the end of the element as the element came to aeiou starts with a vowel
    word = word.join('') #the word will join as words rather than each single element
  end
 end
 words.join(' ') #it will join sentences that have more than one word with a space in each word
end

input = ARGV.join(" ")
puts translate(input)
