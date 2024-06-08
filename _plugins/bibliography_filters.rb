require 'date'

module Jekyll
  module BibliographyFilters
    def bibliography(item)
      # Extract the necessary attributes from the item
      type = item['type']
      title = item['title']
      authors = item['authors'].join(', ')
      date = item['date'].year.to_s  # Extract the year from the date and convert it to a string
      journal = item['journal']
      volume = item['volume']
      issue = item['issue']
      pages = item['pages']
      publisher = item['publisher']
      location = item['location']

      if item['type'] != 'book'
        output = "#{authors} (#{date}). #{title}. #{journal}"
        output += ", #{volume}" if volume
        output += "(#{issue})" if issue
        output += ": #{pages}" if pages
        output += "."
      else
        output = "#{authors} (#{date}). #{title}. #{publisher}, #{location}."
      end

      output
    end
  end
end

Liquid::Template.register_filter(Jekyll::BibliographyFilters)