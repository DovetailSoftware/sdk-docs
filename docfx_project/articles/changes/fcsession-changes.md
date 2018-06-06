# FCSession Changes

## ProgID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| FCFL.FCSession | FCFLCompat.FCSession |

## Interface Name, IID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| _FCSession<br/>B7AEFF84-DFE5-40A5-985B-9888E2CF6949 | IFCSession<br/>772CB7F1-F6D6-4783-9390-979DE87386C9 |

## CoClass Name, CLSID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| FCSession<br/>78F7F24A-EF27-4934-8277-EEDEC1F3A684 | FCSession<br/>906C1CC2-5CE2-456b-BF53-129336DAA394 |

## Changed Properties

The following propertiess have changed between FCFL.FCSession and FCFLCompat.FCSession.

| Changed Property | FCFL.FCSession | FCFLCompat.FCSession |
|:--- |:--- |:--- |
| Item('config_itm.*.*') | Retrieves configuration item from database | Retrieves configuration item from FCSession cache |

## Changed Methods

The following methods have changed between FCFL.FCSession and FCFLCompat.FCSession.

| Changed Method | FCFL.FCSession | FCFLCompat.FCSession |
|:--- |:--- |:--- |
| ChangeResGroup | Parameters are ByRef | Parameters are ByVal |
| CreateBulk | Parameters are ByRef | Parameters are ByVal |
| CreateGeneric | Parameters are ByRef | Parameters are ByVal |
| GetColor | Parameters are ByRef | Parameters are ByVal |
| GetConfigItem | Retrieves configuration item from database | Retrieves configuration item from FCApplication cache |
| GetItem | Parameters are ByRef | Parameters are ByVal |
| GetUserVersion | Parameters are ByRef | Parameters are ByVal |
| IsUnicode | Parameters are ByRef | Parameters are ByVal |
| Item | Parameters are ByRef | Parameters are ByVal |
| ItemCount | Parameters are ByRef | Parameters are ByVal |
| LoadColor | Parameters are ByRef | Parameters are ByVal |
| LoadUserVersions | Parameters are ByRef | Parameters are ByVal |
| Log | Parameters are ByRef | Parameters are ByVal |
| Login | Parameters are ByRef | Parameters are ByVal |
| RemoveAllGenericsInABulk | Parameters are ByRef | Parameters are ByVal |

## New Properties

The following properties are new in FCFLCompat.FCSession.

| New Property | Comments |
|:--- |:--- |
| CurrentCulture | The culture to use for converting or displaying numbers, dates, and other culturally-sensitive data. This value must be a valid RFC 1766 culture/locale specifier (i.e. en-US - a lower-case two-or-three-letter ISO-639 or ISO 639-2 language code followed by a hyphen "-" then a two or three letter subculture code as defined by ISO-3166 Alpha 2). For more information on what culture specifiers are allowed and how to deal with conflict cultures and neutral cultures, please see the .NET Framework SDK documentation for the [CultureInfo]() class. |

## New Methods

The following methods are new in FCFLCompat.FCApplication.

| New Method | Comments |
|:--- |:--- |
| LogEx(string logLevel, string logMessage) | Alternate logging method that allows setting the log level. This method is similar to Logger.Log except that the log level is a string representation of the LogLevel enumeration (e.g "DEBUG", "INFO", "ERROR"). |
| StartTransacion(optional string isolationLevel) | Call this method when it is desired to have FCGeneric updates and queries be under the context of a transaction. When all database operations for the transaction are complete, call CommitTransaction.<br/><br/>Care should be taken using exception handling to invoke RollbackTransaction in the case of an error.<br/><br/>Valid IsolationLevel parameter strings match the .Net Framework Isolation Level Enumeration |
| CommitTransaction() | After calling StartTransaction() this method is called when all database operations for this trasaction are complete. |
| RollbackTransaction() | If StartTransaction() has previously been called. This method needs to be called if for some reason the transaction cannot be committed.<br/><br/>A rollback is necessary when an exception occurs during the lifetime of the transaction or some condition such that it is desired to return the database back to its pre-transaction state.<br/><br/>Care should be made when using database transactions to make sure all possible paths of code protect for thrown exceptions to avoid leaving an uncompleted transactions hanging around. |
