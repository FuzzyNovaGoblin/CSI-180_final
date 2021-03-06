# x509
# Autogenerated from man page /usr/share/man/man1/x509.1ssl.gz
complete -c x509 -o help --description 'Print out a usage message.'
complete -c x509 -o inform --description 'This specifies the input format normally the command will expect an X509 cert…'
complete -c x509 -o outform --description 'This specifies the output format, the options have the same meaning and defau…'
complete -c x509 -o in --description 'This specifies the input filename to read a certificate from or standard inpu…'
complete -c x509 -o out --description 'This specifies the output filename to write to or standard output by default.'
complete -c x509 -o rand --description 'A file or files containing random data used to seed the random number generat…'
complete -c x509 -o writerand --description 'Writes random data to the specified file upon exit.'
complete -c x509 -o engine --description 'Specifying an engine (by its unique id string) will cause x509 to attempt to …'
complete -c x509 -o preserve_dates --description 'When signing a certificate, preserve the \\*(L"notBefore\\*(R" and \\*(L"notAfte…'
complete -c x509 -o text --description 'Prints out the certificate in text form.'
complete -c x509 -o ext --description 'Prints out the certificate extensions in text form.'
complete -c x509 -o certopt --description 'Customise the output format used with -text.'
complete -c x509 -o noout --description 'This option prevents output of the encoded version of the certificate.'
complete -c x509 -o pubkey --description 'Outputs the certificate\'s SubjectPublicKeyInfo block in \\s-1PEM\\s0 format.'
complete -c x509 -o modulus --description 'This option prints out the value of the modulus of the public key contained i…'
complete -c x509 -o serial --description 'Outputs the certificate serial number.'
complete -c x509 -o subject_hash --description 'Outputs the \\*(L"hash\\*(R" of the certificate subject name.'
complete -c x509 -o issuer_hash --description 'Outputs the \\*(L"hash\\*(R" of the certificate issuer name.'
complete -c x509 -o ocspid --description 'Outputs the \\s-1OCSP\\s0 hash values for the subject name and public key.'
complete -c x509 -o hash --description 'Synonym for \\*(L"-subject_hash\\*(R" for backward compatibility reasons.'
complete -c x509 -o subject_hash_old --description 'Outputs the \\*(L"hash\\*(R" of the certificate subject name using the older al…'
complete -c x509 -o issuer_hash_old --description 'Outputs the \\*(L"hash\\*(R" of the certificate issuer name using the older alg…'
complete -c x509 -o subject --description 'Outputs the subject name.'
complete -c x509 -o issuer --description 'Outputs the issuer name.'
complete -c x509 -o nameopt --description 'Option which determines how the subject or issuer names are displayed.'
complete -c x509 -o email --description 'Outputs the email address(es) if any.'
complete -c x509 -o ocsp_uri --description 'Outputs the \\s-1OCSP\\s0 responder address(es) if any.'
complete -c x509 -o startdate --description 'Prints out the start date of the certificate, that is the notBefore date.'
complete -c x509 -o enddate --description 'Prints out the expiry date of the certificate, that is the notAfter date.'
complete -c x509 -o dates --description 'Prints out the start and expiry dates of a certificate.'
complete -c x509 -o checkend --description 'Checks if the certificate expires within the next arg seconds and exits non-z…'
complete -c x509 -o fingerprint --description 'Calculates and outputs the digest of the \\s-1DER\\s0 encoded version of the en…'
complete -c x509 -s C --description 'This outputs the certificate in the form of a C source file.'
complete -c x509 -o trustout --description 'This causes x509 to output a trusted certificate.'
complete -c x509 -o setalias --description 'Sets the alias of the certificate.'
complete -c x509 -o alias --description 'Outputs the certificate alias, if any.'
complete -c x509 -o clrtrust --description 'Clears all the permitted or trusted uses of the certificate.'
complete -c x509 -o clrreject --description 'Clears all the prohibited or rejected uses of the certificate.'
complete -c x509 -o addtrust --description 'Adds a trusted certificate use.'
complete -c x509 -o addreject --description 'Adds a prohibited use.  It accepts the same values as the -addtrust option.'
complete -c x509 -o purpose --description 'This option performs tests on the certificate extensions and outputs the resu…'
complete -c x509 -o signkey --description 'This option causes the input file to be self signed using the supplied privat…'
complete -c x509 -o sigopt --description 'Pass options to the signature algorithm during sign or verify operations.'
complete -c x509 -o passin --description 'The key password source.'
complete -c x509 -o clrext --description 'Delete any extensions from a certificate.'
complete -c x509 -o keyform --description 'Specifies the format (\\s-1DER\\s0 or \\s-1PEM\\s0) of the private key file used …'
complete -c x509 -o days --description 'Specifies the number of days to make a certificate valid for.'
complete -c x509 -o x509toreq --description 'Converts a certificate into a certificate request.'
complete -c x509 -o req --description 'By default a certificate is expected on input.'
complete -c x509 -o set_serial --description 'Specifies the serial number to use.'
complete -c x509 -o CA --description 'Specifies the \\s-1CA\\s0 certificate to be used for signing.'
complete -c x509 -o CAkey --description 'Sets the \\s-1CA\\s0 private key to sign a certificate with.'
complete -c x509 -o CAserial --description 'Sets the \\s-1CA\\s0 serial number file to use.'
complete -c x509 -o CAcreateserial --description 'With this option the \\s-1CA\\s0 serial number file is created if it does not e…'
complete -c x509 -o extfile --description 'File containing certificate extensions to use.'
complete -c x509 -o extensions --description 'The section to add certificate extensions from.'
complete -c x509 -o force_pubkey --description 'When a certificate is created set its public key to key instead of the key in…'

