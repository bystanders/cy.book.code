def break_words(stuff):
    """This function will break up words for us."""
    words = stuff.split(' ')
    return words

def sort_words(words):
    """Sorts the words."""
    return sorted(words)

def print_first_word(words): # 1. missing colon
    """Prints the first word after popping it off."""
    word = words.pop(0) # 2. spell 'pop' error
    print word

def print_last_word(words):
    """Prints the last word after popping it off."""
    word = words.pop(-1) # 3. missing right parenthesis
    print word

def sort_sentence(sentence):
    """Takes in a full sentence and returns the sorted words."""
    words = break_words(sentence)
    return sort_words(words)

def print_first_and_last(sentence):
    """Prints the first and last words of the sentence."""
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)

def print_first_and_last_sorted(sentence):
    """Sorts the words then prints the first and last one."""
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)


print "Let's practice everything."
print 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = """
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explantion
\n\t\twhere there is none.
"""


print "--------------"
print poem
print "--------------"

five = 10 - 2 + 3 - 6 # 4. error: 5 is 6
print "This should be five: %s" % five

def secret_formula(started):
    jelly_beans = started * 500
    jars = jelly_beans / 1000 # 5. error: \ is /
    crates = jars / 100
    return jelly_beans, jars, crates


start_point = 10000
beans, jars, crates = secret_formula(start_point) # 6. error: == is =, - is _

print "With a starting point of: %d" % start_point
print "We'd have %d jeans, %d jars, and %d crates." % (beans, jars, crates)

start_point = start_point / 10

print "We can also do that this way:"
print "We'd have %d beans, %d jars, and %d crates." % secret_formula(start_point) # 7. error spelling


sentence = "All good things come to those who weight." # 8. god\t is good 

words = break_words(sentence) # 9. delete ex25.
sorted_words = sort_words(words) # 10. delete ex25.

print_first_word(words)
print_last_word(words)
print_first_word(sorted_words) # 11. delete .
print_last_word(sorted_words)
sorted_words = sort_sentence(sentence) # 12. delete ex25.
print sorted_words # 13. prin missing t

print_first_and_last(sentence) # 14. ..._irst_... missing f

print_first_and_last_sorted(sentence) # 15. delete indent, _a_ missing nd, senence missing t
