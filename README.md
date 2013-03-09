# bootstrap-datetimepicker-rails

This gem packages the bootstrap-datetimepicker (JavaScripts & stylesheets) for Rails 3.1+ asset pipeline. It adds ability to use [bootstrap-datetimepicker plugin](http://tarruda.github.com/bootstrap-datetimepicker/) within your Rails app without puting files inside `vendor` directory.

## Installation

Add this line to your application's Gemfile:

    gem 'bootstrap-datetimepicker-rails'

Add the following directive to your Javascript manifest file (`application.js`):

    //= require bootstrap-datetimepicker

If you want to include a localization file, also add the following directive:

    //= require locales/bootstrap-datetimepicker.<locale>.js>

Add the following line to your stylesheet file (`bootstrap_and_overrides.scss`):

```scss
@import 'bootstrap';
@import 'bootstrap-datetimepicker';
```

## Usage

See the excellent demo provided by plugin's author - [@tarruda](https://github.com/tarruda) [here](http://tarruda.github.com/bootstrap-datetimepicker/).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
