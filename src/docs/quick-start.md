---
template: main.html
title: Quick Start & Install
---

# Getting started

PigeonHole is a simple command-line tool that posts secrets securely. While I was formualting the [idea](./about/the-dea.md), I knew I wanted to build it from the grownd up to be intuitive and familiar to those who use modern command-line tooling and super easy to use.

## Installation

### Package Managers

=== "MacOS"
    === ":simple-homebrew: Brew"

        ```
        brew tap pigeonholeio/pigeonhole
        brew install pigeonholeio/pigeonhole/pigeonhole-cli
        ```

=== ":simple-linux: Linux"
    === ":simple-homebrew: Brew"

        ```
        brew tap pigeonholeio/pigeonhole
        brew install pigeonholeio/pigeonhole/pigeonhole-cli
        ```
    === ":simple-ubuntu: Apt"


    === ":simple-rockylinux: Yum"



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

=== ":material-microsoft: Windows"
    === "Chocolatey"
    Chocolatey has a mature eco-system of packages
    ```
choco install pigeonhole-cli
    ```
    === ":simple-winget: WinGet"

### Release Binaries

### Manual Install & Release Binaries

You can obtain the binaries for your platform and architecture by visiting [Releases]{:target="_blank"}.

1. Visit the [Releases]{:target="_blank"} page, find the latest release and download the binary for your architecture
2. Place the binary in a location that is in your `$PATH` environment variable
3. You should now be able to run `pigeonhole login` from the command-line

## PigeonHole Authentication

Authenticication is handled completely by OpenID Connect and your Identity Provider.
You must have a validated email address associated with your IdP or third party service.

??? tip "Tip - Request a new Identity Provider Support"
    Only Microsoft Azure is currently supported. Raise a [[FEATURE REQUEST] Identity Provider](https://github.com/planesailingio/pigeono.io/issues/3){:target="_blank"} GitHub issue to add support for your Identity Provider.

### List Supported Identity Providers

To find the list supported Identity Providers

### Signing in

To initiate the authentication flow, run;

=== "Default IdP"
    The default IdP will be shown with a green tick when running `auth list-providers` command

    ```
    pigeonhole login
    ```
=== "Specific IdP"

    The following command will list the supported list of Identity Providers;

    ``` bash
    pigeonhole auth list-providers
    ```
    Now you can use pass your preferred IdP into the `login` command as follows;

    ```
    pigeonhole login --provider github
    ```

Follow the prompts to sign in and PigeonHole will generate keys to get you ready to send your first secret!

## Send your first Secret

Simply, specify the `recipient` and `filepath` and that's it! No complicated `gpg` commands to encrypt or decrypt, all that is handled for you.

```bash
    pigeonhole secret send --recipient user@domain.com --filepath ./myfile
```

That's it!

## Retrieving a Secret

??? note "List Received Secrtes"
    To find a list of secrets you've been sent use the `secret list` command;

    ```
    pigeonhole secret list
    ```

Once you know the secret reference of the secret you want to retrieve;

```bash
    pigeonhole secret collect --reference <reference>
```

You can also use the `--filepath` to override the path used to decrypt and extract your secret

## Next Steps

Take a look at [Managing Secrets](/secrets/manage) to find out more about managing secretes like;

- Sending One Time Secrets
- Secure file shredding
- Sending Secrets with a custom expiry
- Deleting Secrets
- Send and pipe from stdin

  [Releases]: https://github.com/pigeonholeio/pigeonhole-cli/releases
