     CreateTimeZone(CreateTimeZoneSetup) Method                                                   

fcSDK Documentation

CreateTimeZone(CreateTimeZoneSetup) Method

Setup object for API invocation.

Creates a Time Zone and relates it to an existing Country. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateTimeZone( _
   ByVal _setupParam_ As [CreateTimeZoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateTimeZoneSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateTimeZone( 
   [CreateTimeZoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateTimeZoneSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the TimeZone.

Remarks

If the Time Zone already exists it will be related to the [Country](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateTimeZoneSetup~Country.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateTimeZone.md)  
[CreateTimeZoneSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateTimeZoneSetup.md)