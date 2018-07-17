     LogWarn(Exception,String,Object\[\]) Method                                                   

LogWarn(Exception,String,Object\[\]) Method

The exception that is related to this entry. The details of the exception will be written to the configured appender(s).

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

Arguments to use in replacing variables in the **_format_** string.

Writes a WARN-level log entry if WARN-level logging is enabled as well as the details of an exception that was caught.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub LogWarn( _
   ByVal _ex_ As [Exception](#), _
   ByVal _format_ As String, _
   ByVal ParamArray _args_() As [Object](#) _
) 

public void LogWarn( 
   [Exception](#) _ex_,
   string _format_,
   params [object](#)\[\] _args_
)

#### Parameters

_ex_

The exception that is related to this entry. The details of the exception will be written to the configured appender(s).

_format_

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

_args_

Arguments to use in replacing variables in the **_format_** string.

Remarks

If the current logger is not configured for WARN-level logging or lower, this method will do nothing.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[Logger Class](FChoice.Common~FChoice.Common.Logger.md)  
[Logger Members](FChoice.Common~FChoice.Common.Logger_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Logger~LogWarn.md)