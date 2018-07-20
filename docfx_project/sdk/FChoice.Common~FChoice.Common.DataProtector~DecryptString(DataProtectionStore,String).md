### DecryptString(DataProtectionStore,String) Method

Specifies which key store to use (User or Machine)

A Base64 encoded string representing the encrypted bytes to decrypt

Decrypts data which was encoded into a string using the Base64 encoding scheme

Syntax

```vbnet
' Declaration

Public Overloads Shared Function DecryptString( _
   ByVal _keyStore_ As [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md), _
   ByVal _encryptedText_ As String _
) As String

public static string DecryptString( 
   [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md) _keyStore_,
   string _encryptedText_
)

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_encryptedText_

A Base64 encoded string representing the encrypted bytes to decrypt

#### Return Value

The decrypted contents of this message as a string

Remarks

This method expects the payload to be a byte array which contains the UTF8-encoded bytes of a string that was encrypted using the [EncryptString Method](FChoice.Common~FChoice.Common.DataProtector~EncryptString.md).

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~DecryptString.md)