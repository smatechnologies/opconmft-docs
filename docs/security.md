# Security
OpConMFT supports both connection-level security and file-level security. 

When connecting to a secure site via SFTP, FTPS, or HTTPS the transmitted data is encrypted on one end and automatically decrypted on the other end.

OpConMFT also supports using PGP to encrypt and decrypt individual files. PGP encrypted files may be transferred via either normal or secure connections. Most servers 
are not able to automatically decrypt PGP encrypted files. If you need this functionality consider using OpConMFT Server software on the remote site.

## Supported Encryption Technologies
OpConMFT includes support for a number of different encryption technologies:

- SSL (Secure Socket Layers)
- TLS (Transport Layer Security) - A modern replacement for SSL
- SSH (Secure Shell)
- PGP (Pretty Good Privacy)
- ZIP
- CMS (Cryptographic Message Syntax)

### SSL/TLS Encryption
OpConMFT supports the following versions of SSL/TLS when connecting with the FTPS or HTTPS protocols:

- SSL 3.0
- TLS 1.0
- TLS 1.1
- TLS 1.2 (most recent version of TLS as of 2018)

**Perfect Forward Secrecy**

Without Perfect Forward Secrecy (PFS), if an adversary manages to compromise a server's private key, he will be able to decrypt any secure communications that were 
previously monitored and recorded by that adversary at any time in the past. Perfect Forward Secrecy is a property of certain modern ciphers which fully eliminates 
this risk through the use of additional, temporary keys that cannot be obtained by any eavesdropper. 

**OpConMFT supports Perfect Forward Secrecy by providing a large collection of PFS-enabled ciphers, including**

- DHE-RSA-AES128-GCM-SHA256
- DHE-RSA-AES128-SHA
- DHE-RSA-AES128-SHA256
- DHE-RSA-AES256-GCM-SHA384
- DHE-RSA-AES256-SHA
- DHE-RSA-AES256-SHA256
- DHE-RSA-CAMELLIA128-SHA
- DHE-RSA-CAMELLIA256-SHA
- DHE-RSA-SEED-SHA
- ECDHE-RSA-AES128-GCM-SHA256
- ECDHE-RSA-AES128-SHA
- ECDHE-RSA-AES128-SHA256
- ECDHE-RSA-AES256-GCM-SHA384
- ECDHE-RSA-AES256-SHA
- ECDHE-RSA-AES256-SHA384
- ECDHE-RSA-DES-CBC3-SHA
- ECDHE-RSA-RC4-SHA

**Supported HMACs (hash-based message authentication code)**

OpConMFT includes support for several different HMAC algorithms. A particular HMAC may only be available for certain ciphers, and vice-versa. 
The complete list of HMAC algorithms is as follows:

- MD5
- SHA
- SHA256
- SHA384

**Supported Ciphers**

OpConMFT includes support for all 106 separate ciphers provided by OpenSSL 1.1.1e for use with TLS. Each of these ciphers can be paired with a limited number of 
HMAC algorithms, making for a total of 130 cipher + HMAC combinations. The complete cipher list is as follows:

