#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install -v coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install -v moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install -v findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install -v gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install -v bash
brew install -v bash-completion

# Install `wget` with IRI support.
brew install -v wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install -v ringojs
brew install -v narwhal

# Install more recent versions of some OS X tools.
brew install -v vim --override-system-vi
brew install -v homebrew/dupes/grep
brew install -v homebrew/dupes/screen
brew install -v homebrew/php/php55 --with-gmp

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install -v bfg
brew install -v binutils
brew install -v binwalk
brew install -v cifer
brew install -v dex2jar
brew install -v dns2tcp
brew install -v fcrackzip
brew install -v foremost
brew install -v hashpump
brew install -v hydra
brew install -v john
brew install -v knock
brew install -v nmap
brew install -v pngcheck
brew install -v socat
brew install -v sqlmap
brew install -v tcpflow
brew install -v tcpreplay
brew install -v tcptrace
brew install -v ucspi-tcp # `tcpserver` etc.
brew install -v xpdf
brew install -v xz

# Install other useful binaries.
brew install -v ack
#brew install -v exiv2
brew install -v git
brew install -v imagemagick --with-webp
brew install -v lua
brew install -v lynx
brew install -v p7zip
brew install -v pigz
brew install -v pv
brew install -v rename
brew install -v rhino
brew install -v tree
brew install -v webkit2png
brew install -v zopfli

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install -v node

# Remove outdated versions from the cellar.
brew cleanup
