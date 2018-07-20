### FormatDateLiteral Method (DbProvider)

The DateTime value to convert

Converts a DateTime value to a string according to the specific format of the underlying database type

Syntax

```vbnet
' Declaration
Public MustOverride Function FormatDateLiteral( _
   ByVal _value_ As Date _
) As String

public abstract string FormatDateLiteral( 
   DateTime _value_
)

#### Parameters

_value_

The DateTime value to convert

#### Return Value

A literal string that is compatible with the underlying database.

Remarks

The resultant string can be used directly in a SQL statement. For example, the date will be formatted as  'yyyy-MM-dd HH:mm:ss.fff' for MSSQL or a TO_DATE(yourdate, 'yyyy-mm-dd hh24:mi:ss') function call will be returned for Oracle.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)