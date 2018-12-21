# OSX Services
A set of useful context menu services for OSX.

## Setup
Dependencies for each service are listed under the service name, the recommended method uses [Homebrew](https://brew.sh/). Install with:

      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)


## Services
Double click to install into your OSX services folder: `~/Library/Services/`. The automator workflow file in your cloned repo will be removed automatically by OSX. To restore in your repository run `git reset --hard`.


### Audio Services

* **Make 320 kbps MP3** converts each selected audio file into an mp3 with 320 kbps bitrate using [Lame](http://lame.sourceforge.net/) (install with `brew install lame`).

      export PATH=/usr/local/bin:$PATH
      for f in "$@"
      do
         lame -b 320 "$f"
      done

* **Convert to WavPack** converts each selected audio file into a high quality, lossless, [WavPack](http://www.wavpack.com/) file (install with `brew install wavpack`). The original file will be removed.

      export PATH=/usr/local/bin:$PATH
      for f in "$@"
      do
          wavpack -dh "$f"
      done
   
  Also included is a **Convert from WavPack** service which converts a `.wv` file back to `.wav` (deleting original file).

* **Convert to Flac** converts each selected audio file into a lossless [Flac](https://xiph.org/flac/) file (install with `brew install flac`). The original file will be removed.

      for f in "$@"
      do
         flac --delete-input-file "$f"
      done

  Also included is a **Convert from WavPack** service which converts a `.wv` file back to `.wav` (deleting original file).


### Utility Services

* **Create Alias on Desktop** creates an alias to the folder or file on the desktop.

* **Open with Sublime** opens selected file or folder in [Sublime Text](https://www.sublimetext.com/) (install with `brew install sublime-text`).


## To Do

### **Convert to Wav**

-  Run a single automator script to conditionally decode flac or wavpack files.
