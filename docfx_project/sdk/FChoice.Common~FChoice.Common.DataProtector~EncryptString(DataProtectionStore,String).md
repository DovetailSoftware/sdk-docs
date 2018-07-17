### EncryptString(DataProtectionStore,String) Method

Specifies which key store to use (User or Machine)

A string of text to encrypt

Encrypts a string and returns a Base64-encoded string representing the encrypted output

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Shared Function EncryptString( _
   ByVal _keyStore_ As [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md), _
   ByVal _plainText_ As String _
) As String

public static string EncryptString( 
   [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md) _keyStore_,
   string _plainText_
)

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_plainText_

A string of text to encrypt

Remarks

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~EncryptString.md)