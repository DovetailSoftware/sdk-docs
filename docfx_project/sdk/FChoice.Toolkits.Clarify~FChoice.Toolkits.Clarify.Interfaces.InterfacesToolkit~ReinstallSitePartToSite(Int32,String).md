### ReinstallSitePartToSite(Int32,String) Method

Objid of the Site Part being re-installed

Identifier of the Site where the Site Part will be re-installed

Re-Install a Site Part under a Site. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function ReinstallSitePartToSite( _
   ByVal _sitePartObjid_ As Integer, _
   ByVal _siteIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ReinstallSitePartToSite( 
   int _sitePartObjid_,
   string _siteIDNum_
)
```

#### Parameters

_sitePartObjid_

Objid of the Site Part being re-installed

_siteIDNum_

Identifier of the Site where the Site Part will be re-installed

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~ReinstallSitePartToSite.md)