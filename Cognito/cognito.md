# AWS Cognito



### Cognito Identity Pools (Federated Identities):

- used to get identities for "users" so they obtain temporary AWS creantials.
- your identity pool can include:
  - Public providers(Login with Amazon, Facebook, Google, Apple)
  - uders in an cognito user pool
  - OpenID Connect Providers & SAML Identity providers
  - Developer Authenticated Identities (custom login users) 
  - Cognito Identity Pools allow for unauthenticated (guest) access.
- users can access AWS services directly using the API_Gateway

**IAM Roles:**

- Default IAM roles for authenticated and guest users
- Define rules to choose the role for each iser based on theuser ID
- partition your users access using **policy variables**
- IAM credentials are obtained by Cognito Identity Pools through STS
- The roles must have a trust policy of cognito identity pool to work.