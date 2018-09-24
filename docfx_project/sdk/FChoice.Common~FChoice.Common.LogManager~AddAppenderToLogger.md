### AddAppenderToLogger Method

#### Overload List

| Overload | Description |
| --- | --- |
| [AddAppenderToLogger(String,Type)](FChoice.Common~FChoice.Common.LogManager~AddAppenderToLogger(String,Type).md) | Links a given appender to the specified .NET type-identified logger.   |
| [AddAppenderToLogger(String,String)](FChoice.Common~FChoice.Common.LogManager~AddAppenderToLogger(String,String).md) | Links a given appender to the specified logger name.   |

#### Remarks

This will not clear out any existing appenders that may be configured for that logger, it will merely add it to the list. The only way to clear the appenders for a logger is to call [ResetConfiguration](FChoice.Common~FChoice.Common.LogManager~ResetConfiguration.md) and reconfigure all the loggers again.

To prepare a rolling file-based appender, see the [AddLogFileAppender](FChoice.Common~FChoice.Common.LogManager~AddLogFileAppender.md) method.

**NOTE:** After you are finished configuring LogManager, you must call [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure.md) in order for the changes to fully take effect.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)
