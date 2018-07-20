### EncryptString(DataProtectionStore,String,String) Method

Specifies which key store to use (User or Machine)

A string of text to encrypt

The entropy, or "password" to use to decrypt this data. The value must be the same as was used to originally encrypt the data

Encrypts a string, using the specified entropy, and returns a Base64-encoded string representing the encrypted output

Syntax

```vbnet
' Declaration

Public Overloads Shared Function EncryptString( _
   ByVal _keyStore_ As [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md), _
   ByVal _plainText_ As String, _
   ByVal _entropy_ As String _
) As String

public static string EncryptString( 
   [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md) _keyStore_,
   string _plainText_,
   string _entropy_
)

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_plainText_

A string of text to encrypt

_entropy_

The entropy, or "password" to use to decrypt this data. The value must be the same as was used to originally encrypt the data

Remarks

It is important not to lose the entropy used to encrypt this data. If the entropy is lost, the data cannot be decrypted. If the entropy must be stored, do not store it with the encrypted payload.

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~EncryptString.md)