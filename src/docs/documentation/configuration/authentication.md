---
template: main.html
title: Authentication
---
# Command-Line Documentation

PigeonHole authentication is designed to be as seamless as possible while also keeping the service secure.
The best way to achieve this is to provide Single Sign-On (SSO) as standard with no username/passwords stored in PigeonHole.

SSO is extremely important and therefore at the heart of PigeonHole.

- [Command-Line Documentation](#command-line-documentation)
  - [Command Aliases and Short-Hand](#command-aliases-and-short-hand)
  - [Authentication Identity Providers](#authentication-identity-providers)
  - [Secret Management](#secret-management)
    - [Sending a Secret](#sending-a-secret)
      - [By Filepath](#by-filepath)
      - [By Stdin](#by-stdin)
    - [Secret Expiry](#secret-expiry)
    - [One Time Secrets](#one-time-secrets)
    - [Transient \& Ephemeral Keys](#transient--ephemeral-keys)


## Command Aliases and Short-Hand
PigeonHole is built using the Golang [Cobra] library. To reduce the effort writing commands you can use command aliases.

To find both command and parameter short aliases use `--help` on the command and they can easily be found.

```
pigeonhole secret send --help
Post a secret securely.

Usage:
  pigeonhole secret post [flags]

Aliases:
  post, send, drop, ship, s, p

Flags:
  -x, --expiry string        The expiration of the secret in time duration (default "7d")
  -f, --filepath string      A path to a file or folder to send
  -h, --help                 help for post
  -1, --one-time-secret      Ensure a one time secret - deletes the secret after one retrieval (Default: false)
  -r, --recipient strings    Email addresses of the recipients (add multiple or separate with comma)
  -e, --use-ephemeral-keys   manage the use of ephemeral keys (Default: false)

Global Flags:
      --config string   config file (default is $HOME/.pigeonhole/config.yaml)
  -v, --verbose         Display more verbose output in console output. (default: false)
```

## Authentication Identity Providers
    ### List IdP's
        ```bash
        pigeonhole auth list-providers
        ```
    ### Sign in
    === "Sign-in with default IdP"

        ```bash
        pigeonhole login
        ```

    === "Sign-in with specific IdP"

        ```bash
        pigeonhole login --provider github
        ```
    Follow the prompts

## Secret Management

In this section you will learn how to send, list and delete secrets

### Sending a Secret

#### By Filepath

#### By Stdin

### Secret Expiry

### One Time Secrets
    A one time secret, will automatically delete the secret once the user has retrieved the secret 


### Transient & Ephemeral Keys
    ??? note "Reminder"

        Ephemeral keys are used to send secrets to recipients that aren't registered yet. PigeonHole will prompt you if a user has a transient key.

    ```bash
        pigeonhole secret send --use-ephemeral-keys

    ```


!!! warning "Missing Identity Provider?"
    Vote for your Identity Provider to be prioritised on the [[FEATURE REQUEST] Identity Provider](https://github.com/planesailingio/pigeono.io/issues/3){:target="_blank"} GitHub issue



    [Cobra](https://www.google.com)