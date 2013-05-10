require "socialite_js/source/version"

module SocialiteJs
  module Source
    def self.vendor_path
      File.expand_path("../vendor/assets/javascript", __FILE__)
    end
    
    def self.bundled_path
      "#{vendor_path}/socialite.js"
    end

    def self.bundled_minimized_path
      "#{vendor_path}/socialite.min.js"
    end

    def self.supported_extensions
      %w[bufferapp
       extension-template
       facebook
       github
       googleplus
       hackernews
       linkedin
       pinterest
       spotify
       twitter
       vkontakte
       weibo
       icefy]
    end
    
    def self.method_missing(meth, *args, &block)
      if (match = meth.to_s.match(/\A(?<extension_name>(.)+)_extension_path\z/)) &&
          supported_extensions.include?(match['extension_name'])
        # NOTE: not checking if the file actually exists. but checking
        # from a master list of supported extensions
        "#{vendor_path}/extensions/socialite.#{match['extension_name']}.js"
      else
        super
      end
    end
  end
end
