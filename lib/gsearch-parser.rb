require "gsearch-parser/version"
require 'open-uri'
require 'nokogiri'

module GSearchParser
  def webSearch(query)
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

    # TODO: Fetch page
    searchPage = Nokogiri::HTML(open("http://google.com/search?q=#{query}"))

    @results << Result.new('title', 'content', "http://www.google.com")

    # Iterate over all search result divs and parse content into Result objects,
    # and finally store these in the results array
    #searchPage.css('li.g > div.vsc').each do |result|
     # title = result.css('h3.r > a.l').content
      #content = result.css('div.s > span.st').content
      #@results << Result.new('title', 'content', "http://www.google.com")
    #end
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

