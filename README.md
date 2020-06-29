# Porter Packages

This repository contains package listings for mixins and plugins available for Porter.

The lists are consumed by the [Porter CLI](https://porter.sh/install)
when returning results for `porter mixins search` and `porter plugins search`.

## Add a package listing

There are two package directories, one for [mixins](https://porter.sh/mixins) and
one for [plugins](https://porter.sh/plugins):

* [Mixin Directory](https://github.com/deislabs/porter-packages/blob/main/mixins/index.json)
* [Plugin Directory](https://github.com/deislabs/porter-packages/blob/main/plugins/index.json)

To list your mixin or plugin for others to see, clone the repository and create
a new JSON entry just like the others, with details updated to reflect your offering.

For example, a new plugin entry would look like:

```json
  {
    "name": "myplugin",
    "author": "My Name",
    "description": "A plugin for doing great things",
    "URL": "https://github.com/org/project/releases/download",
  },
```

The `URL` field should be one of the following:

* **Atom Feed URL:** Porter uses the following for its stable plugins: `https://cdn.porter.sh/plugin/atom.xml`
* **Download URL:** Directory where binaries are hosted, such as GitHub releases: `https://github.com/org/project/releases/download`

To ensure proper formatting of the edited list, `make test` can be run.

When ready, open up a pull request with the updated directory.  Once merged,
your mixin or plugin listing will be broadcast to the world!