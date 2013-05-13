# Changelog

## 0.0.2
- js paths for extensions are built using method_missing  
  Add a respond_to? method which reflects if the method will be resolved  
  by method_missing. It is a best-practice to modify `respond_to?`  
  when `method_missing` is added

## 0.0.1
- initial commit. javascript files are vendored inside the
  vendor/assets/javascript folder. 
- Socialite::Source.supported_extensions lists the extensions provided by
  the javascript library
