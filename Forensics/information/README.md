```console

foo@bar:~$ strings cat.jpg

JFIF

0Photoshop 3.0

8BIM

PicoCTF

http://ns.adobe.com/xap/1.0/

<?xpacket begin='

' id='W5M0MpCehiHzreSzNTczkc9d'?>

<x:xmpmeta xmlns:x='adobe:ns:meta/' x:xmptk='Image::ExifTool 10.80'>

<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#'>

 <rdf:Description rdf:about=''

  xmlns:cc='http://creativecommons.org/ns#'>

  <cc:license rdf:resource='cGljb0NURnt0aGVfbTN0YWRhdGFfMXNfbW9kaWZpZWR9'/>

 </rdf:Description>

 <rdf:Description rdf:about=''

  xmlns:dc='http://purl.org/dc/elements/1.1/'>

  <dc:rights>

   <rdf:Alt>

    <rdf:li xml:lang='x-default'>PicoCTF</rdf:li>

   </rdf:Alt>

  </dc:rights>

 </rdf:Description>

</rdf:RDF>

</x:xmpmeta>
```

### Finding the base64 encoded string and converting  would give the flag

```console
foo@bar:~$ echo "cGljb0NURnt0aGVfbTN0YWRhdGFfMXNfbW9kaWZpZWR9" | base64 -d
```
