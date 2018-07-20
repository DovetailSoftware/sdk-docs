### NOW_DATE Field (ToolkitBase)

Date constant that tells FCFL.NET to use the database's current DateTime.

Syntax

```vbnet
'Declaration

Public Shared ReadOnly NOW_DATE As Date
```

```csharp
public static readonly DateTime NOW_DATE
```

Remarks

Use this constant when setting API properties of type **DateTime**. The API will use the database's current time the update was executed for the property's value.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ToolkitBase Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitBase.md)  
[ToolkitBase Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitBase_members.md)