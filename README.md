# togglemount

toggles mount points

- mounts/unmounts every other time it is run on a given mountpoint
- creates mountpoint automatically before mount
- deletes mountpoint automatically after unmount
- reads arguments from stdin/file instead of argv if one is passed

# usage

```
$ togglemount [mount args]
$ echo [mount args] | togglemount
$ echo [mount args] > file && togglemount file`
```

I use it like this:

```
$ cat remote-dir
#!/usr/bin/env togglemount
-t sshfs
remote:/path/to/dir
remote.dir
$ ./remote-dir  # mount
$ mountpoint remote.dir
remote.dir is a mountpoint
$ ./remote-dir  # unmount
$ mountpoint remote.dir
mountpoint: remote.dir: No such file or directory
```
