---
Title: Managing Secrets
---
General help with parameters are made available in the cli tool itself as these will change over time with new features being added.    
There are also handy aliases to help making using PigeonHole that little bit quicker.

``` bash
pigeonhole help
```


## Send a Secret
Sending secrets is super easy.

### Sending via File Path 
``` bash
pigeonhole secrets send --recipient recipient@domain.com --filepath ./myfile
```

### Sending via StdIn
``` bash
echo "Some helpful output" | pigeonhole secrets send --recipient recipient@domain.com
```


!!! tip "Secret Send Alias"
    Sending secrets can be shortened using `pigeonhole s s` e.g.
    ```
    pigeonhole s s -r recipient@domain.com -f ./myfile
    ```
## List Secrets
``` bash
pigeonhole secrets send --recipient recipient@domain.com
```
!!! tip "Secret List Alias"
    Listing secrets can be shortened using `pigeonhole s ls` or `pigeonhole s l` e.g.
    ```
pigeonhole s ls
    ```

## Download Secrets
Find the secret reference you want to retrieve and decrypt using the `secret list` command then;
``` bash
pigeonhole secrets get --reference <reference>
```
!!! warning "Disappearing Secrets"
    By default secrets you download will automatically be deleted from the PigeonHole service.
    To retain the secret in order to download them multiple times or at a future date add the `--keep` flag.


!!! tip "Secret Download Alias"
    Downloading secrets can be shortened using `pigeonhole s g` or `pigeonhole s g` e.g.
    ```
    pigeonhole s g -r <reference>
    ```
## Deleting Secrets
Find the secret reference you want to retrieve and decrypt using the `secret list` command then;
``` bash
pigeonhole secrets get --reference <reference>
```
!!! tip "Secret Download Alias"
    Downloading secrets can be shortened using `pigeonhole s g` or `pigeonhole s g` e.g.
    ```
    pigeonhole s g -r <reference>
    ```
