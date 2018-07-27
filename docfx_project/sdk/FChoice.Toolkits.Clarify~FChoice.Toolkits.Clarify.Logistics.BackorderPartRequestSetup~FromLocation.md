### FromLocation Property (BackorderPartRequestSetup)

The inventory location containing the parts used to backorder this Part Request

#### Syntax

```vbnet
```csharp

'Declaration 

<PropertyBitValueAttribute()>
Public Property FromLocation As Location
```

```csharp
[PropertyBitValueAttribute()]
public Location FromLocation {get; set;}
```

#### Remarks

To use a primary bin suggestion/recommendation that has been previously configured, use the [special constructor](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location~_ctor(String,Boolean).md) for the Location object and set the _isPrimaryBinSuggestion_ parameter to true.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[BackorderPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md)  
[BackorderPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup_members.md)