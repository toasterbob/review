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

crawl
