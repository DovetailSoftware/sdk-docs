### GetDateStatement Method (DbProvider)

Gets a SQL statement fragment for the database-specific syntax of retrieving the current date (i.e. SYSDATE on Oracle or GETDATE() on MSSQL).

#### Syntax

```vbnet
'Declaration

Public MustOverride Function GetDateStatement() As String
```

```csharp
public abstract string GetDateStatement()
```

#### Return Value

A SQL statement fragment for the database-specific syntax of retrieving the current date

#### Remarks

The returned string is a fragment of a statement, not an entire statement. It cannot be executed independently

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)