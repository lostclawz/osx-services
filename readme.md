# OSX Services

## Setup

* install [Homebrew](https://brew.sh/):

      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)

* install [Lame](http://lame.sourceforge.net/): `brew install lame`
* install [WavPack](http://www.wavpack.com/): `brew install wavpack`
* install [Sublime Text](https://www.sublimetext.com/): `brew install sublime-text`
 
## Services
Move selections to your OSX services folder: `~/Library/Services/`

* ### Create Alias on Desktop
  Creates an alias to the folder or file on the desktop.

* ### Open with Sublime
  Opens file or folder in [Sublime Text](https://www.sublimetext.com/)

* ### Make 320 kbps MP3
  Using [Lame](http://lame.sourceforge.net/), Converts each selected audio file into an mp3 with 320 kbps bitrate.

      export PATH=/usr/local/bin:$PATH
      for f in "$@"
      do
         lame -b 320 "$f"
      done

* ### Convert to WavPack
  Converts each selected audio file into a high quality, lossless, [WavPack](http://www.wavpack.com/) file. The original file will be removed.

      export PATH=/usr/local/bin:$PATH
      for f in "$@"
      do
          wavpack -dh "$f"
      done

   