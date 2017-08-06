SomePreferences.instance
#<SomePreferences:0x007fe454a48158 @method=:get, @protocol=:http, @url="/api">

SomePreferences.configure do |config|
  config.url      '/api/path'
  config.method   :post
  config.protocol :https
end

SomePreferences.instance
#<SomePreferences:0x007fe454a48158 @method=:post, @protocol=:https, @url="/api/path">
