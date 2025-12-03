---
title: Origins
---
- [The Problem Statement](#the-problem-statement)
  - [The Idea](#the-idea)
  - [Key Challenges](#key-challenges)
- [The Solution](#the-solution)
  - [Why an email address?](#why-an-email-address)

# The Problem Statement
As every engineers story starts - I had a problem.

Over the course of my career, quite often I continuously find myself wanting to send passwords, config files or even certificates to colleagues or third parties quickly, easily and most importantly not compromise on data security.

I often encountered secrets, like passwords, senstive configuration files or even API access tokens being copied and pasted into chat and email services like Microsoft Teams, Slack or Outlook knowing with services like the Microsoft Graph it only takes signing into a third-party site to compromise all the data you have access to. 
> I even wrote a security education tool that emphasised this problem for awareness.

## The Idea
To be able to send secrets and files of any size to any recipient straight from the command-line that enforced strict and transparent encryption.

There are a lot of tools out there trying to solve this problem already. Ones that I've used i.e. [Keybase](https://keybase.io/) and GnuPG.

The problem with these tools they often require;
- Accounts to be set up
- Require recipients to already be a member
- Key exchanges to happen manually
- No chain of trust
- Graphical Interface based apps

## Key Challenges 
I wanted to build something cross platform to foster the build once, deploy across any operating system.
I wanted to make it easy for people to consume through package managers to keep up to date.
Keep it simple and self-contained.

# The Solution
Having used many modern command line tools, I set out to build something with that similar feel yet easy to use and tied to a users' email address.

## Why an email address?
An email address is globally unique. It fosters that chain of trust where a mailbox is tied to a domain and that domain is owned by someone or an organisation.

The added benefit is email addresses are often tied to third-party services that are tied to some form of Identity Provider that provides an extra layer of trust.