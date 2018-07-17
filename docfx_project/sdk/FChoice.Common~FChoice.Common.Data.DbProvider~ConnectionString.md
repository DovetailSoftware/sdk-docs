     ConnectionString Property (DbProvider)                                                   

ConnectionString Property (DbProvider)

Gets or sets the connection string this provider will use for database connections

Syntax

```vbnet
```csharp

'Declaration
 

Public Overridable Property ConnectionString As String

public virtual string ConnectionString {get; set;}

#### Property Value

The connection string this provider will use for database connections

Remarks

This value is normally the value specified in the application configuration file. However, it can be set to another connection string at which point the provider will use the newly specified value.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)