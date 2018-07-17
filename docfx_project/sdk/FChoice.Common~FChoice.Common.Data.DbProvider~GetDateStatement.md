     GetDateStatement Method (DbProvider)                                                   

GetDateStatement Method (DbProvider)

Gets a SQL statement fragment for the database-specific syntax of retrieving the current date (i.e. SYSDATE on Oracle or GETDATE() on MSSQL).

Syntax

```vbnet
```csharp

'Declaration
 

Public MustOverride Function GetDateStatement() As String

public abstract string GetDateStatement()

#### Return Value

A SQL statement fragment for the database-specific syntax of retrieving the current date

Remarks

The returned string is a fragment of a statement, not an entire statement. It cannot be executed independently

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)