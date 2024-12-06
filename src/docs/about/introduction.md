---
title: Origins
---
# About PigeonHole
## The Idea

I am a DevSecOps Engineer, platform engineer, Solution and Technical Security Architect and I love dabbling around on the command line with new tech.    
I learn by experimentation and seeing things in action - better yet, I enjoy playing with tech and at some point over the last few years I had a new goal - learn Golang.

## The Problem Statement
As I said above, I learn by doing.    

Over the course of my career, quite often I continuously find myself wanting to send passwords, config files or even certificate private keys to colleagues or third parties etc. quickly, easily and most importantly not compromise data security.

Yes - I could have simply copied and pasted the text into a Teams or Slack chat but do we trust the cloud and SaaS providers? Not me!

Every security engineer will lean towards OpenPGP and GPG in nature and it solves the problem. However, the problem is a lot of people aren't aware of it let alone have got the cli tool installed nor GPG keys configured.

There are a lot of tools out there solving this problem already. Ones that I even use i.e. [Keybase](https://keybase.io/) but they require
- Accounts to be set up
- Require recipients to already be a member and send you their public key
- GUI based apps
- GPG keys generated with no real way to provide trust nor tie to an online identity

As an engineer that works primarily with an IDE and in the terminal, context switching out of this is too much. I then thought how would I do it and then the realisation of marrying this idea with wanting to learn Go was born.

## Requirements
So I set out on a journey;
I found 