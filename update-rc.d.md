Insert links using the defaults:
```
update-rc.d foobar defaults
```
The equivalent dependency header would have start and stop dependencies on $remote_fs and $syslog, and start in runlevels 2-5 and stop in  run‐levels 0, 1 and 6.

Remove  all  links  for  a script (assuming foobar has been deleted already):
```
update-rc.d foobar remove
```
Example of disabling a service:
```
update-rc.d foobar disable
```
