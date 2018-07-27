### Currency Property (CreateCountrySetup)

Name of the Currency used by the Country

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Currency As String
```

```csharp
[PropertyBitValueAttribute()]
public string Currency {get; set;}
```

#### Remarks

If the Currency name is not found a new currency one is created based on the Currency properties of this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateCountrySetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup.md)  
[CreateCountrySetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCountrySetup_members.md)