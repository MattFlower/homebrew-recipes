# homebrew-recipes

Homebrew tap for personal formulae.

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
