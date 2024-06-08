# jekyll-alexa-theme

A Jekyll theme for a single page personal academic site.

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

Note that the custom publications formatting filter might not work with GitHub Pages. To take full advantage of the theme consider using [GitHub Actions to build and deploy your site](https://jekyllrb.com/docs/continuous-integration/github-actions/).


## Usage

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
