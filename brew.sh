#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install -v moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install -v findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install -v gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install -v wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install -v ringojs
brew install -v narwhal

<<<<<<< 0e18dcf272a647edb2898b9f58591d6a0bdb004e
# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli

=======
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

>>>>>>> Added verbos flag cause I like seeing the configs happen :P
# Remove outdated versions from the cellar.
brew cleanup
