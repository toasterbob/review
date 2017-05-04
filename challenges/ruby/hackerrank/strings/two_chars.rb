#!/bin/ruby
# 141
# cwomzxmuelmangtosqkgfdqvkzdnxerhravxndvomhbokqmvsfcaddgxgwtpgpqrmeoxvkkjunkbjeyteccpugbkvhljxsshpoymkryydtmfhaogepvbwmypeiqumcibjskmsrpllgbvc
# #answer is 8

# 375
# "uyetuppelecblwipdsqabzsvyfaezeqhpnalahnpkdbhzjglcuqfjnzpmbwprelbayyzovkhacgrglrdpmvaexkgertilnfooeazvulykxypsxicofnbyivkthovpjzhpohdhuebazlukfhaavfsssuupbyjqdxwwqlicbjirirspqhxomjdzswtsogugmbnslcalcfaxqmionsxdgpkotffycphsewyqvhqcwlufekxwoiudxjixchfqlavjwhaennkmfsdhigyeifnoskjbzgzggsmshdhzagpznkbahixqgrdnmlzogprctjggsujmqzqknvcuvdinesbwpirfasnvfjqceyrkknyvdritcfyowsgfrevzon"
# answer is 0

# 121
# txnbvnzdvasknhlmcpkbxdvofimsvqbvkswlkrchohwuplfujvlwpxtlcixpajjpaskrnjneelqdbxtiyeianqjqaikbukpicrwpnjvfpzolcredzmfaznnzd
# 6

len = 375
s = "uyetuppelecblwipdsqabzsvyfaezeqhpnalahnpkdbhzjglcuqfjnzpmbwprelbayyzovkhacgrglrdpmvaexkgertilnfooeazvulykxypsxicofnbyivkthovpjzhpohdhuebazlukfhaavfsssuupbyjqdxwwqlicbjirirspqhxomjdzswtsogugmbnslcalcfaxqmionsxdgpkotffycphsewyqvhqcwlufekxwoiudxjixchfqlavjwhaennkmfsdhigyeifnoskjbzgzggsmshdhzagpznkbahixqgrdnmlzogprctjggsujmqzqknvcuvdinesbwpirfasnvfjqceyrkknyvdritcfyowsgfrevzon"


#!/bin/ruby


# len = gets.strip.to_i
# s = gets.strip


def sorter(s)
    sorted = false
    while !sorted do
        sorted = true
        i = 0;
        while i < s.length
            if s[i] == s[i + 1]
                s = s.delete(s[i])
                sorted = false
            end
            i += 1
        end
    end
    s
end

def sorted?(s)
    i = 0
    while i < s.length
        return false if s[i] == s[i + 1]
        i += 1
    end
    true
end

s = sorter(s)
def search_two(s)
    top = 0;
    unique = s.split("").uniq

    i = 0
    while i < unique.length - 1

        j = i + 1
        while j < unique.length

            two_letters = s.scan(/[#{unique[i]}#{unique[j]}]/)

            if two_letters.count > top
                top = two_letters.count if sorted?(two_letters)
            end
            j += 1
        end
        i += 1
    end
    top
end


if len < 2 || s.split("").uniq.count < 2
    puts 0
else
    puts search_two(s)
end
