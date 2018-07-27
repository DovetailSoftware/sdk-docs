### ReinstallSitePartToPart(Int32,String,Int32) Method

Objid of the Site Part being re-installed

Identifier of the Site where the Site Part will be re-installed

Objid of the parent Site Part this Part will be re-installed under.

Re-Install a Site Part under another Site Part. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function ReinstallSitePartToPart( _
   ByVal _sitePartObjid_ As Integer, _
   ByVal _siteIDNum_ As String, _
   ByVal _parentSitePartObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult ReinstallSitePartToPart( 
   int _sitePartObjid_,
   string _siteIDNum_,
   int _parentSitePartObjid_
)
```

#### Parameters

_sitePartObjid_

Objid of the Site Part being re-installed

_siteIDNum_

Identifier of the Site where the Site Part will be re-installed

_parentSitePartObjid_

Objid of the parent Site Part this Part will be re-installed under.

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~ReinstallSitePartToPart.md)