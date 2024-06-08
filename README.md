# jekyll-alexa-theme

A Jekyll theme for a single page personal academic site.

::: warning
This theme was a custom theme for a specific use case and is not actively maintained. It is provided as is and might not work out of the box for your use case.

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-alexa-theme", git: 'https://github.com/ghxm/jekyll-alexa-theme'
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-alexa-theme
```

And then execute:

    $ bundle


To use the theme with GitHub Pages, add the following to your site's `_config.yml`:

```yaml
remote_theme: ghxm/jekyll-alexa-theme
```

In order to use the publications feature, you need to copy the bilbiography filter from `_plugins/bilbiography_filter.rb` of this repository to the `_plugins` directory of your own site.  Note that the filter might not work with GitHub Pages. To take full advantage of the theme consider using [GitHub Actions to build and deploy your site](https://jekyllrb.com/docs/continuous-integration/github-actions/).




## Usage

To get a feel for the theme, check out the examples provided in the `_sections` and `_publications` directories as well as the `_config.yml` file in this repository.

The theme relies on 'pages' stored in a `_sections` directory and publications stored in a `_publications` collection. Each page is a markdown file with a specific front matter configuration. In order to use the collection add the following to your site's `_config.yml` and create the corresponding directories in the root of your site:

```bash
mkdir _sections
mkdir _publications
```

```yaml

collections:
  sections:
    sort_by: order
    output: false
  publications:
    output: false

defaults:
  - scope:
      path: ""
      type: "sections"
    values:
      section_layout: "section"
```


## Publications

TODO

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ghxm/jekyll-alexa-theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass`, `_plugins` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-alexa-theme.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
