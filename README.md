bowerfresh
==========

Purpose is to make sure some dependencies (especially gitrepo's (master)) are always fresh. 
It does this by:

- cleaning bower cache
- uninstalling the dependencies

To uilize bowerfresh add the **sofresh** property. See [this bower file](./bower.json). 
Then in your build routine (package.json, shell script or something), do a preinstall and run bowerfresh (node) or bowerfreshrb (ruby).

bower.json (add to)
```
"sofresh": [
  "dep1",
  "dep2"
]
```
preinstall in package.json as an example
```
 "scripts": {
    "preinstall": "bowerfresh",
  },
```
