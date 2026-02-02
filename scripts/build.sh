#!/bin/bash
# Build script for Cloudflare Pages
# Installs LilyPond and TeX Live if needed and runs the full build

set -e

# Check if lilypond is available
if ! command -v lilypond &> /dev/null; then
    echo "Installing LilyPond..."

    # Try apt-get first (works in some CI environments)
    if command -v apt-get &> /dev/null; then
        if apt-get update -qq 2>/dev/null && apt-get install -y -qq lilypond 2>/dev/null; then
            echo "LilyPond installed via apt: $(lilypond --version | head -1)"
        fi
    fi

    # Fallback: Download pre-built binary
    if ! command -v lilypond &> /dev/null; then
        LILYPOND_VERSION="2.24.3"
        LILYPOND_URL="https://gitlab.com/lilypond/lilypond/-/releases/v${LILYPOND_VERSION}/downloads/lilypond-${LILYPOND_VERSION}-linux-x86_64.tar.gz"
        INSTALL_DIR="$HOME/.local"

        echo "Downloading LilyPond ${LILYPOND_VERSION}..."
        mkdir -p "$INSTALL_DIR"
        curl -sL "$LILYPOND_URL" | tar xz -C "$INSTALL_DIR" --strip-components=1

        export PATH="$INSTALL_DIR/bin:$PATH"
    fi
fi

if command -v lilypond &> /dev/null; then
    echo "Using LilyPond: $(lilypond --version | head -1)"
else
    echo "ERROR: LilyPond not available"
    exit 1
fi

# Check if pdflatex is available (needed for lilypond-book)
if ! command -v pdflatex &> /dev/null; then
    echo "Installing TinyTeX..."
    TINYTEX_DIR="$HOME/.TinyTeX"

    # Download and extract TinyTeX
    curl -sL https://yihui.org/tinytex/TinyTeX-1.tar.gz | tar xz -C "$HOME"

    # Add to PATH
    export PATH="$TINYTEX_DIR/bin/x86_64-linux:$PATH"

    # Install additional packages needed for German documents
    if command -v tlmgr &> /dev/null; then
        tlmgr install babel-german hyphen-german 2>/dev/null || true
    fi
fi

if command -v pdflatex &> /dev/null; then
    echo "Using pdflatex: $(pdflatex --version | head -1)"
else
    echo "WARNING: pdflatex not available, skipping lilypond-book builds"
fi

# Run the build
npm run build
