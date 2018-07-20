### Encrypt(DataProtectionStore,Byte\[\],Byte\[\]) Method

Specifies which key store to use (User or Machine)

The plain, or unencrypted, bytes to encrypt

The entropy, or "password" to use to encryptthis data. The value must be used to decrypt the data.

Encrypts a byte array using the specified entropy

Syntax

```vbnet
' Declaration

Public Overloads Shared Function Encrypt( _
   ByVal _keyStore_ As [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md), _
   ByVal _plainBytes_() As [Byte](#), _
   ByVal _entropy_() As [Byte](#) _
) As [Byte()](#)

public static [byte\[\]](#) Encrypt( 
   [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md) _keyStore_,
   [byte](#)\[\] _plainBytes_,
   [byte](#)\[\] _entropy_
)

#### Parameters

_keyStore_

Specifies which key store to use (User or Machine)

_plainBytes_

The plain, or unencrypted, bytes to encrypt

_entropy_

The entropy, or "password" to use to encryptthis data. The value must be used to decrypt the data.

#### Return Value

A byte array representing the encrypted version of the original _plainBytes_ payload

Remarks

It is important not to lose the entropy used to encrypt this data. If the entropy is lost, the data cannot be decrypted. If the entropy must be stored, do not store it with the encrypted payload.

![warning](/images/warning.gif)** WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DataProtector Class](FChoice.Common~FChoice.Common.DataProtector.md)  
[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[Overload List](FChoice.Common~FChoice.Common.DataProtector~Encrypt.md)