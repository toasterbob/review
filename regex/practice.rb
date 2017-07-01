emailRegExp = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}/ #email addresses


check = /[a-z]+at/
words = ["hat", "cot", "cat"]
words.join(" ").scan(/[a-z]+a+t/)

check = /h+[a-z]+t/
    words = ["hat", "cot", "cat"]
    words.join(" ").scan(/h+[a-z]+t/)
    begin_word
