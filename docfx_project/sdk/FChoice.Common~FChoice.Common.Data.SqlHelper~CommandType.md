### CommandType Property

Syntax

```vbnet
'Declaration

Public Property CommandType As CommandType
```

```csharp
public CommandType CommandType {get; set;}
```

Remarks

When the [CommandType](frlrfsystemdataidbcommandclasscommandtypetopic.htm) property is set to **StoredProcedure**, set the [CommandText](FChoice.Common~FChoice.Common.Data.SqlHelper~CommandText.md) property to the name of the stored procedure. The user may be required to use escape character syntax if the stored procedure name contains any special characters. The command will call this stored procedure when you call one of the Execute methods.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)