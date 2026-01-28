# Obsidian Plugins

Container for all plugins I use or contribute to created for easier maintainability.


## Development

Run dev container with compatible node version (menu selection)
```bash
.\.devcontainer\build.ps1
```

Run dev container for 'File Explorer Note Count' plugin
```bash
.\.devcontainer\build.ps1 -PluginName "File Explorer Note Count"
```

## Submodule Management

**Add new submodule**
```bash
git submodule add git@github.com:Extensions-Vault/[PLUGIN].git .\plugins\[PLUGIN]
```

**Update tags from base upstream**
```bash
git -C plugins/obsidian-linter remote add base git@github.com:platers/obsidian-linter.git
git -C plugins/obsidian-linter fetch base --tags
git -C plugins/obsidian-linter push origin master --tags
```

**List available tags**
```bash
git -C plugins/obsidian-linter tag
```

**Change tag version for module**
```bash
git -C plugins/obsidian-linter checkout 1.30.0
```

**Sync all submodules**
```bash
git submodule sync --recursive
```