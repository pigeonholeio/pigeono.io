---
template: main.html
title: Quick Start & Install
---
# Getting started
<!-- !!! note "Thank you for checking out PigeonHole!"
    Firstly, thank you for your support and simply using the tool! It's this activity that will keep PigeonHole going.   
    Secondly, PigeonHole is still under active development. Go take a look at the [Roadmap] to see the ideas and features that are being considered - go vote and have your input! -->


Pigeonhole is a simple yet super-secure cli tool to
transfer secrets and is entirely built for those
who live and are familiar with the command-line.

## Installation

Binaries are distributed directly and via several package managers.

| Operating System      | Description                          |
| ----------- | ------------------------------------ |
| :material-apple: MacOS       |  [Brew](#macos), [Shell](#__tabbed_1_2)  |
| :material-linux: Linux       |  [Brew](#linux), [Shell](#__tabbed_2_2) |
| :material-microsoft: Windows    |  [WinGet](#windows), [WinGet](#__tabbed_3_1), [Shell](#__tabbed_3_2) |
| :material-bash: General    |  [Raw Binaries](#manual-download) |

!!! tip "Request a new Package Manager"
    Raise a [[FEATURE REQUEST]](https://github.com/pigeonholeio/pigeonhole-cli/issues/new){:target="_blank"} to add support for another package manager - which package manager do you use?

### MacOS

Install [Brew]{:target="_blank"} if you haven't already.

=== ":material-apple: Brew"

    ``` bash
    brew install pigeonholeio/pigeonhole/pigeonhole-cli
    ```
=== ":material-bash: Shell (Bash)"
    The below script will work out which architecture your machine runs on and will download the relevant binary and will attempt to install it to `/usr/local/bin` with sudo.
    ```
    /bin/bash -c "$(curl -fsSL https://pigeono.io/assets/install.sh)"
    ```

    Find a full list of releases below in the [Manual Download](#manual-download) section.

### Linux


=== ":material-bash: Brew"
    !!! success "Install Brew on Linux?"
        Yes you can! Go ahead and give [Brew]{:target="_blank"} a try on Linux - it just doesn't support casks.    

    ``` bash
    brew install pigeonholeio/pigeonhole/pigeonhole-cli
    ```

=== ":material-bash: Shell (Bash)"
    The below script will work out which architecture your machine runs on and will download the relevant binary and will attempt to install it to `/usr/local/bin` with sudo.
    ```
    /bin/bash -c "$(curl -fsSL https://pigeono.io/assets/install.sh)"
    ```

    Find a full list of releases below in the [Manual Download](#manual-download) section.

  
### Windows
=== ":fontawesome-brands-windows: WinGet"
    !!! tip "Work in Progress"
        I'm currently working on a Winget and PowerShell installer. They should be here soon!
      

=== ":fontawesome-solid-terminal: Terminal (PowerShell)"
    !!! tip "Coming soon"
        I'm currently working on the Windows installers. They should be here soon!
      
=== ":fontawesome-brands-windows: Manual Install"
    Find the Windows binaries are hosted and accessbile directly on the [Releases] page.
    
    !!! tip "Work in Progress"
        I'm currently working on a Winget and PowerShell installer. They should be here soon!
    

### Manual / Download
You can obtain the binaries for your platform and architecture by visiting [Releases].    

1. Visit the [Releases]{:target="_blank"} page, find the latest release and download the binary for your architecture
2. Place the binary in a location that is in your `$PATH` environment variable
3. You should now be able to run `pigeonhole login` from the command-line

## CLI Auto-Completion Script
It's handy to have the shell auto-completion installed for your shell to make using cli tools easier.   
To find out what shells are supported, run the following in your terminal.
``` bash
pigeonhole completion
```
Then run the command relevant for your shell e.g. Take ZSH as an example. Add the completion script output to your ZSH Profile:
``` bash
pigeonhole completion zsh >> ~/.zshrc
source ~/.zshrd
```

## Sign In

Signing into the cli tool is straight forward using your Identity Provider.
??? tip "Tip - Request a new Identity Provider Support"
    Only Microsoft Azure is currently supported. Raise a [[FEATURE REQUEST] Identity Provider](https://github.com/planesailingio/pigeono.io/issues/3){:target="_blank"} GitHub issue to add support for your Identity Provider.    

Simply run;
``` bash
pigeonhole login
```
The tool will prompt to you, follow the instructions then it will generate GPG keys for you if you haven't got them created.


## Send your first secret
Simply, specify the `recipient` and `filepath` and that's it!
``` bash
pigeonhole secrets send --recipient user@domain.com --filepath ./somefile
```

## Next Steps
Follow the [Managing Secrets](/secrets/manage) section to find out more about managing secretes like;    
- Listing    
- Downloading    
- Deleting    
- Send and pipe from stdin

  [Roadmap]: /roadmap/v1
  [Tor]: https://www.torproject.org
  [Releases]: https://github.com/pigeonholeio/pigeonhole-cli/releases
  [Brew Install]: https://brew.sh
  [Brew]: https://brew.sh
  [Journey]: /journey
