### DeleteSitePart(Int32) Method

The objid of the Site Part to be deleted.

Used to delete a site_part in Clarify, and then unrelate the site_part from all other related records. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function DeleteSitePart( _
   ByVal _sitePartObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult DeleteSitePart( 
   int _sitePartObjid_
)
```

#### Parameters

_sitePartObjid_

The objid of the Site Part to be deleted.

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~DeleteSitePart.md)