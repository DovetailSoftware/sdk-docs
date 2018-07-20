### CheckIsNull Method

The unique error ID to use if an exception needs to be thrown.

The name of the parameter that contains the index value to check.

The value of the parameter to be verified.

Checks to see whether the given parameter is null (**Nothing** in Visual Basic).

Syntax

```vbnet
' Declaration
Public Shared Sub CheckIsNull( _
   ByVal _errorId_ As Integer, _
   ByVal _paramName_ As String, _
   ByVal _val_ As Object _
) 

public static void CheckIsNull( 
   int _errorId_,
   string _paramName_,
   object _val_
)

#### Parameters

_errorId_

The unique error ID to use if an exception needs to be thrown.

_paramName_

The name of the parameter that contains the index value to check.

_val_

The value of the parameter to be verified.

Exceptions

| Exception | Description |
| --- | --- |
| [FCArgumentException](FChoice.Common~FChoice.Common.FCArgumentException.md) | The value is null. |

Remarks

If **_val_** is null (**Nothing** in Visual Basic), and FCArgumentException is thrown using the supplied **_errorId_**.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FCArgumentException Class](FChoice.Common~FChoice.Common.FCArgumentException.md)  
[FCArgumentException Members](FChoice.Common~FChoice.Common.FCArgumentException_members.md)