- ECDHE-RSA-AES256-GCM-SHA384
- ECDHE-ECDSA-AES256-GCM-SHA384
- ECDHE-RSA-AES256-SHA384
- ECDHE-ECDSA-AES256-SHA384
- ECDHE-RSA-AES256-SHA
- ECDHE-ECDSA-AES256-SHA
- SRP-DSS-AES-256-CBC-SHA
- SRP-RSA-AES-256-CBC-SHA
- SRP-AES-256-CBC-SHA
- DH-DSS-AES256-GCM-SHA384
- DHE-DSS-AES256-GCM-SHA384
- DH-RSA-AES256-GCM-SHA384
- DHE-RSA-AES256-GCM-SHA384
- DHE-RSA-AES256-SHA256
- DHE-DSS-AES256-SHA256
- DH-RSA-AES256-SHA256
- DH-DSS-AES256-SHA256
- DHE-RSA-AES256-SHA
- DHE-DSS-AES256-SHA
- DH-RSA-AES256-SHA
- DH-DSS-AES256-SHA
- DHE-RSA-CAMELLIA256-SHA
- DHE-DSS-CAMELLIA256-SHA
- DH-RSA-CAMELLIA256-SHA
- DH-DSS-CAMELLIA256-SHA
- AECDH-AES256-SHA
- ADH-AES256-GCM-SHA384
- ADH-AES256-SHA256
- ADH-AES256-SHA
- ADH-CAMELLIA256-SHA
- ECDH-RSA-AES256-GCM-SHA384
- ECDH-ECDSA-AES256-GCM-SHA384
- ECDH-RSA-AES256-SHA384
- ECDH-ECDSA-AES256-SHA384
- ECDH-RSA-AES256-SHA
- ECDH-ECDSA-AES256-SHA
- AES256-GCM-SHA384
- AES256-SHA256
- AES256-SHA
- CAMELLIA256-SHA
- PSK-AES256-CBC-SHA
- ECDHE-RSA-AES128-GCM-SHA256
- ECDHE-ECDSA-AES128-GCM-SHA256
- ECDHE-RSA-AES128-SHA256
- ECDHE-ECDSA-AES128-SHA256
- ECDHE-RSA-AES128-SHA
- ECDHE-ECDSA-AES128-SHA
- SRP-DSS-AES-128-CBC-SHA
- SRP-RSA-AES-128-CBC-SHA
- SRP-AES-128-CBC-SHA
- DH-DSS-AES128-GCM-SHA256
- DHE-DSS-AES128-GCM-SHA256
- DH-RSA-AES128-GCM-SHA256
- DHE-RSA-AES128-GCM-SHA256
- DHE-RSA-AES128-SHA256
- DHE-DSS-AES128-SHA256
- DH-RSA-AES128-SHA256
- DH-DSS-AES128-SHA256
- DHE-RSA-AES128-SHA
- DHE-DSS-AES128-SHA
- DH-RSA-AES128-SHA
- DH-DSS-AES128-SHA
- DHE-RSA-SEED-SHA
- DHE-DSS-SEED-SHA
- DH-RSA-SEED-SHA
- DH-DSS-SEED-SHA
- DHE-RSA-CAMELLIA128-SHA
- DHE-DSS-CAMELLIA128-SHA
- DH-RSA-CAMELLIA128-SHA
- DH-DSS-CAMELLIA128-SHA
- AECDH-AES128-SHA
- ADH-AES128-GCM-SHA256
- ADH-AES128-SHA256
- ADH-AES128-SHA
- ADH-SEED-SHA
- ADH-CAMELLIA128-SHA
- ECDH-RSA-AES128-GCM-SHA256
- ECDH-ECDSA-AES128-GCM-SHA256
- ECDH-RSA-AES128-SHA256
- ECDH-ECDSA-AES128-SHA256
- ECDH-RSA-AES128-SHA
- ECDH-ECDSA-AES128-SHA
- AES128-GCM-SHA256
- AES128-SHA256
- AES128-SHA
- SEED-SHA
- CAMELLIA128-SHA
- IDEA-CBC-SHA
- IDEA-CBC-MD5
- RC2-CBC-MD5
- PSK-AES128-CBC-SHA
- ECDHE-RSA-RC4-SHA
- ECDHE-ECDSA-RC4-SHA
- AECDH-RC4-SHA
- ADH-RC4-MD5
- ECDH-RSA-RC4-SHA
- ECDH-ECDSA-RC4-SHA
- RC4-SHA
- RC4-MD5
- RC4-MD5
- PSK-RC4-SHA
- ECDHE-RSA-DES-CBC3-SHA
- ECDHE-ECDSA-DES-CBC3-SHA
- SRP-DSS-3DES-EDE-CBC-SHA
- SRP-RSA-3DES-EDE-CBC-SHA
- SRP-3DES-EDE-CBC-SHA
- EDH-RSA-DES-CBC3-SHA
- EDH-DSS-DES-CBC3-SHA
- DH-RSA-DES-CBC3-SHA
- DH-DSS-DES-CBC3-SHA
- AECDH-DES-CBC3-SHA
- ADH-DES-CBC3-SHA
- ECDH-RSA-DES-CBC3-SHA
- ECDH-ECDSA-DES-CBC3-SHA
- DES-CBC3-SHA
- DES-CBC3-MD5
- PSK-3DES-EDE-CBC-SHA
- EDH-RSA-DES-CBC-SHA
- EDH-DSS-DES-CBC-SHA
- DH-RSA-DES-CBC-SHA
- DH-DSS-DES-CBC-SHA
- ADH-DES-CBC-SHA
- DES-CBC-SHA
- EXP-EDH-RSA-DES-CBC-SHA
- EXP-EDH-DSS-DES-CBC-SHA
- EXP-ADH-DES-CBC-SHA
- EXP-DES-CBC-SHA
- EXP-RC2-CBC-MD5
- EXP-ADH-RC4-MD5
- EXP-RC4-MD5

