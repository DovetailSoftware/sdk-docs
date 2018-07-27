### AddSitePartToContract(String,String,Int32) Method

Contract Identifier.

Identifier of site where the site part is located.

Objid of the SitePart to be added.

Adds a Site Part to a Contract. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function AddSitePartToContract( _
   ByVal _contractIDNum_ As String, _
   ByVal _siteIDNum_ As String, _
   ByVal _sitePartObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult AddSitePartToContract( 
   string _contractIDNum_,
   string _siteIDNum_,
   int _sitePartObjid_
)
```

#### Parameters

_contractIDNum_

Contract Identifier.

_siteIDNum_

Identifier of site where the site part is located.

_sitePartObjid_

Objid of the SitePart to be added.

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddSitePartToContract.md)