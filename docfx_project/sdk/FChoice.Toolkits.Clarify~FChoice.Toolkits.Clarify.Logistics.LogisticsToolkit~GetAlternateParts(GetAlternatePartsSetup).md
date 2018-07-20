### GetAlternateParts(GetAlternatePartsSetup) Method

Setup object for API invocation.

Builds a list of the alternate parts (table_partnum_view) for the specified part and revision, and returns an array of part Objids This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function GetAlternateParts( _
   ByVal _setupParam_ As [GetAlternatePartsSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsSetup.md) _
) As [GetAlternatePartsResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsResult.md)

public [GetAlternatePartsResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsResult.md) GetAlternateParts( 
   [GetAlternatePartsSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [GetAlternatePartsResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsResult.md) object returned by the API method:

*   [AlternatePartList](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsResult~AlternatePartList.md) \- An array of Alternate Part objid's.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~GetAlternateParts.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetAlternatePartsSetup", Caption="GetAlternatePartsSetup Class"**