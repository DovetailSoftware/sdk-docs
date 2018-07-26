### CheckIsEmpty Method

The unique error ID to use if an exception needs to be thrown.

The name of the parameter that contains the index value to check.

The value of the string parameter to verify.

Checks whether or not the supplied string value is null (**Nothing** in Visual Basic) or empty (trimmed length equals zero).

Syntax

```vbnet
'Declaration

Public Shared Sub CheckIsEmpty( _
   ByVal _errorId_ As Integer, _
   ByVal _paramName_ As String, _
   ByVal _val_ As String _
) 
```

```csharp
public static void CheckIsEmpty( 
   int _errorId_,
   string _paramName_,
   string _val_
)
```

#### Parameters

_errorId_

The unique error ID to use if an exception needs to be thrown.

_paramName_

The name of the parameter that contains the index value to check.

_val_

The value of the string parameter to verify.

Exceptions

| Exception | Description |
| --- | --- |
| [FCArgumentException](FChoice.Common~FChoice.Common.FCArgumentException.md) | The string value is null or empty. |

Remarks

If the **_val_** parameter is null (**Nothing** in Visual Basic) or empty (trimmed length equals zero) an FCArgumentException will be thrown using the supplied **_errorId_**.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCArgumentException Class](FChoice.Common~FChoice.Common.FCArgumentException.md)  
[FCArgumentException Members](FChoice.Common~FChoice.Common.FCArgumentException_members.md)