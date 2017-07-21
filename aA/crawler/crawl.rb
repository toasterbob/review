require 'open-uri'
require 'json'
require 'Nokogiri'

def crawl
  doc = Nokogiri::HTML(open('https://scottduane.github.io/TopSecretClue/'))

  links = doc.css('li a').map { |link| link['href'] }
  # page = open('https://scottduane.github.io/TopSecretClue')

  links.each do |line|

    begin
      r = open(line)
      if r.status[0] == "200"
        p line
      end
    rescue
      next
    end


    # r = open("http://scottduane.github.io/SecretClue4999")
    # r = open(line)

      # doc = JSON.parse(doc, :symbolize_names => true)
      # response = doc[:value][:joke]
      #
      # return response
    # end

  end
end

def three(link)
  doc = Nokogiri::HTML(open(link))

  links = doc.css('a').map { |link| link['href'] }
  return links
end

arr =[]
arr += three("https://scottduane.github.io/SecretClue7")
arr += three("https://scottduane.github.io/SecretClue1191")
arr += three("https://scottduane.github.io/SecretClue4444")


# ["https://scottduane.github.io/SecretClue4444", "https://scottduane.github.io/TopSecretClue1999"]
# ["https://scottduane.github.io/SecretClue4444"]
# ["https://scottduane.github.io/SecretClue1191"]
p arr #["https://scottduane.github.io/SecretClue4444", "https://scottduane.github.io/TopSecretClue1999", "https://scottduane.github.io/SecretClue4444", "https://scottduane.github.io/SecretClue1191"]

arr.each do |link|
  links = three(link)
  links.each do |l|
    l2 = three(l)
    p l if l2.empty?
  end

end
# Final Link
# https://scottduane.github.io/TopSecretClue1729/
