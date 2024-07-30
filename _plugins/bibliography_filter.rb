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
      doi = item['doi']
      editors = item['editors']&.join(', ')
      book_title = item['book_title']
      url = item['url_']

      if type == 'chapter'
        output = "#{authors} (#{date}). #{title}. In #{editors} (Eds.), #{book_title}."
      elsif type != 'book'
        output = "#{authors} (#{date}). #{title}. #{journal}"
        output += ", #{volume}" if volume
        output += "(#{issue})" if issue
        output += ": #{pages}" if pages
        output += "."
      else
        output = "#{authors} (#{date}). #{title}."
      end

      if type == 'book' || type == 'chapter'
          output += " #{publisher}" if publisher
          output += "," if location && publisher
          output += " #{location}" if location
          output += "." if location || publisher
        end

      output += " <span class=\"fst-italic\">doi:</span> <a href=\"https://doi.org/#{doi}\" target=\"_blank\">#{doi}</a>." if doi
      output += " <a href=\"#{url}\" target=\"_blank\">#{url}</a>." if url

      output
    end
  end
end

Liquid::Template.register_filter(Jekyll::BibliographyFilters)