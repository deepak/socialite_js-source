require 'test_helper'
require 'socialite_js/source'

module SocialiteJs
  describe Source do
    before do
      @subject = SocialiteJs::Source
      @vendor_path = File.expand_path("../../../lib/socialite_js/vendor/assets/javascript", __FILE__)
    end
    
    it "has vendor path" do
      @subject.vendor_path.must_equal @vendor_path
    end

    it "has bundled_path" do
      @subject.bundled_path.must_equal "#{@vendor_path}/socialite.js"
    end

    it "has bundled_minimized_path" do
      @subject.bundled_minimized_path.must_equal "#{@vendor_path}/socialite.min.js"
    end

    it "has an non-empty array of supported_extensions" do
      @subject.supported_extensions.must_be_instance_of Array
      @subject.supported_extensions.wont_be_empty
    end

    describe "extension_path" do
      it "has an attribute for a supported extension type" do
        @subject.github_extension_path.must_equal "#{@vendor_path}/extensions/socialite.github.js"
      end

      it "does not have an attribute for a unsupported extension type" do
        lambda { @subject.foobar_extension_path }.must_raise(NoMethodError)
      end

      it "responds to a supported extension type" do
        @subject.respond_to?(:github_extension_path).must_equal true
        @subject.respond_to?(:foo_extension_path).must_equal    false
      end
    end
  end
end
