---
template: main.html
title: Authentication
---
# Single Sign-On & Authentication

## Overview
PigeonHole authentication is designed to be as seamless as possible while also keeping the service secure.
The best way to achieve this is to provide Single Sign-On (SSO) as standard with no username/passwords stored in PigeonHole.

SSO is extremely important and therefore at the heart of PigeonHole.

## Authentication Flow
PigeonHole uses standard OAuth/OpenID Connect authentication flows:
![SSO Authentication Flow](/assets/images/auth-flow.png){align=center}

1. User initiates the login process via the command-line `pigeonhole login azure`. A browser tab is opened and the cli opens a port and listens for the browser response
2. The PigeonHole API returns a 302 response directing the user to default Azure AD Application
3. The user logs into and approves the application
4. The browser is directed to a PigeonHole API endpoint
5. Carrying the OAuth `authorization code` the browser hits the Azure PigeonHole API callback endpoint
6. The PigeonHole API service calls out to the identity provider exchanging the short-lived `auth code` for an ID and Access token.
7. On successful validation of the `auth code` the Identity Provider issues an Identity Provider Id and Access Token
8. Information from the IdP tokens is added to the claims on the PigeonHole-issued JWT token

On subsequent API calls from the command-line the PigeonHole-issued token is added in the `Authorization: Bearer` HTTP header.

### Protocol - OpenID Connect
SAML2.0 will not be supported as the majority of Identity Providers support the modern OpenID Connect (OAuth2) protocol.

## Supported Identity Providers 
### Azure/Microsoft - Default provider
A global Azure AD application exists with basic permissions such that companies do not have to pre-authorize the Azure AD application.

This means users do not need to worry about having an Azure global administrator of the Azure tenancy to approve the app. Users can login with basic OAuth scopes.

To login with Azure/Microsoft as the Identity Provider, run:
``` bash
pigeonhole login azure
```
or more simply:
``` bash
pigeonhole login
```

!!! warning "Missing Identity Provider?"
    Vote for your Identity Provider to be prioritised on the [[FEATURE REQUEST] Identity Provider](https://github.com/planesailingio/pigeono.io/issues/3){:target="_blank"} GitHub issue
