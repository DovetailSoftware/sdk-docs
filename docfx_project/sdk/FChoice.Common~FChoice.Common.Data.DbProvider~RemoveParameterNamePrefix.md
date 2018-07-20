### RemoveParameterNamePrefix Method (DbProvider)

The parameter name with an optional parameter name prefix

Removes, if necessary, the parameter name prefix on a given parameter name

Syntax

```vbnet
' Declaration

Public MustOverride Function RemoveParameterNamePrefix( _
   ByVal _name_ As String _
) As String

public abstract string RemoveParameterNamePrefix( 
   string _name_
)

#### Parameters

_name_

The parameter name with an optional parameter name prefix

#### Return Value

The parameter name without any name prefix

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)