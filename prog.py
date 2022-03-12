a = ["words", "world", "wilde", "wide", "wade", "wild", "winq", "wane", "won", "worm"]
print(a)
for i in range(len(a)):
    	number = ord(a[i][len(a[i])-1])
    	if number%2==0:
        	byte = bin(number)
        	byte_less = byte[:-1]
        	new_byte = str(str(byte_less) + str(int(not bool(int(byte[len(byte) - 1])))))
        	rep = str(chr(int(new_byte,2)))
        	a[i] = a[i].replace(a[i][len(a[i])-1],rep)
print(a)
