#!/bin/bash
#This is a File Encrypter & Decrypter 

echo "This is a simple file encrypter/decrypter"
echo "Please choose what you want to do:"

choice="Encrypt Decrypt"

select option in $choice; do
    if [ "$REPLY" = 1 ];
then
        echo "You have selected Encryption"
        echo "Please enter the file name"
        read -r file;
        gpg -c "$file"
        rm -r "$file";
        echo "The file has been encrypted"
        exit 1
else
    echo "You have selected Decryption"
    echo "Please enter the file name"
    read -r file2;
    decode=$(gpg -d "$file2")
    echo "$decode" > decrypted
    rm $file2
    echo "The file has been decrypted"
    exit 1
fi
done
