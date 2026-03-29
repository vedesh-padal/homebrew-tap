class Shotx < Formula
  include Language::Python::Virtualenv

  desc "Advanced screenshot and screen capture utility for Linux — inspired by ShareX"
  homepage "https://shotx.vedeshpadal.me"

  url "https://files.pythonhosted.org/packages/source/s/shotx/shotx-1.0.0b1.tar.gz"
  sha256 "89a968953b8e6a4e4de0a0f7a460e7d54d4bbf269ed77d54874e239ad8851dc1"
  license "GPL-3.0-only"

  # ShotX is Linux-only (Wayland/X11 capture, GTK/dbus dependencies)
  depends_on :linux

  depends_on "python@3.12"
  depends_on "gobject-introspection"  # PyGObject / dbus-next runtime
  depends_on "cairo"                  # Required by PyGObject
  depends_on "pkg-config"             # Build-time dep for PyGObject

  def install
    # Homebrew creates an isolated venv in libexec and symlinks the
    # entry point binary to bin/. This is the standard pattern for
    # Python CLI tools on Homebrew.
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      ShotX has been installed. For full feature support, install these
      system packages with your distro package manager:

        OCR text extraction:   sudo apt install tesseract-ocr
        QR code scanning:      sudo apt install libzbar0
        Screen recording (X11):  sudo apt install ffmpeg
        Screen recording (Wayland): sudo apt install wf-recorder

      On first run, ShotX will offer to integrate with your desktop
      (application menu + autostart). You can also run:
        shotx --tray
    EOS
  end

  test do
    # Verify the binary runs and version string is reported correctly
    assert_match version.to_s, shell_output("#{bin}/shotx --version")
  end
end
