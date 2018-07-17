     LogManager Class Members                                                   

LogManager Class Members

The following tables list the members exposed by [LogManager](FChoice.Common~FChoice.Common.LogManager.md).

Public Constructors

|   | Name | Description |
| --- | --- | --- |
| ![Public Constructor](dotnetimages/publicConstructor.png) | [LogManager Constructor](FChoice.Common~FChoice.Common.LogManager~_ctor.md) |   |

[Top](#top)

Public Fields

|   | Name | Description |
| --- | --- | --- |
| ![Public Field](dotnetimages/publicField.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [SyncRoot](FChoice.Common~FChoice.Common.LogManager~SyncRoot.md) | Gets an object that can be used to synchronize access to LogManager.   |

[Top](#top)

Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [Instance](FChoice.Common~FChoice.Common.LogManager~Instance.md) | Gets the singleton instance of LogManager.   |
| ![Public Property](dotnetimages/publicProperty.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [IsInitialized](FChoice.Common~FChoice.Common.LogManager~IsInitialized.md) | Gets whether or not LogManager has been properly initialized.   |
| ![Public Property](dotnetimages/publicProperty.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [LogConfigFilePath](FChoice.Common~FChoice.Common.LogManager~LogConfigFilePath.md) | Gets or sets the full path to the file LogManager should attempt to use to configure itself.   |

[Top](#top)

Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [AddAppenderToLogger](FChoice.Common~FChoice.Common.LogManager~AddAppenderToLogger.md) | Overloaded. Links a given appender to the specified .NET type-identified logger.   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [AddAppenderToRoot](FChoice.Common~FChoice.Common.LogManager~AddAppenderToRoot.md) | Adds an already-prepared appender to the root level (affecting all loggers).   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [AddLogFileAppender](FChoice.Common~FChoice.Common.LogManager~AddLogFileAppender.md) | Creates a new rolling log file appender and adds it to the configuration for use elsewhere.   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [FindFile](FChoice.Common~FChoice.Common.LogManager~FindFile.md) |   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [GetLogger](FChoice.Common~FChoice.Common.LogManager~GetLogger.md) | Overloaded. Retrieves a logger for the given type name.   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [Initialize](FChoice.Common~FChoice.Common.LogManager~Initialize.md) | Initializes the LogManager.   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [Reconfigure](FChoice.Common~FChoice.Common.LogManager~Reconfigure().md) |   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [ResetConfiguration](FChoice.Common~FChoice.Common.LogManager~ResetConfiguration.md) | Resets the log configuration and configuration file back to defaults (root level set to INFO with no appenders).   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [SetLoggerLevel](FChoice.Common~FChoice.Common.LogManager~SetLoggerLevel.md) | Overloaded. Changes a specific logger's (specified by type) logging level.   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [SetRootLoggerLevel](FChoice.Common~FChoice.Common.LogManager~SetRootLoggerLevel.md) | Changes the root's logging level (affecting all loggers)   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [SetThreadContextValue](FChoice.Common~FChoice.Common.LogManager~SetThreadContextValue.md) | Sets a context variable for this thread.   |

[Top](#top)

See Also

#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)