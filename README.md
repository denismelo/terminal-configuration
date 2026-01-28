# Terminal Configuration

A powerful and beautiful terminal configuration setup using Zsh, Oh My Zsh, Zinit, and Starship prompt.

## 🎨 Features

- **Starship Prompt**: A minimal, blazing-fast, and customizable prompt
- **Oh My Zsh**: Framework for managing Zsh configuration
- **Zinit**: Flexible plugin manager for Zsh
- **Syntax Highlighting**: Fast syntax highlighting for commands
- **Auto-suggestions**: Fish-like autosuggestions
- **Auto-completion**: Intelligent command completion
- **Colorls**: Beautiful file listings with colors and icons

## 📦 Installation

### Prerequisites

1. **Install Nerd Font (FiraCode)**
   ```bash
   # Download and install from:
   # https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/FiraCode.zip
   ```

2. **Install Starship**
   ```bash
   curl -sS https://starship.rs/install.sh | sh
   ```

3. **Install Oh My Zsh**
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

### Zsh Plugins

Install required plugins:

```bash
# Zsh Autocomplete
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

# Fast Syntax Highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```

### Configuration Files

1. Copy `.zshrc` to your home directory:
   ```bash
   cp .zshrc ~/.zshrc
   ```

2. Copy `starship.toml` to your config directory:
   ```bash
   mkdir -p ~/.config
   cp starship.toml ~/.config/starship.toml
   ```

3. Reload your shell:
   ```bash
   source ~/.zshrc
   ```

## ⚡ Best Terminal Aliases

### File Navigation & Listing
```bash
ll                 # Enhanced file listing with colors and icons (using colorls)
```

### Configuration File Shortcuts
```bash
zshrc              # Open .zshrc in VS Code
ohmyzshrc          # Open Oh My Zsh directory in VS Code
gitconfig          # Open .gitconfig in VS Code
sstoml             # Open starship.toml in VS Code
```

### Task Management
```bash
tm                 # Shortcut for task-master
taskmaster         # Run task-master
```

### Application Shortcuts
```bash
avity              # Launch Antigravity application
```

## 🔧 Best Terminal Functions

### AWS Credential Renewal
```bash
aws-renew          # Refresh AWS credentials for TechLeadAccess profile
```

**Usage:**
```bash
aws-renew
# Output: AWS credentials renovadas
```

This function exports AWS credentials from the configured profile, making it easy to refresh your session without manual configuration.

## 🎯 Configured Plugins

### Oh My Zsh Plugins
- **git**: Git integration and shortcuts
- **zsh-autosuggestions**: Fish-like autosuggestions
- **fast-syntax-highlighting**: Fast syntax highlighting for commands
- **zsh-autocomplete**: Real-time type-ahead completion

### Zinit Plugins
- **zsh-z**: Jump around directories quickly
- **fast-syntax-highlighting**: Additional syntax highlighting via Zinit
- **zsh-completions**: Extended completion definitions

## 🎨 Starship Customization

The Starship prompt is configured with:

- Custom OS symbols for different distributions
- Git branch display with truncation
- Docker context detection
- Node.js version display
- AWS region display (disabled by default)
- Custom directory substitutions with icons
- Beautiful color scheme

### Directory Icons
The starship configuration includes custom icons for common directories:
- Documents: " " (folder icon)
- Downloads: " " (download icon)
- Music: " " (music icon)
- Pictures: " " (picture icon)
- Videos: " " (video icon)
- Projects: "󱌢 " (project icon)
- School: "󰑴 " (school icon)
- www: "" (web icon)
- .config: " " (config icon)

## 🚀 Additional Tools

### Node Version Manager (NVM)
Automatically loads NVM for managing Node.js versions.

### Bun Runtime
Bun runtime is configured and added to PATH.

### Yarn Global Packages
Yarn global binaries are automatically added to PATH.

### Windsurf
Windsurf CLI tools are added to PATH.

## 📝 Notes

- The configuration uses Zinit for fast plugin loading
- Syntax highlighting is provided by multiple sources for redundancy
- The setup is optimized for macOS but can be adapted for Linux
- Some paths are user-specific and should be adjusted to your environment

## 🔗 References

- [Starship Prompt](https://starship.rs/)
- [Oh My Zsh](https://ohmyz.sh/)
- [Zinit](https://github.com/zdharma-continuum/zinit)
- [Nerd Fonts](https://www.nerdfonts.com/)
- [FiraCode Font Download](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/FiraCode.zip)
- [More configuration details](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df)

## 👤 Author

@deverebor - Version 2.5

## 📄 License

Feel free to use and modify this configuration to suit your needs!
