# SocialiteJs::Source

JavaScript source code for socialite.js wrapped in a rubygems shell.  
socialite.js is a library to display social sharing buttons.  

check http://socialitejs.com/ and https://github.com/dbushell/Socialite  

This rubygem is a shell over the socialite.js  
Its version will be the same as socialite.js and was created to:  
1. make it easier to bundle socialite.js in Rails apps  
2. release management. version and specify a specific version of socialite.js in your Rails apps  

#### Why does the gem name have dashes ? 

The name of the gem is socialite_js-source. It contains a dashes because it sits under the namespace of socialite_js
so you will be requiring 'socialite_js/source' not 'socialite-source' in your ruby code

see http://guides.rubygems.org/patterns/#consistent-naming under the "Use dashes for extensions" section

## TODO
Seems like the socialite.js library does not follow any specific versioning

And btw hate the name of the gem.  

@gnufied said it best on the #ruby-lang irc channel 
the name `socialite_js-source` is `ugg` :-)

> dkannan: me too but the name socialite is taken  
> dkannan: how about socialite_js-source  
> gnufied: ugg  

Any other suggestions ? :-)

## Installation

Add this line to your application's Gemfile:

    gem 'socialite_js-source'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install socialite_js-source

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request