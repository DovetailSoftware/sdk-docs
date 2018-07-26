### TempTablespace Property

Temporary Oracle Tablespace for the user

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property TempTablespace As String
```

```csharp
[PropertyBitValueAttribute()]
public string TempTablespace {get; set;}
```

#### Remarks

This property only affects Oracle based Clarify installations. If left blank the temporary tablespace will be set to **temp**

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateEmployeeSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup.md)  
[CreateEmployeeSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup_members.md)