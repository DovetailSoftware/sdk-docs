### UpdateSiteByObjid(UpdateSiteByObjidSetup) Method

Setup object for API invocation.

Update Site identified by Objid. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function UpdateSiteByObjid( _
   ByVal _setupParam_ UpdateSiteByObjidSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateSiteByObjid( 
   UpdateSiteByObjidSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Site.
*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Site.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdateSiteByObjid.md)  
[UpdateSiteByObjidSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateSiteByObjidSetup.md)