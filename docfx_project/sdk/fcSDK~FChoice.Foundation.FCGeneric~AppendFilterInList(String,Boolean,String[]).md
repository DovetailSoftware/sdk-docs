### AppendFilterInList(String,Boolean,String\[\]) Method

Name of the field the filter will be constraining.

**true** if desired values are in the List

Array of values to filter on

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible String values**.**

Syntax

```vbnet
'Declaration

Public Overloads Sub AppendFilterInList( _
   ByVal _fieldName_ As String, _
   ByVal _isIn_ As Boolean, _
   ByVal ParamArray _list_() As String _
) 
```

```csharp
public void AppendFilterInList( 
   string _fieldName_,
   bool _isIn_,
   params string[] _list_
)
```

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_isIn_

**true** if desired values are in the List

_list_

Array of values to filter on

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterInList.md)