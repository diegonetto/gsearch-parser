# GSearchParser

GSearchParser is a lightweight framework for making Google search queries and parsing the resulting pages. More parsed results can be requested by simply calling the 'nextResults' method.

## Installation

Add this line to your application's Gemfile:

    gem 'gsearch-parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gsearch-parser

## Usage

  require 'gsearch-parser'

  # Create a new Google web search from a query string
  webSearch = GSearchParser.webSearch('what')

  # Iterate over results
  webSearch.each do |result|
    puts "\t" + result.title
    puts "\t" + result.content
    puts "\t" + result.uri
    puts "\n"
  end

  # Fetch the next set of results, and iterate over them
  webSearch.nextResults.each do |result|
    puts "\t" + result.title
    puts "\t" + result.content
    puts "\t" + result.uri
    puts "\n"
  end

  # Iterate over all the results, including the ones from calls to .nextResults
  webSearch.each do |result|
    puts "\t" + result.title
    puts "\t" + result.content
    puts "\t" + result.uri
    puts "\n"
  end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
