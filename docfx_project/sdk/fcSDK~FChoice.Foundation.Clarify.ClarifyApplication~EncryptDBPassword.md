     EncryptDBPassword Method (ClarifyApplication)                                                   

fcSDK Documentation

EncryptDBPassword Method (ClarifyApplication)

The password to obfuscate

Obfuscates a database password using the Clarify DB password obfuscation algorithm.

Syntax

```vbnet
```csharp

'Declaration
 

Public Function EncryptDBPassword( _
   ByVal _password_ As String _
) As String

public string EncryptDBPassword( 
   string _password_
)

#### Parameters

_password_

The password to obfuscate

#### Return Value

A password obfuscated using the Clarify DB password obfuscation algorithm

Remarks

This password can be used in a connection string to log a user directly into the database.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)