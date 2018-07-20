### GetUniqueParamName Method

The desired name for the parameter

Gets a unique parameter name among all the parameters for all the queries in this batch based off a suggested base name

Syntax

```vbnet
' Declaration

Public Function GetUniqueParamName( _
   ByVal _baseName_ As String _
) As String

public string GetUniqueParamName( 
   string _baseName_
)

#### Parameters

_baseName_

The desired name for the parameter

#### Return Value

The desired name with numbers appended as necessary to guarantee uniqueness

[!include[Requirements](../partials/requirements.md)]



#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)