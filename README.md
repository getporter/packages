# Porter Packages

This repository contains package listings for mixins and plugins available for Porter, including those created by the community.
The lists are consumed by the [Porter CLI](https://porter.sh/install) when returning results for `porter mixins search` and `porter plugins search`.

Anyone can create a mixin and list it on Porters search listings.
We will lightly vet that the listing works, however the Porter Authors and Project are not responsible for these packages and make no assurances.

## Add a package listing

There are two package directories, one for [mixins](https://porter.sh/mixins) and
one for [plugins](https://porter.sh/plugins):

* [Mixin Directory](https://github.com/getporter/packages/blob/main/mixins/index.json)
* [Plugin Directory](https://github.com/getporter/packages/blob/main/plugins/index.json)

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

To ensure proper formatting of the edited list, `make test` can be run. This will:
- Validate that the JSON is well-formed
- Validate that the list conforms to the [JSON Schema](schema.json)

The schema validates that each package entry has:
- `name` (required, non-empty string)
- `author` (required, non-empty string)
- `description` (required, non-empty string)
- `URL` (required, non-empty string starting with http:// or https://)

When ready, open up a pull request with the updated directory.  Once merged,
your mixin or plugin listing will be broadcast to the world!

## Official Package Feeds

The atom feeds for the official Porter mixins and plugins are also located in this repository.
These feeds are used to install the latest version of an official mixin.
For example, `porter mixins install NAME` by default looks for the mixin in these official feeds, unless you specify --url or --feed-url.

The canonical location to these feeds are:

* https://cdn.porter.sh/mixins/atom.xml
* https://cdn.porter.sh/plugins/atom.xml

Do not submit a pull request updating the atom feeds, they are updated automatically when new releases are published for official Porter mixins and plugins.
