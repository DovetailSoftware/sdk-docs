### CreateBOM(String,String,String,String,String,String,Int32) Method

Parent Part Number

Parent Part Domain

Parent Part Revision

Child Part Number

Domain of the child part

Child Part Revision

How many of the Child Part Revisions are in the Parent Part Revision.

Creates a Bill Of Materials (BOM) for a Part Revision. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function CreateBOM( _
   ByVal _parentPartNumber_ As String, _
   ByVal _parentPartDomain_ As String, _
   ByVal _parentPartRevision_ As String, _
   ByVal _childPartNumber_ As String, _
   ByVal _childPartDomain_ As String, _
   ByVal _childPartRevision_ As String, _
   ByVal _quantity_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateBOM( 
   string _parentPartNumber_,
   string _parentPartDomain_,
   string _parentPartRevision_,
   string _childPartNumber_,
   string _childPartDomain_,
   string _childPartRevision_,
   int _quantity_
)
```

#### Parameters

_parentPartNumber_

Parent Part Number

_parentPartDomain_

Parent Part Domain

_parentPartRevision_

Parent Part Revision

_childPartNumber_

Child Part Number

_childPartDomain_

Domain of the child part

_childPartRevision_

Child Part Revision

_quantity_

How many of the Child Part Revisions are in the Parent Part Revision.

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the BOM.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateBOM.md)