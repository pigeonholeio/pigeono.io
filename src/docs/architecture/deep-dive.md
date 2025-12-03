---
Title: Architecture Deep Dive
---

The architecture is intentionally simple and uncomplicated, yet provides the The architecture is designed with Zero Trust at the forefront with its End-to-End Encryption


![High Level Diagram](./architecture-overview.drawio)



# Object Store
The AWS S3 storage service is used in conjunction with several lesser known features.
The S3 bucket is configured to disallow any public access and access to the downloads can only be requested via the PigeonHole service via Presigned URL's.

## Pre-signed URL's

This feature enables the secure delegation to the command-line client to allow it to securely upload secrets and files to a specific destination in the object store. This also reduces the disruption the file upload and downloads 

## S3 Object Metadata

Used inconjunection with pre-signed url's, the S3 object metadata is attached to the pre-signed URL request and is included in the hashed signature for the upload. This ensures that as well as leveraging OpenPGP to protect the content from tampering, the metadata protects against tampering of the upload destination.

# Key Management Service

The Key Management Service (KMS) service is provided by AWS and leverages `Customer Managed Keys` to generate data cipher keys. Master keys are never exposed to any service and are protected with KMS policies.

