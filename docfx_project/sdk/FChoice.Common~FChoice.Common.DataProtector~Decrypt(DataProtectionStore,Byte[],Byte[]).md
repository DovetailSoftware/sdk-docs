### Decrypt(DataProtectionStore,Byte\[\],Byte\[\]) Method

Specifies which key store to use (User or Machine)

The encrypted bytes to decrypt

The entropy, or "password" to use to decrypt this data. The value must be the same as was used to originally encrypt the data

Decrypts a byte array of data, using the specified entropy, into a new byte array of unencrypted data

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Shared Function Decrypt( _
   ByVal _keyStore_ As [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md), _
   ByVal _cipherBytes_() As [Byte](#), _
   ByVal _entropy_() As [Byte](#) _
) As [Byte()](#)

public static [byte\[\]](#) Decrypt( 
   [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md) _keyStore_,
   [byte](#)\[\] _cipherBytes_,
   [byte](#)\[\] _entropy_
)

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_cipherBytes_

The encrypted bytes to decrypt

_entropy_

The entropy, or "password" to use to decrypt this data. The value must be the same as was used to originally encrypt the data

Remarks

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~Decrypt.md)