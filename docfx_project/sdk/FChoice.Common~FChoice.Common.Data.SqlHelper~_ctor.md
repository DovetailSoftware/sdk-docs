### SqlHelper Constructor

Creates a new instance of SqlHelper with optional initialization parameters

#### Overload List

| Overload | Description |
| --- | --- |
| [SqlHelper Constructor()](FChoice.Common~FChoice.Common.Data.SqlHelper~_ctor().md) | Creates a new instance of SqlHelper using the default [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance   |
| [SqlHelper Constructor(DbProvider)](FChoice.Common~FChoice.Common.Data.SqlHelper~_ctor(DbProvider).md) | Creates a new instance of SqlHelper with the specified [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance   |
| [SqlHelper Constructor(String)](FChoice.Common~FChoice.Common.Data.SqlHelper~_ctor(String).md) | Creates a new instance of SqlHelper using the specified command text (SQL statement) with the [CommandType](FChoice.Common~FChoice.Common.Data.SqlHelper~CommandType.md) set to **Text**   |
| [SqlHelper Constructor(CommandType,String)](FChoice.Common~FChoice.Common.Data.SqlHelper~_ctor(CommandType,String).md) | Creates a new instance of SqlHelper with the specified [CommandType](FChoice.Common~FChoice.Common.Data.SqlHelper~CommandType.md) and command text (SQL statement)   |
| [SqlHelper Constructor(DbProvider,String)](FChoice.Common~FChoice.Common.Data.SqlHelper~_ctor(DbProvider,String).md) | Creates a new instance of SqlHelper using the specified [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance and command text (SQL statement) and the [CommandType](FChoice.Common~FChoice.Common.Data.SqlHelper~CommandType.md) set to **Text**   |
| [SqlHelper Constructor(DbProvider,CommandType,String)](FChoice.Common~FChoice.Common.Data.SqlHelper~_ctor(DbProvider,CommandType,String).md) | Creates a new instance of SqlHelper with the specified [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance, [CommandType](FChoice.Common~FChoice.Common.Data.SqlHelper~CommandType.md) and command text (SQL statement)   |

#### Remarks

All of the optional arguments passed into the constructor can be changed later using the similarly named properties on the SqlHelper instance. These constructor overloads are provided simply for convenience.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)