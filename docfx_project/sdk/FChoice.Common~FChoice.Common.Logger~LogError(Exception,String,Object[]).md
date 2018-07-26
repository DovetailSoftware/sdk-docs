### LogError(Exception,String,Object\[\]) Method

The exception that is related to this entry. The details of the exception will be written to the configured appender(s).

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

Arguments to use in replacing variables in the **_format_** string.

Writes a ERROR-level log entry if ERROR-level logging is enabled as well as the details of an exception that was caught.

Syntax

```vbnet
'Declaration

Public Overloads Sub LogError( _
   ByVal _ex_ As Exception, _
   ByVal _format_ As String, _
   ByVal ParamArray _args_() As Object _
) 
```

```csharp
public void LogError( 
   Exception _ex_,
   string _format_,
   params object[] _args_
)
```

#### Parameters

_ex_

The exception that is related to this entry. The details of the exception will be written to the configured appender(s).

_format_

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

_args_

Arguments to use in replacing variables in the **_format_** string.

Remarks

If the current logger is not configured for ERROR-level logging or lower, this method will do nothing.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[Logger Class](FChoice.Common~FChoice.Common.Logger.md)  
[Logger Members](FChoice.Common~FChoice.Common.Logger_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Logger~LogError.md)