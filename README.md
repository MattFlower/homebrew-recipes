# homebrew-recipes

Homebrew tap for personal formulae and casks.

## Install

```bash
brew tap MattFlower/recipes
```

## Formulae

| Formula | Description |
|---------|-------------|
| [cc-focus](Formula/cc-focus.rb) | macOS menu bar status indicator for Claude Code sessions |

### cc-focus

```bash
brew install MattFlower/recipes/cc-focus
cc-focus-cli setup                # register Claude Code hooks (one-time)
brew services start cc-focus      # start + auto-launch at login
```

## Casks

| Cask | Description |
|------|-------------|
| [tempest](Casks/tempest.rb) | macOS developer tool for AI-assisted coding |

### Tempest

```bash
brew install --cask MattFlower/recipes/tempest
```
