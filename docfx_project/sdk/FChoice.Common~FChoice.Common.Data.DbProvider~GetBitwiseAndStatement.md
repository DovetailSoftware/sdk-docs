### GetBitwiseAndStatement Method (DbProvider)

The first operand in a bitwise AND equation (the '_x_' in the statement 'x & y')

The second operand in a bitwise AND equation (the '_y_' in the statement 'x & y')

Formats a bitwise AND statement according to the language features of the underlying database type

Syntax

```vbnet
' Declaration

Public MustOverride Function GetBitwiseAndStatement( _
   ByVal _operand1_ As Object, _
   ByVal _operand2_ As Object _
) As String

public abstract string GetBitwiseAndStatement( 
   object _operand1_,
   object _operand2_
)

#### Parameters

_operand1_

The first operand in a bitwise AND equation (the '_x_' in the statement 'x & y')

_operand2_

The second operand in a bitwise AND equation (the '_y_' in the statement 'x & y')

#### Return Value

A properly formatted bitwise AND equation that will be recognized by the underlying database type.

Remarks

MSSQL and Oracle 9 and later recognize the standard C-style bitwise AND statement syntax (x & y). However, Oracle 8i and earlier required the use of the bitand() function to evaluate bitwise AND statements. This method helps SQL statement writers use AND syntax in their queries without concerns of the differences in database types.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)