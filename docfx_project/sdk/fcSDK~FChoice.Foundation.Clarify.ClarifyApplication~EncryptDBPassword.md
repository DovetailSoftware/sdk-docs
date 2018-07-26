### EncryptDBPassword Method (ClarifyApplication)

The password to obfuscate

Obfuscates a database password using the Clarify DB password obfuscation algorithm.

Syntax

```vbnet
'Declaration

Public Function EncryptDBPassword( _
   ByVal _password_ As String _
) As String
```

```csharp
public string EncryptDBPassword( 
   string _password_
)
```

#### Parameters

_password_

The password to obfuscate

#### Return Value

A password obfuscated using the Clarify DB password obfuscation algorithm

Remarks

This password can be used in a connection string to log a user directly into the database.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)