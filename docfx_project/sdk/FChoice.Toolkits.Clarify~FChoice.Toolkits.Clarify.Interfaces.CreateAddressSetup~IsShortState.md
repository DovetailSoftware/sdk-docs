### IsShortState Property (CreateAddressSetup)

Is the [State property](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAddressSetup~State.md) abbreviated or is it the full name of the State.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property IsShortState As Boolean
```

```csharp
[PropertyBitValueAttribute()]
public bool IsShortState {get; set;}
```

Example

The [State](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAddressSetup~State.md) property is set to 'TX' thus IsShortState is true. When the State property is set to 'Texas' IsShortState should be false.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateAddressSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAddressSetup.md)  
[CreateAddressSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAddressSetup_members.md)