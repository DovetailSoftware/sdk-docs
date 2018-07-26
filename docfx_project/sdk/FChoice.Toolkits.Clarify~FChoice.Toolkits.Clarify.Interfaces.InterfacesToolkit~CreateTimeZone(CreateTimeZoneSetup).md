### CreateTimeZone(CreateTimeZoneSetup) Method

Setup object for API invocation.

Creates a Time Zone and relates it to an existing Country. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateTimeZone( _
   ByVal _setupParam_ CreateTimeZoneSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateTimeZone( 
   CreateTimeZoneSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the TimeZone.

Remarks

If the Time Zone already exists it will be related to the [Country](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateTimeZoneSetup~Country.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateTimeZone.md)  
[CreateTimeZoneSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateTimeZoneSetup.md)