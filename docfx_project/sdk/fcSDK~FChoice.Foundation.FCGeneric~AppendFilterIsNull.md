### AppendFilterIsNull Method

Name of the field the filter will be constraining.

**true** if searching for NULLvalues

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against NULL or NOT NULL fields.

#### Syntax

```vbnet
'Declaration

Public Sub AppendFilterIsNull( _
   ByVal _fieldName_ As String, _
   ByVal _isNull_ As Boolean _
) 
```

```csharp
public void AppendFilterIsNull( 
   string _fieldName_,
   bool _isNull_
)
```

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_isNull_

**true** if searching for NULLvalues

#### Remarks

Filters are a powerful feature that make it easy to limit the rows returned by a [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md). You may call filter methods multiple times resulting in each successive filter further constraining the rows returned.

You can call [ClearFilters](fcSDK~FChoice.Foundation.FCGeneric~ClearFilters.md) to remove all the filters being applied to a FCGeneric.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)