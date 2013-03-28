### berkshelf

```
berks --path cookbooks
```

### vagrant

```
vagrant ssh-config --host vagrant01 >> ~/.ssh/config
```

### nodes

vagrant01.json

```javascript
{
    "run_list" : [
        "recipe[hello]"
    ]
}
```


#### knife-solo

```
$ knife solo prepare vagrant01
```

```
$ knife solo cook vagrant01
```

