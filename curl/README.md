curl is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have curl first in your PATH, run:
```
  fish_add_path /usr/local/opt/curl/bin
```

For compilers to find curl you may need to set:
```
  set -gx LDFLAGS "-L/usr/local/opt/curl/lib"
  set -gx CPPFLAGS "-I/usr/local/opt/curl/include"
```

For pkg-config to find curl you may need to set:
```
  set -gx PKG_CONFIG_PATH "/usr/local/opt/curl/lib/pkgconfig"
```

fish completions have been installed to:
```
  /usr/local/opt/curl/share/fish/vendor_completions.d
```
