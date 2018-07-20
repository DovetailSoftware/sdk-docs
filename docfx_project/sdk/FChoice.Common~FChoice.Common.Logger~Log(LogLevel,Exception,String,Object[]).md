### Log(LogLevel,Exception,String,Object\[\]) Method

The level at which to write this entry (if configured).

The exception that is related to this entry. The details of the exception will be written to the configured appender(s).

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

Arguments to use in replacing variables in the **_format_** string.

Writes a log entry with the specified level (if logging for that level is enabled) with details about an exception that was caught.

Syntax

```vbnet
' Declaration

Public Overloads Sub Log( _
   ByVal _level_ As [LogLevel](/sdk/FChoice.Common~FChoice.Common.LogLevel.md), _
   ByVal _ex_ As [Exception](#), _
   ByVal _format_ As String, _
   ByVal ParamArray _args_() As Object _
) 

public void Log( 
   [LogLevel](/sdk/FChoice.Common~FChoice.Common.LogLevel.md) _level_,
   [Exception](#) _ex_,
   string _format_,
   params object\[\] _args_
)

#### Parameters

_level_

The level at which to write this entry (if configured).

_ex_

The exception that is related to this entry. The details of the exception will be written to the configured appender(s).

_format_

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

_args_

Arguments to use in replacing variables in the **_format_** string.

Remarks

For details of how string formatting works, please see the details of the [String.Format](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemstringclassformattopic.htm) method.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[Logger Class](FChoice.Common~FChoice.Common.Logger.md)  
[Logger Members](FChoice.Common~FChoice.Common.Logger_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Logger~Log.md)