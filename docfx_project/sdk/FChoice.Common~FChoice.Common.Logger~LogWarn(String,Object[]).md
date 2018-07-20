     LogWarn(String,Object\[\]) Method                                                   

LogWarn(String,Object\[\]) Method

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

Arguments to use in replacing variables in the **_format_** string.

Writes a WARN-level log entry if WARN-level logging is enabled.

Syntax

```vbnet
' Declaration

Public Overloads Sub LogWarn( _
   ByVal _format_ As String, _
   ByVal ParamArray _args_() As Object _
) 

public void LogWarn( 
   string _format_,
   params object\[\] _args_
)

#### Parameters

_format_

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

_args_

Arguments to use in replacing variables in the **_format_** string.

Remarks

If the current logger is not configured for WARN-level logging or lower, this method will do nothing.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[Logger Class](FChoice.Common~FChoice.Common.Logger.md)  
[Logger Members](FChoice.Common~FChoice.Common.Logger_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Logger~LogWarn.md)