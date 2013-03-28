#### chef-solo

localhost.json

```javascript
{
    "run_list" : [
        "recipe[hello]"
    ]
}
```


solo.rb

```ruby
file_cache_path "/tmp/chef-solo"
cookbook_path ["#{File.expand_path(File.dirname(__FILE__))}/site-cookbooks"]
```

```
%chef-solo -c solo.rb -j ./nodes/localhost.json
Starting Chef Client, version 11.4.0
Compiling Cookbooks...
Converging 1 resources
Recipe: hello::default
  * log[hello] action write

Chef Client finished, 1 resources updated
```
