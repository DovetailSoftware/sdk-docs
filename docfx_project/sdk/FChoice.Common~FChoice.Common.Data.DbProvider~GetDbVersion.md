### GetDbVersion Method

Executes a statement against the database to retrieve the database software's version number

Overload List

| Overload | Description |
| --- | --- |
| [GetDbVersion()](FChoice.Common~FChoice.Common.Data.DbProvider~GetDbVersion().md) |   |
| [GetDbVersion(Boolean)](FChoice.Common~FChoice.Common.Data.DbProvider~GetDbVersion(Boolean).md) |   |

Remarks

**NOTE**: Oracle databases use a five-digit version numbering scheme. The .NET Version object only supports a four-digit numbering scheme. In most Oracle database versions, the fifth digit is zero. However, in the cases where it is not, the fifth digit will be dropped.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)