# Enterprise Authentication out of the box
PigeonHole is built on top of OpenID Connect, (OAuth, to externalise the authentication and credential handling. In turn provides a cryptographic chain of trust where PigeonHole ties an email address to their cryptographic identity (a public key).    

This model ensures when you send a secret to a recipient, only that **person** can decrypt it. You can't infer this trust with only OpenPGP alone - PigeonHole takes GPG a step further!

## Supported Identity Providers
While PigeonHole is built from the ground up to be engineer focused and trust OpenID Connect Identity Providers, additional social connectors are also supported;

PigeonHole currently supports;
- Microsoft Identities
  - Organisation (Entra ID, Work and School) and Personal accounts
- GitHub
- Gitlab


!!! note
    You can find out how to install and sign in to PigeonHole in the [Quick Start](../quick-start.md) guide
