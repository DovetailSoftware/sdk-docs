### DefaultTablespace Property

Default Oracle Tablespace for the user

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property DefaultTablespace As String
```

```csharp
[PropertyBitValueAttribute()]
public string DefaultTablespace {get; set;}
```

#### Remarks

This property only affects Oracle based Clarify installations. If left blank the default tablespace will be set to **users**

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateEmployeeSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup.md)  
[CreateEmployeeSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup_members.md)