### GetAlternateParts(String,String,String) Method

The Part number

The Part domain

The Part revision

Builds a list of the alternate parts (table_partnum_view) for the specified part and revision, and returns an array of part Objids This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function GetAlternateParts( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String _
) As [GetAlternatePartsResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsResult.md)

public [GetAlternatePartsResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsResult.md) GetAlternateParts( 
   string _partNumber_,
   string _partDomain_,
   string _partRevision_
)

#### Parameters

_partNumber_

The Part number

_partDomain_

The Part domain

_partRevision_

The Part revision

#### Return Value

The following values are populated in the [GetAlternatePartsResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsResult.md) object returned by the API method:

*   [AlternatePartList](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsResult~AlternatePartList.md) \- An array of Alternate Part objid's.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~GetAlternateParts.md)