﻿# Autoprefixer Rails

[Autoprefixer](https://github.com/ai/autoprefixer) is a tool
to parse CSS and add vendor prefixes to CSS rules using values
from the [Can I Use](http://caniuse.com/). This gem provides
Ruby and Ruby on Rails integration with this JavaScript tool.

Sponsored by [Evil Martians](http://evilmartians.com/).

## Usage

### Ruby on Rails

Add the `autoprefixer-rails` gem to your `Gemfile`:

```ruby
gem "autoprefixer-rails"
```

Write your CSS (Sass, Stylus, LESS) rules without vendor prefixes
and Autoprefixer will apply prefixes for you.
For example in `app/assets/stylesheet/foobar.sass`:

```sass
:fullscreen a
  transition: transform 1s
```

Autoprefixer uses Can I Use database with browser statistics and properties
support to add vendor prefixes automatically using the Asset Pipeline:

```css
:-webkit-full-screen a {
    -webkit-transition: -webkit-transform 1s;
            transition: transform 1s
}
:-moz-full-screen a {
    transition: transform 1s
}
:-ms-fullscreen a {
    transition: transform 1s
}
:fullscreen a {
    -webkit-transition: -webkit-transform 1s;
            transition: transform 1s
}
```

If you need to specify browsers for your project, you can save them
to `config/autoprefixer.yml`. See [browser section] in Autoprefixer docs.

```yaml
browsers:
  - "last 1 version"
  - "> 1%"
  - "Explorer 10"
```

You can get what properties will be changed using a Rake task:

```sh
rake autoprefixer:info
```

By default, Autoprefixer uses `> 1%, last 2 versions, Firefox ESR, Opera 12.1`:
* Latest [Firefox ESR] is a 24 version.
* Opera 12.1 will be in list until Opera supports non-Blink 12.x branch.

[browser section]: https://github.com/ai/autoprefixer#browsers
[Firefox ESR]:     http://www.mozilla.org/en/firefox/organizations/faq/

### Sprockets

If you use Sinatra or other non-Rails frameworks with Sprockets,
just connect your Sprockets environment with Autoprefixer and write CSS
in the usual way:

```ruby
assets = Sprockets::Environment.new do |env|
  # Your assets settings
end

require "autoprefixer-rails"
AutoprefixerRails.install(assets)
```

### Ruby

If you need to call Autoprefixer from plain Ruby code, it’s very easy:

```ruby
require "autoprefixer-rails"
prefixed = AutoprefixerRails.process(css, from: 'main.css').css
```

You can specify browsers by `browsers` option:

```ruby
AutoprefixerRails.process(css, from: 'a.css', browsers: ['> 1%', 'ie 10']).css
```

## Visual Cascade

By default, Autoprefixer will change CSS indentation to create nice visual
cascade of prefixes.

```css
a {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box
}
```

You can disable it by `cascade: false` in `config/autoprefixer.yml`
or in `process()` options.

## Source Map

Autoprefixer will generate source map, if you set `map` option to `true` in
`process` method.

You must set input and output CSS files paths (by `from` and `to` options)
to generate correct map.

```ruby
result = AutoprefixerRails.process(css,
    map:   true,
    from: 'main.css',
    to:   'main.out.css')

result.css #=> Prefixed CSS
result.map #=> Source map content
```

Autoprefixer can also modify previous source map (for example, from Sass
compilation). Just set original source map content (as string) to `map` option:

```ruby
result = AutoprefixerRails.process(css, {
    map:   File.read('main.sass.css.map'),
    from: 'main.sass.css',
    to:   'main.min.css')

result.map #=> Source map from main.sass to main.min.css
```

See all options in [PostCSS docs](https://github.com/ai/postcss#source-map-1).
AutoprefixerRails will convert Ruby style to JS style, so you can use
`map: { sources_content: true }` instead of camelcase `sourcesContent`.
