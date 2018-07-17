     IsDbUnicode Property (ClarifyApplication)                                                   

fcSDK Documentation

IsDbUnicode Property (ClarifyApplication)

Gets whether or not any columns in the Clarify database are flagged as supporting Unicode characters.

Syntax

```vbnet
```csharp

'Declaration
 

<[ObsoleteAttribute](#)("Use the SchemaCache IsDatabaseUnicode property")>
Public ReadOnly Property IsDbUnicode As Boolean

\[[ObsoleteAttribute](#)("Use the SchemaCache IsDatabaseUnicode property")\]
public bool IsDbUnicode {get;}

#### Property Value

Whether or not any columns in the Clarify database are flagged as supporting Unicode characters.

Remarks

For more information on what constitutes a column that supports Unicode or how to configure your database to support unicode input, consult the FCFL.NET Installation and User guides.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)