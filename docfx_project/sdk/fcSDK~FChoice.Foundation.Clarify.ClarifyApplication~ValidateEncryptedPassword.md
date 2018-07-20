### ValidateEncryptedPassword Method (ClarifyApplication)

Password to validate against the hashed password.

Hashed password to validate against.

True if the Clarify instance is less than version 9.

Syntax

```vbnet
'Declaration

Public Shared Function ValidateEncryptedPassword( _
   ByVal _password_ As String, _
   ByVal _passHash_ As String, _
   ByVal _pre9_ As Boolean _
) As Boolean
```

```csharp
public static bool ValidateEncryptedPassword( 
   string _password_,
   string _passHash_,
   bool _pre9_
)
```

#### Parameters

_password_

Password to validate against the hashed password.

_passHash_

Hashed password to validate against.

_pre9_

True if the Clarify instance is less than version 9.

#### Return Value

True if the password validates.

Remarks

This method reproduces Clarify style authentication. Normally you would pull the hashed password out of a database and compare it against the password entered by the user.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)