### GetObjID Method (ClarifyApplication)

The name of the table whose next objid to retreive.

Gets the next objid for the given table

Syntax

```vbnet
'Declaration

Public Function GetObjID( _
   ByVal _tableName_ As String _
) As Integer
```

```csharp
public int GetObjID( 
   string _tableName_
)
```

#### Parameters

_tableName_

The name of the table whose next objid to retreive.

#### Return Value

The next objid for this table.

Exceptions

| Exception | Description |
| --- | --- |
| [ClarifyException](fcSDK~FChoice.Foundation.Clarify.ClarifyException.md) | The table with the specified name could not be found or it is a view. |

Remarks

If caching of objids is enabled, the next objid will be retrieved from the local cache. If caching is disabled, a database query will be executed to retrieve the next id.

To configure caching, set the OBJID_CACHE_SIZE config item to the quantity of objid values to be reserved at a time, and then restart the application.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)