# Homebrew Tap for my Software

This is the official Homebrew tap for distributing software maintained by [Vedesh Padal](https://github.com/vedesh-padal).

## Installation

To install **ShotX** from this tap, first add the tap to your system:
```bash
brew tap vedesh-padal/tap
```

Then you can install the application as normal:
```bash
brew install shotx
```

### 🐧 Why a Formula instead of a Cask?
While ShotX is a GUI application, it is designed specifically for Linux (Wayland & X11). Homebrew Casks are strictly limited to macOS applications. By using a standard Formula, we enable ShotX to be installed and managed seamlessly via Homebrew on any supported Linux distribution.

### 📦 Platform Support
ShotX is currently optimized for Linux systems. It requires a display server (Wayland or X11) and provides native integration for GNOME, KDE Plasma, Sway, and Hyprland.

### 🛠 Installation from Source
Currently, software in this tap is installed directly from the source distribution (PyPI). Homebrew will automatically manage a private virtual environment for the application, ensuring no conflicts with your system Python.

### 💬 Feedback & Issues
This repository's issues tab is disabled. 

If you encounter any problems with the software, please open an issue in the respective project repository:

- **ShotX Issues:** https://github.com/vedesh-padal/ShotX/issues