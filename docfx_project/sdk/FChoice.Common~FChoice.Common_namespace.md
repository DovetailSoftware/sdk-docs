### FChoice.Common Namespace

The **FChoice.Common** namespace provides configuration, logging, and error management services to First Choice .NET-based products.

#### Classes

|   | Class | Description |
| --- | --- | --- |
| ![Class](dotnetimages/Class.png) | [CommonException](FChoice.Common~FChoice.Common.CommonException.md) | CommonException is the exception class used throughout the FChoice.Common and FChoice.Common.Data namespaces. It provides localized error messages with unique error identifiers. |
| ![Class](dotnetimages/Class.png) | [ConfigValues](FChoice.Common~FChoice.Common.ConfigValues.md) | ConfigValues is a collection of string constants used for strongly-typing the keys used to access the common configuration items in the [FCConfiguration](FChoice.Common~FChoice.Common.FCConfiguration.md) collection. |
| ![Class](dotnetimages/Class.png) | [DataProtector](FChoice.Common~FChoice.Common.DataProtector.md) | Provides easy access to the Windows Data Protection API (DPAPI) for encrypting and decrypting data values |
| ![Class](dotnetimages/Class.png) | [FCArgumentException](FChoice.Common~FChoice.Common.FCArgumentException.md) | FCArgumentException is used to signify that parameters passed into APIs are invalid. It has several static (**Shared** in Visual Basic) methods that make handling required parameters easier. |
| ![Class](dotnetimages/Class.png) | [FCConfiguration](FChoice.Common~FChoice.Common.FCConfiguration.md) | The FCConfiguration class provides access to the application configuration and ensures that basic required configuration parameters are present. |
| ![Class](dotnetimages/Class.png) | [FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md) | FCExceptionBase is the base exception from which all other First Choice exception classes derive. It provides pluggable error message strings which allows for easy runtime customization and localization of error messages. |
| ![Class](dotnetimages/Class.png) | [FCInvalidConfigurationException](FChoice.Common~FChoice.Common.FCInvalidConfigurationException.md) | FCInvalidConfigurationException is used when required parameters are missing from the application configuration file, or the parameters specified are invalid for some reason. |
| ![Class](dotnetimages/Class.png) | [FCLicenseException](FChoice.Common~FChoice.Common.FCLicenseException.md) | FCLicenseException is used when a licensed product attempts to obtain a license key from the installed set of keys and either cannot find its key or an error occurs retreiving the list of licenses. |
| ![Class](dotnetimages/Class.png) | [InvalidLoggingConfigException](FChoice.Common~FChoice.Common.InvalidLoggingConfigException.md) |   |
| ![Class](dotnetimages/Class.png) | [Logger](FChoice.Common~FChoice.Common.Logger.md) | Logger is used by classes throughout First Choice .NET-based products to write logging entries. |
| ![Class](dotnetimages/Class.png) | [LogManager](FChoice.Common~FChoice.Common.LogManager.md) | LogManager provides access to the logging subsystem so that classes and write log entries and allow those entries to be processed according to the application logging configuration. |
| ![Class](dotnetimages/Class.png) | [PerfManager](FChoice.Common~FChoice.Common.PerfManager.md) | Provides basic convenience services for instrumenting performance counters in an application |
| ![Class](dotnetimages/Class.png) | [StringUtil](FChoice.Common~FChoice.Common.StringUtil.md) |   |

#### Interfaces

|   | Interface | Description |
| --- | --- | --- |
| ![Interface](dotnetimages/Interface.png) | [IErrorMessageProvider](FChoice.Common~FChoice.Common.IErrorMessageProvider.md) | The IErrorMessageProvider is the interface used by [FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md) to allow other assemblies to provide custom error message resolution. |

#### Enumerations

|   | Enumeration | Description |
| --- | --- | --- |
| ![Enumeration](dotnetimages/Enumeration.png) | [DataProtectionStore](FChoice.Common~FChoice.Common.DataProtectionStore.md) | DataProtectionStore is used with the [DataProtector](FChoice.Common~FChoice.Common.DataProtector.md) when encrypting or decrypting data. DataProtectionStore tells the DataProtector which key store to use. |
| ![Enumeration](dotnetimages/Enumeration.png) | [FCLicenseException.LoadFailReasons](FChoice.Common~FChoice.Common.FCLicenseException+LoadFailReasons.md) | LoadFailReasons is used by [FCLicenseException](FChoice.Common~FChoice.Common.FCLicenseException.md) to provide a specific reason why license procurement failed for the product. |
| ![Enumeration](dotnetimages/Enumeration.png) | [LogLevel](/sdk/FChoice.Common~FChoice.Common.LogLevel.md) | LogLevel is an enumeration of supported logging levels. This is used in conjunction with [LogManager](FChoice.Common~FChoice.Common.LogManager.md) and [Logger](FChoice.Common~FChoice.Common.Logger.md) to control how log messages are filtered or written to the output appender. |

#### Remarks

The FChoice.Common namespace is largely intended to be used by First Choice .NET products only. While public for your convenience, usage of any of these classes directly (except for Configuration or Logging) is discouraged.



#### Reference

[FChoice.Common Assembly](FChoice.Common.md)