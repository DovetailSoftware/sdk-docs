### Decrypt(DataProtectionStore,Byte\[\],Byte\[\]) Method

Specifies which key store to use (User or Machine)

The encrypted bytes to decrypt

The entropy, or "password" to use to decrypt this data. The value must be the same as was used to originally encrypt the data

Decrypts a byte array of data, using the specified entropy, into a new byte array of unencrypted data

#### Syntax

```vbnet
'Declaration

Public Overloads Shared Function Decrypt( _
   ByVal _keyStore_ As DataProtectionStore, _
   ByVal _cipherBytes_() As Byte, _
   ByVal _entropy_() As Byte _
) As Byte()
```

```csharp
public static byte[] Decrypt( 
   DataProtectionStore _keyStore_,
   Byte[] _cipherBytes_,
   Byte[] _entropy_
)
```

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_cipherBytes_

The encrypted bytes to decrypt

_entropy_

The entropy, or "password" to use to decrypt this data. The value must be the same as was used to originally encrypt the data

#### Remarks

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~Decrypt.md)