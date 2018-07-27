### DecryptString(DataProtectionStore,String,String) Method

Specifies which key store to use (User or Machine)

A Base64 encoded string representing the encrypted bytes to decrypt

The entropy, or "password" to use to decrypt this data. The value must be the same as was used to originally encrypt the data

Decrypts, using the specified entropy, data which was encoded into a string using the Base64 encoding scheme

#### Syntax

```vbnet
'Declaration

Public Overloads Shared Function DecryptString( _
   ByVal _keyStore_ As DataProtectionStore, _
   ByVal _encryptedText_ As String, _
   ByVal _entropy_ As String _
) As String
```

```csharp
public static string DecryptString( 
   DataProtectionStore _keyStore_,
   string _encryptedText_,
   string _entropy_
)
```

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_encryptedText_

A Base64 encoded string representing the encrypted bytes to decrypt

_entropy_

The entropy, or "password" to use to decrypt this data. The value must be the same as was used to originally encrypt the data

#### Return Value

The decrypted contents of this message as a string

#### Remarks

This method expects the payload to be a byte array which contains the UTF8-encoded bytes of a string that was encrypted using the [EncryptString Method](FChoice.Common~FChoice.Common.DataProtector~EncryptString.md).

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~DecryptString.md)