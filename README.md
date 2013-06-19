This project is at a very early stage and is subject to massive changes in the methods and organization.

# 

Each Linux distribution deal with its own format / set of init script, way of loading a config file, etc.
Each package maintainer is also responsible of its service init script, it leads to discrepency in formating and overall quality. Init script also sometime change with new version of packages, leading to some confusion for end-users.

Init script represent more than a simple script, it is composed often of several components:

- init script
- config file
- misc (pictures of cats and stuff)

# Folder structure

```
/{package}/{version}/{distrib}/{release}
```

Quite verbose indeed, it may be shrinked down later.

- **package**; to represent the package / service name (ex. mysql, nginx)
- **version**; to represent the package version, no need to minor versions, keep majors only (ex for mysql. 5.1, 5.2, 5.5, 5.6)
- **distrib**; to represent the distribution (ex. ubuntu, redhat, etc.)
- **release**; to represent the release (ex. ubuntu 12.04, 12.10, etc.)

