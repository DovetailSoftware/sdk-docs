### EncryptString(DataProtectionStore,String) Method

Specifies which key store to use (User or Machine)

A string of text to encrypt

Encrypts a string and returns a Base64-encoded string representing the encrypted output

#### Syntax

```vbnet
'Declaration

Public Overloads Shared Function EncryptString( _
   ByVal _keyStore_ As DataProtectionStore, _
   ByVal _plainText_ As String _
) As String
```

```csharp
public static string EncryptString( 
   DataProtectionStore _keyStore_,
   string _plainText_
)
```

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_plainText_

A string of text to encrypt

#### Remarks

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~EncryptString.md)