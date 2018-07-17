     ErrorCode Property                                                   

ErrorCode Property

Gets the unique error code for this exception.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property ErrorCode As [Integer](#)

public [int](#) ErrorCode {get;}

#### Property Value

A unique integer that identifies this exception instance.

Remarks

**Note to implementors**:

*   It is recommended that you use unique error numbers every time you throw an exception based on FCExceptionBase. You should choose a range of error numbers and stay consistent in using them.
*   First Choice has reserved error numbers 0 to 1,073,741,824 (0x4000000 hex). Customers should use positive numbers above this range. An easy way to assure this is to always OR your error numbers with 0x4000000.
    

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCExceptionBase Class](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
[FCExceptionBase Members](FChoice.Common~FChoice.Common.FCExceptionBase_members.md)