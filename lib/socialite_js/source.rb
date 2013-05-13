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

    def self.respond_to?(method_sym, include_private = false)
      if respond_to_socialite_extension? method_sym.to_s
        true
      else
        super
      end
    end
        
    def self.method_missing(method_sym, *args, &block)
      if match = respond_to_socialite_extension?(method_sym.to_s)
        "#{vendor_path}/extensions/socialite.#{match['extension_name']}.js"
      else
        super
      end
    end

    protected
    class << self
      def respond_to_socialite_extension? method_str
        # NOTE: not checking if the file actually exists. but checking
        # from a master list of supported extensions
        if (match = method_str.match(/\A(?<extension_name>(.)+)_extension_path\z/)) &&
            supported_extensions.include?(match['extension_name'])
          match
        else
          false
        end
      end
    end
  end
end
