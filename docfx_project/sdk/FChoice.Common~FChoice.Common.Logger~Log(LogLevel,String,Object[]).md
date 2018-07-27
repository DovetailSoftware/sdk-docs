### Log(LogLevel,String,Object\[\]) Method

The level at which to write this entry (if configured).

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

Arguments to use in replacing variables in the **_format_** string.

Writes a log entry with the specified level (if logging for that level is enabled).

#### Syntax

```vbnet
'Declaration

Public Overloads Sub Log( _
   ByVal _level_ As LogLevel, _
   ByVal _format_ As String, _
   ByVal ParamArray _args_() As Object _
) 
```

```csharp
public void Log( 
   LogLevel _level_,
   string _format_,
   params object\[\] _args_
)
```

#### Parameters

_level_

The level at which to write this entry (if configured).

_format_

A format string with replacement parameters  that will be replaced by the **_args_** parameters.

_args_

Arguments to use in replacing variables in the **_format_** string.

#### Remarks

For details of how string formatting works, please see the details of the [String.Format](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemstringclassformattopic.htm) method.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[Logger Class](FChoice.Common~FChoice.Common.Logger.md)  
[Logger Members](FChoice.Common~FChoice.Common.Logger_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Logger~Log.md)