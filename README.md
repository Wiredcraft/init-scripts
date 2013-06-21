# Disclaimer

This project is at a very early stage and is subject to massive changes in the methods and organization. It is a follow up to this [blog post - I can haz init script](http://devo.ps/blog/2013/06/19/I-can-haz-init-script.html)

If you find a good init script somewhere on the Internet, on a gists, on a forum or anywhere, and you believe it is worth being shared, do not hesitate to either [Submit a new issue](/devo-ps/init-scripts/issues/new) mentioning the technology and the URL where you find the init script.  
Similarly, if you have ideas about features, or are looking for a specific script do not hesitate to ask.

Better even, if you have some time and feel generous :) [fork this repo](/devo-ps/init-scripts/fork) and submit your own Pull Request, or pickup an issue in the queue and get busy!

# Init scripts content

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

