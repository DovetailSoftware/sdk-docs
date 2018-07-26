### SetThreadContextValue Method

The key or name to use for this variable.

The current value to assign to this variable for this thread.

Sets a context variable for this thread.

Syntax

```vbnet
'Declaration

Public Shared Sub SetThreadContextValue( _
   ByVal _key_ As String, _
   ByVal _value_ As String _
) 
```

```csharp
public static void SetThreadContextValue( 
   string _key_,
   string _value_
)
```

#### Parameters

_key_

The key or name to use for this variable.

_value_

The current value to assign to this variable for this thread.

Remarks

This variable allows you to add contextual information to your log entries (like the session ID or username of the currently logged-in user, etc. This applies only when using manual configuration of LogManager through configuration file. In the <layout> section of an appender, you can add the value of a thread context variable using the following syntax:

\[%X{user} %X{session}\]

You can then set two thread context values for key "user" and key "session" and they will print out in the log file.

For more information on configuring LogManager and defining appenders and layouts, please consult the user guide for your application.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)