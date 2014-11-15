### Instructions

Write a program to translate English sentences into [Pig Latin][wikipedia]. Implement the `translate` method in **translate.rb** so that it returns the Pig Latin translation of the given English sentence.

The **test.rb** file contains several examples that should pass once the `translate` method is complete. Running `ruby test.rb` will raise an exception if any of the tests are failing.

#### Rules

Sentences can be translated from English to Pig Latin by applying a set of rules to each word in the sentence. The rules are as follows:

* If the word begins with a consonant or consonant cluster, move the consonant(s) to the end of the word and append *ay* (e.g. **happy** becomes **appyhay**, **child** becomes **ildchay**).

* If the word begins with a vowel append *way* to the end of the word (e.g. **egg** becomes **eggway**).

### Sample Usage

```no-highlight
$ ruby translate.rb these pretzels are making me thirsty
esethay etzelspray areway akingmay emay irstythay
```

[wikipedia]: http://en.wikipedia.org/wiki/Pig_Latin


def translate(sentence)
 words = sentence.downcase.split.map! do |word|
   if word.start_with?('a','e','i','o','u')
     word = word << 'way'

   else
     word = word.partition(/[aeiouy]/).rotate!.push('ay').join
     #word.push(word[0]).shift
     #word.push('ay')
     #word = word.join
     #(we could do it like this but we used rotate instead)
   end
 end
 words.join(' ')
end

input = ARGV.join(" ")
puts translate(input)

# alpha = ('b'..'z').to_a
# vowels = ['a', 'e', 'i', 'o', 'u']
# consonants = [alpha - vowels]
# new_array = []
#
# words = sentence.split
# words.map! do |word|
#     if vowels.include?(word[0])
#     pig_latin =  word + 'way'
#     new_array << pig_latin
#     elsif consonants.include?(word[0]) || consonants.include?(word[1])
#       pig_latin = word[2..-1] + word[0..1] + 'ay' #checks for 2 consonants
#       new_array << pig_latin
#     elsif consonants.include?(word[0]) || vowels.include?(word[1])
#       pig_latin = word[1..-1] + word[0] + 'ay' #checks for 1 consonant
#       new_array << pig_latin
#     end
#     new_array.join('')
#   end
# end

# def translate(sentence)
#  words = sentence.downcase.split.map! do |word|
#    if word.start_with?('a','e','i','o','u')
#      word = word << 'way'
#
#    else
#      word = word.partition(/[aeiouy]/).rotate!.push('ay').join
#      #word.push(word[0]).shift
#      #word.push('ay')
#      #word = word.join
#      #(we could do it like this but we used rotate instead)
#    end
#  end
#  words.join(' ')
# end
#
#
# # .map! (changes the original array to the new array)
