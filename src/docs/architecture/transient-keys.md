---
title: Ephemeral & Transient Keys
---
# Transient Keys Deeper Dive
 Transient Keys are a feature in PigeonHole to provide a user friendly, temporary but secure encryption mechanism for sending secrets to recipients who have not yet signed in - bridging the gap between usability and zero-trust security.   

 PigeonHole takes data security seriously and therefore the use of Transient Keys are only used in [Confidential Computing](#secure-enclaves) secure enclave.


!!! tip  
    For the the ultimate security posture, recipients should sign in to PigeonHole **before** you send them a secret to ensure a fully trusted key exchange can take place.


- [Transient Keys Deeper Dive](#transient-keys-deeper-dive)
  - [Transient Key Generation \& Storage](#transient-key-generation--storage)
  - [Recipient Key Exchange](#recipient-key-exchange)
  - [Secret Re-Encryption Process](#secret-re-encryption-process)
  - [Separation of Concerns](#separation-of-concerns)
  - [Secure Enclaves](#secure-enclaves)




By default, when a user's public key is known to **PigeonHole**, it is used for encryption.

When sending a secret to a recipient **not yet known** to PigeonHole, an **ephemeral (transient) key** is securely generated and issued on behalf of that user.

## Transient Key Generation & Storage


`Transient key` content is split and securely stored using industry standard best practice envelope encryption.

`Transient keys` are generated using the OpenPGP libraries maintained by ProtonMail and stored separately to the secret and file cipher data.

## Recipient Key Exchange

Upon a user signing into PigeonHole, the users' client-side generated keys validated and uploaded. On uploading of these keys where `transient keys` are found, these are rotated and secrets re-encrypted with the users' new keys.

Multiple safeguards are in-place ensuring the security of the **Transient Key** feature — even from PigeonHole itself.


## Secret Re-Encryption Process

The transient key rotation is seamless and secure.

1. The recipient has been sent a notification
2. Recipeint signs into PigeonHole and new keys are uploaded
3. PigeonHole triggers re-encrypion of the secrets encrypted by the `transient key`

!!! note

    Data is re-encrypted through the use of Golang streams between functions and therefore means no unencrypted data reaches the disks the service runs on.

    Coupled with [Confidential Computing](#secure-enclaves)

## Separation of Concerns

In addition to the safeguards provided by PigeonHole's **distributed architecture**, transient keys are further protected by obsfacating and anonymising techniques with UUID's.

These identifiers are virtually impossible to brute-force and trace back to the encrypted senders, recipients or secrets they protect.

## Secure Enclaves

PigeonHole secure enclaves comes in the form of Confidential Computing, providing all memory and disk usage with secure AES256 encryption.