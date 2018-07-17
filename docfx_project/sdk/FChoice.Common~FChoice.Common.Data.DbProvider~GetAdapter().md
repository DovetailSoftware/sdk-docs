     GetAdapter() Method                                                   

GetAdapter() Method

Gets a database type-specific DbDataAdapter instance for this provider type (i.e. SqlDataAdapter for MSSQL) without any options set yet.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads MustOverride Function GetAdapter() As [DbDataAdapter](#)

public abstract [DbDataAdapter](#) GetAdapter()

#### Return Value

A DbDataAdapter instance for this provider type (i.e. SqlDataAdapter for MSSQL)

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DbProvider~GetAdapter.md)