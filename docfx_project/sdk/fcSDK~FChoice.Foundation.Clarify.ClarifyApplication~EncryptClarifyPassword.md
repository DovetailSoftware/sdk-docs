### EncryptClarifyPassword Method (ClarifyApplication)

The plain-text password to obfuscate

Generates a string using the same obfuscation algorithm that is compatible with the Clarify Thin Client.

#### Syntax

```vbnet
'Declaration

Public Function EncryptClarifyPassword( _
   ByVal _password_ As String _
) As String
```

```csharp
public string EncryptClarifyPassword( 
   string _password_
)
```

#### Parameters

_password_

The plain-text password to obfuscate

#### Return Value

A password obfuscated using the Clarify obfuscation algorithm

#### Remarks

This string can be used for password comparison and authentication of users and web users in the Clarify system.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)