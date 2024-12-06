---
template: main.html
title: Configuration/Overview
---


# Configuration Overview
All command-line configuration is stored in a yaml file under your home directory: `$HOME/.pigeonhole/config.yaml`.

Over time there will be server-side configuration that will be included in the issued JWT token.overtime

## Command-line Configuration
| Parameter &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;   | Description | Default &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |
| -------------- | --- | ------- |
| `api.base_url` | The base Url the cli will call to. This can be overridden for development or for the future self-hosted implementations | `https://api.pigeono.io` |
| `api.login_url` | Future proofing for self-hosted feature  | `https://api.pigeono.io/sso/azure/login` |
| ` auth.provider ` | The default provider the cli will use  | `azure` |
| `auth.token` | The JWT token issued by PigeonHole API. Useful for development/debugging purposes | `eyJhbGciOiJIUzI1NiIsI....` |
| `output.format` | Resource object output will be formatted as per this value. Supports `json`, `yaml`, `tsv`  | `yaml` |
| `output.logging.level` | Verbosity of logging information | `info` |
<!-- | ` _ ` | Some Text | ` _ ` | -->

## Server-side Configuration
There is no server-side configuration available at present. With the continued development, configurable features will be added over time, such as those on the current [Roadmap]s:

- Enabling the ability to receive files via web-browser
- Restriting sending to non-registered users
- Restricting file sizes




  [Roadmap]: roadmap
