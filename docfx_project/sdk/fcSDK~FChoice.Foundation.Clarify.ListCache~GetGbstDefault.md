### GetGbstDefault Method (ListCache)

The name of the GBST/Application Pop-up list

Gets the default string value for a given application pop-up list.

#### Syntax

```vbnet
'Declaration

Public Function GetGbstDefault( _
   ByVal _listTitle_ As String _
) As String
```

```csharp
public string GetGbstDefault( 
   string _listTitle_
)
```

#### Parameters

_listTitle_

The name of the GBST/Application Pop-up list

#### Return Value

The default value for this GBST/Application Pop-up list

#### Remarks

If the no list exists with the specified _listTitle_, an exception will be thrown.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)