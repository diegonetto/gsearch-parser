require "gsearch-parser/version"
require 'open-uri'
require 'nokogiri'

module GSearchParser

  def GSearchParser.webSearch(query)
    GoogleSearch.new(query)
  end

end

###################################################
#                                                 #
#              GoogleSearch Class                 #
#                                                 #
###################################################
class GoogleSearch
  attr_accessor :results

  # Class initializer
  def initialize(query)
    # Initialize array
    @results = Array.new

    # TODO: Format query

    # Fetch page
    searchPage = Nokogiri::HTML(open("http://google.com/search?sourceid=chrome&q=#{query}", 
      'User-Agent' => 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.152 Safari/535.19'))

    # Iterate over each Google result list element and extract data
    searchPage.css('li.g').each do |result|
      title = result.css('h3').first.content
      content = result.css('span.st').first
      uri = result.css('cite')
      @results << Result.new(title, content, uri)
    end
  end

  # Iterator over results
  def each(&blk)
    @results.each(&blk)
  end

  ###################################################
  #                                                 #
  #                Result Class                     #
  #                                                 #
  ###################################################
  class Result
    attr_accessor :title, :content, :uri

    # Class initializer
    def initialize(title, content, uri)
      @title = title
      @content = content
      @uri = uri
    end

  end # Result

end # GoogleSearch

