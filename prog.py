import dis

def func():
	a = ["words", "world", "wilde", "wide", "wade", "wild", "winq", "wane", "won", "worm"]
	print(a)
	for i in range(len(a)):
    		number = ord(a[i][len(a[i])-1])
    		if number%2==0:
        		byte = bin(number)
        #print(a[i][len(a[i])-1])
        #print(byte)
        #print(int(bool(int(byte[len(byte) - 1]))))
        #print(int(not bool(int(byte[len(byte) - 1]))))
        		byte_less = byte[:-1]
        #print(byte_less)
        		new_byte = str(str(byte_less) + str(int(not bool(int(byte[len(byte) - 1])))))
        #print(new_byte)
        		rep = str(chr(int(new_byte,2)))
        #print(rep)
        		a[i] = a[i].replace(a[i][len(a[i])-1],rep)
        #print(a[i])
	print(a)
dis.dis(func)
