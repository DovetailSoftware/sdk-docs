     IsShortState Property (CreateAddressSetup)                                                   

fcSDK Documentation

IsShortState Property (CreateAddressSetup)

Is the [State property](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAddressSetup~State.md) abbreviated or is it the full name of the State.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property IsShortState As Boolean

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public bool IsShortState {get; set;}

Example

The [State](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAddressSetup~State.md) property is set to 'TX' thus IsShortState is true. When the State property is set to 'Texas' IsShortState should be false.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateAddressSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAddressSetup.md)  
[CreateAddressSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAddressSetup_members.md)