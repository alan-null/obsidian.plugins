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

## Setup

Add new submodule
```bash
git submodule add git@github.com:Extensions-Vault/[PLUGIN].git .\plugins\[PLUGIN]
```
Update tags
```bash
git remote add upstream https://github.com/gfxholo/[PLUGIN].git
git remote -v
git fetch upstream --tags
git push origin main --tags
```