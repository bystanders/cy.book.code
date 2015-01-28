def while_loop(quit_var, increment):
    i = 0
    numbers = []

    while i < quit_var:
        print "At the top i is %d" % i
        numbers.append(i)

        i = i + increment
        print "Numbers now: ", numbers
        print "At the bottom i is %d" % i

    print "The numbers: "

    for num in numbers:
        print num

def for_loop(quit_var, increment):
    numbers = []
    for i in range(0, quit_var, increment):
        print "At the top i is %d" % i
        numbers.append(i)

        print "Numbers now: ", numbers
        print "At the bottom i is %d" % i

    print "The numbers: "

    for num in numbers:
        print num

while_loop(6, 1)
print
for_loop(6, 1)
