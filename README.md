Flagged Properties And Values
===
A linter for scss-lint (https://github.com/brigade/scss-lint). Warns on the presence of properties like "float" or values like "initial".



Config
---

linters:

    FlaggedPropertiesAndValues:
        # set to true to enable
        enabled: true
        # optional array of properties to warn on
        properties: [float]
        # optional array of values to warn on
        values: [initial]

Use
---
This linter is currently not available as a Gem. To use it, place /lib/FlaggedPropertiesAndValues.rb in a folder on your system, then add that folder to your .scss-lint.yml file as follows

    plugin_directories: ['/foo/bar']