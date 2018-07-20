### Log Method (Logger)

Writes a log entry with the specified level (if logging for that level is enabled).

Writes a log entry with the specified level and message.

Overload List

| Overload | Description |
| --- | --- |
| [Log(LogLevel,String,Object\[\])](FChoice.Common~FChoice.Common.Logger~Log.md) | Writes a log entry with the specified level (if logging for that level is enabled).   |
| [Log(LogLevel,Exception,String,Object\[\])](FChoice.Common~FChoice.Common.Logger~Log(LogLevel,Exception,String,Object[]).md) | Writes a log entry with the specified level (if logging for that level is enabled) with details about an exception that was caught.   |

Remarks

It is recommended that you use the individual Log* methods rather than this general method. This method is only provided for rare circumstances where the log level at which to write a specific entry is not known until runtime.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[Logger Class](FChoice.Common~FChoice.Common.Logger.md)  
[Logger Members](FChoice.Common~FChoice.Common.Logger_members.md)