**SSL/TLS Implementation**

OpConMFT's SSL/TLS implementation is OpenSSL 1.1.1e, which is the most current version as of this writing. Implementation details of OpenSSL are beyond the scope of this document. 
Please visit openssl.org for any further details you might need.

### SSH Encryption
SFTP stands for "SSH File Transfer Protocol." Like its name suggests, it is a file transfer protocol (similar to FTP) that operates inside an SSH (secure shell) session. The SSH 
protocol, and by extension OpConMFT's implementation of SSH/SFTP, offers a number of encryption and encryption-related features to ensure the security of your data. When an initial 
connection is established to the server, both client and server must agree to use the same ciphers and algorithms.

**Supported Key-Exchange methods**

- diffie-hellman-group1-sha1
- diffie-hellman-group14-sha1
- diffie-hellman-group-exchange-sha1
- diffie-hellman-group-exchange-sha256
- ecdh-sha2-nistp256
- ecdh-sha2-nistp384
- ecdh-sha2-nistp521

**Supported Ciphers**

- aes128-ctr
- aes192-ctr
- aes256-ctr
- aes256-cbc
- rijndael-cbc@lysator.liu.se
- aes192-cbc
- aes128-cbc
- blowfish-cbc
- arcfour128
- arcfour
- cast128-cbc
- 3des-cbc

**Supported HMACs (hash-based message authentication code)**

- SHA1
- SHA1-96
- SHA2-256
- SHA2-512
- MD5
- MD5-96
- RIPEMD-160 

### PGP Encryption 
OpConMFT supports encryption and decryption of files using PGP (Pretty Good Privacy) through the PGPENCRYPT and PGPDECRYPT commands. PGP cryptography enables you to protect 
sensitive information when it is stored locally or transmitted across the Internet, so that it cannot be read by anyone except the intended recipient. OpConMFT's PGP implementation 
includes support for the following features:

**Supported Symmetric Ciphers**

- AES (128-bit)
- AES192
- AES256
- IDEA
- CAST5
- Blowfish
- Twofish
- 3DES

**Supported Key Algorithms**

- RSA (1024-, 2048-, and 4096-bit)
- DSA (1024-, 2048-, and 4096-bit)
- Elgamal

**Supported Hash Methods**

- MD5
- SHA1
- RIPEMD160
- SHA 256-bit, 384-bit, 512-bit
- SHA-224

**Supported Compression Algorithms**

- Uncompressed
- ZIP
- ZLIB
- BZIP2

OpConMFT can generate its own PGP keys, so no additional software is needed when working with PGP encryption. When generating a new PGP key with OpConMFT you can choose between the 
RSA or the DSA (aka DSADH, aka DSS) algorithms, at either 1024-, 2048-, or 4096-bit lengths. By default, files encrypted OpConMFT use the AES(-128) cipher (or IDEA in PGP 2.6 
compatibility mode), ZIP compression, and SHA-1 hash (or MD5 in compatibility mode). Only the IDEA cipher is supported in PGP 2.6 compatibility mode.

### ZIP Encryption
OpConMFT supports password-protected encrypted ZIP files through use of the ZIP and UNZIP commands. Two encryption ciphers are supported with ZIP: the original PKZIP encryption scheme 
and AES-256. The original PKZIP encryption scheme is now known to be insecure, but it has an advantage that most ZIP programs are able to decrypt files using this cipher, if provided 
with the correct password. AES-256, in contrast, is an extremely secure, military-grade cipher, and though not all ZIP programs are able to understand AES-256-encrypted ZIP files, 
most commercial programs do support this cipher, including current versions of WinZip (since 2004), and WinRAR (since 2013).  When more than a casual layer of security is necessary, 
a ZIP file should either be encrypted with AES-256 or else protected by an additional layer of encryption such as PGP (for data-at-rest) or TLS (for data-in-transit).            

### CMS Encryption
OpConMFT supports encrypted CMS (Cryptographic Message Syntax) files through use of the CMSENCRYPT  and CMSDECRYPT commands. Both commands support handling signed, encrypted, and 
signed+encrypted CMS envelopes. Symmetric passphrase support is also available. 

**The encryption ciphers offered through CMS are as follows**

- des3 (default)
- des
- seed
- rc2-40
- rc2-128
- rc2-64
- aes128
- aes192
- aes256
- camellia128
- camellia192
- camellia256