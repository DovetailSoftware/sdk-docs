### Encrypt(DataProtectionStore,Byte\[\]) Method

Specifies which key store to use (User or Machine)

The plain, or unencrypted, bytes to encrypt

Encrypts a byte array

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Shared Function Encrypt( _
   ByVal _keyStore_ As [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md), _
   ByVal _plainBytes_() As [Byte](#) _
) As [Byte()](#)

public static [byte\[\]](#) Encrypt( 
   [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md) _keyStore_,
   [byte](#)\[\] _plainBytes_
)

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_plainBytes_

The plain, or unencrypted, bytes to encrypt

#### Return Value

A byte array representing the encrypted version of the original _plainBytes_ payload

Remarks

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~Encrypt.md)