### AddAlternatePart(String,String,String,String,String,String) Method

The Part number

The Part revision

The Part domain

The Alternate Part number

The Alternate Part revision

The Alternate Part domain

Causes the second part/revision listed to become an alternate part of the first one listed. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function AddAlternatePart( _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _alternatePartNumber_ As String, _
   ByVal _alternatePartRevision_ As String, _
   ByVal _alternatePartDomain_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddAlternatePart( 
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   string _alternatePartNumber_,
   string _alternatePartRevision_,
   string _alternatePartDomain_
)

#### Parameters

_partNumber_

The Part number

_partRevision_

The Part revision

_partDomain_

The Part domain

_alternatePartNumber_

The Alternate Part number

_alternatePartRevision_

The Alternate Part revision

_alternatePartDomain_

The Alternate Part domain

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AddAlternatePart.md)