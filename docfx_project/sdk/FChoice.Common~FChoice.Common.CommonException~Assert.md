### Assert Method

The unique error ID of the exception that will be thrown if the assertion fails.

A boolean which is the result of an assertion. If false, a [CommonException](FChoice.Common~FChoice.Common.CommonException.md) will be thrown using the **_errorId_** specified.

A description of what the assertion represents and why it is important.

Assert it used internally by First Choice products to ensure that internal state and data is consistent with expected norms.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Sub Assert( _
   ByVal _errorId_ As [Integer](#), _
   ByVal _assertionResult_ As Boolean, _
   ByVal _reason_ As String _
) 

public static void Assert( 
   [int](#) _errorId_,
   bool _assertionResult_,
   string _reason_
)

#### Parameters

_errorId_

The unique error ID of the exception that will be thrown if the assertion fails.

_assertionResult_

A boolean which is the result of an assertion. If false, a [CommonException](FChoice.Common~FChoice.Common.CommonException.md) will be thrown using the **_errorId_** specified.

_reason_

A description of what the assertion represents and why it is important.

Exceptions

| Exception | Description |
| --- | --- |
| [CommonException](FChoice.Common~FChoice.Common.CommonException.md) | The assertion failed. |

Remarks

Note that the **_reason_** parameter is not localized. Assertions are generally internal state monitors used by programmers and are not intended to be viewed by end users. The reason should be encoded in the language of the developer to aid in troubleshooting.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CommonException Class](FChoice.Common~FChoice.Common.CommonException.md)  
[CommonException Members](FChoice.Common~FChoice.Common.CommonException_members.md)