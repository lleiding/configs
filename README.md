configs
=======

Collection of configuration files for my (Arch) linux systems

Install packages from a list
----------------------------

To install packages from a previously saved list of packages, while not reinstalling previously installed packages that are already up-to-date, run:

```
pacman -S --needed - < pkglist.txt
```

see: https://wiki.archlinux.org/index.php/Pacman/Tips_and_tricks