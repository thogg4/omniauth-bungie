# Omniauth-Bungie

This is a Omniauth Rubygem for authenticating users with Bungie.

## Installation

Add to your Gemfile:

```
gem "omniauth-bungie"
```

Run bundle install afterwards.


To ``config/initializers/omniauth.rb`` add:


```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bungie, Rails.application.secrets.bungie_client_id, Rails.application.secrets.bungie_api_key, scope: 'public'
end
```

``scope`` might be:

    public  default, private activities are not returned, privacy zones are respected in stream requests
    write   modify activities, upload on the user’s behalf
    view_private  view private activities and data within privacy zones
    view_private,write  both ‘view_private’ and ‘write’ access


Please refer to the [Omniauth documentation](https://github.com/intridea/omniauth) on how to use Omniauth.
