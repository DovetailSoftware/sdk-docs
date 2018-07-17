     AddAppenderToLogger Method                                                   

AddAppenderToLogger Method

Links a given appender to the specified .NET type-identified logger.

Links a logger configuration to an already-prepared appender.

Overload List

| Overload | Description |
| --- | --- |
| [AddAppenderToLogger(String,Type)](FChoice.Common~FChoice.Common.LogManager~AddAppenderToLogger(String,Type).md) | Links a given appender to the specified .NET type-identified logger.   |
| [AddAppenderToLogger(String,String)](FChoice.Common~FChoice.Common.LogManager~AddAppenderToLogger(String,String).md) | Links a given appender to the specified logger name.   |

Remarks

This will not clear out any existing appenders that may be configured for that logger, it will merely add it to the list. The only way to clear the appenders for a logger is to call [ResetConfiguration](FChoice.Common~FChoice.Common.LogManager~ResetConfiguration.md) and reconfigure all the loggers again.

To prepare a rolling file-based appender, see the [AddLogFileAppender](FChoice.Common~FChoice.Common.LogManager~AddLogFileAppender.md) method.

**NOTE:** After you are finished configuring LogManager, you must call [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure.md) in order for the changes to fully take effect.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)