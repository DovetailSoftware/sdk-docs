### Decrypt(DataProtectionStore,Byte\[\]) Method

Specifies which key store to use (User or Machine)

The encrypted bytes to decrypt

Decrypts a byte array of data into a new byte array of unencrypted data

Syntax

```vbnet
' Declaration

Public Overloads Shared Function Decrypt( _
   ByVal _keyStore_ As [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md), _
   ByVal _cipherBytes_() As [Byte](#) _
) As [Byte()](#)

public static [byte\[\]](#) Decrypt( 
   [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md) _keyStore_,
   [byte](#)\[\] _cipherBytes_
)

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_cipherBytes_

The encrypted bytes to decrypt

Remarks

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~Decrypt.md)