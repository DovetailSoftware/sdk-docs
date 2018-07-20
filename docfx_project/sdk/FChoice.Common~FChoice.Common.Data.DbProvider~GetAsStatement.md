### GetAsStatement Method (DbProvider)

The name of the column or table alias

Qualifies a column or table alias according to this provider's database type's rules regarding use of the AS keyword

Syntax

```vbnet
' Declaration

Public MustOverride Function GetAsStatement( _
   ByVal _name_ As String _
) As String

public abstract string GetAsStatement( 
   string _name_
)

#### Parameters

_name_

The name of the column or table alias

#### Return Value

A string with or without the "AS" keyword as necessary for the underlying database type

Remarks

In MSSQL, the "AS" keyword is not always required, but can help to resolve ambiguity in SQL statements and is recommended. Oracle 8i and earlier do not support the use of the "AS" keyword. This method helps statement writers use column and table aliases without having to worry about underlying support for "AS".

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)