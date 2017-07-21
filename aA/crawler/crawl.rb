require 'open-uri'
require 'json'

def crawl

  page = open('https://scottduane.github.io/TopSecretClue')

  page.each do |line|
    if line.include?("https")
      
    end

    if r.status[0] == "200"
      doc = ""

      r.each do |line|
        p line
        doc << line
      end

      # doc = JSON.parse(doc, :symbolize_names => true)
      # response = doc[:value][:joke]
      #
      # return response
    end

  end
end

crawl
