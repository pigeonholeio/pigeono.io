# Enterprise Authentication out of the box
PigeonHole, like any other Enterprise app, is designed to use an Identity Provider.    

PigeonHole leverages OpenID Connect to externalise the authentication and credential handling. This provides a cryptographic chain of trust where PigeonHole ties a users email address (their identity) to a cryptographic public key.    
Following this model ensures if you send a secret to a particular email address, only that **person** can decrypt it. With only GPG, you can't infer this trust.

## Supported Identity Providers
Currently only Microsoft Azure is supported.    

However, any compliant OpenID Connect (OIDC) Identity Provider is supportable.    
Raise a [[FEATURE REQUEST] Identity Provider](https://github.com/pigeonholeio/pigeonhole-cli/issues/new){:target="_blank"} to enable it.

There is a plan to support the following however it is based on demand;    
- Okta    
- Google    
- Keycloak    
