---
title: Ephemeral & Transient Keys
---

The Transient Key feature in PigeonHole provides a secure, temporary encryption mechanism for sending secrets to recipients who have not yet registered their permanent public key bridging the gap between usability and zero-trust security.   

!!! tip  
    For the best experience (and to minimise use of ephemeral keys), recipients should sign in to PigeonHole **before** you send them a secret.

# Overview
By default, when a user's public key is known to **PigeonHole**, it is used for encryption.

When sending a secret to a recipient **not yet known** to PigeonHole, an **ephemeral (transient) key** is used instead.  
These keys are dynamically generated and replaced with the recipient's permanent public key once they sign in for the first time. At that point, PigeonHole securely re-encrypts the data with the new key.


Multiple safeguards are in-place ensuring the security of the **Transient Key** feature — even from PigeonHole itself.

The transient key process is seamless and secure:

1. Keys are securely generated and anonymised.
2. Data is encrypted **client-side** with an ephemeral public key.
3. The recipient signs in and uploads their permanent public key.
4. PigeonHole re-encrypts the data with the new key.
5. The recipient is notified that their secret is ready to download.

If you know a more secure approach, we’d love to hear from you.

---

# Deep Dive

## Secure Key Generation

- Keys are generated **in-memory** on dedicated, isolated hosts.  
- An ephemeral key is created using the **GnuPG** library.  
- The key is encrypted using a **KMS** service, anonymised, and stored without any reference to the user or secret.  
- This key is retained until the recipient signs in.  
- Generation typically takes a few seconds.

!!! note  
    Transient keys are stored using a randomly generated GUID as the filename, ensuring no user or secret metadata is exposed.

---

## Client-Side Data Encryption

- The ephemeral public key is transmitted back to the sender’s client.  
- The sender’s client encrypts the data locally, on behalf of the intended recipient.  
- The encrypted data is then pushed to PigeonHole’s secure storage.  

!!! info  
    Recipients receive an **email notification** with instructions on signing in to retrieve the secret.

---

## Key Rotation Process

Once the recipient signs in and uploads their permanent public key, the system:

1. Downloads the encrypted data into a secure environment.  
2. Decrypts it in-memory, then re-encrypts it with the new key.  
3. Stores the newly encrypted data back in secure storage.  
4. Notifies the recipient that their secret is ready.

---
## Separation of Concerns

In addition to the safeguards provided by PigeonHole's **distributed architecture**, transient keys are further protected by using randomly generated GUIDs.  
These identifiers are virtually impossible to link back to the encrypted senders, recipients nor secrets they protect.

### Strict Storage Policies
Access to storage is tightly controlled. Only services that explicitly require it are granted permissions, with read/write rights restricted to specific storage paths at a granular level.