     AppendFilterInList(String,Boolean,DateTime\[\]) Method                                                   

fcSDK Documentation

AppendFilterInList(String,Boolean,DateTime\[\]) Method

Name of the field the filter will be constraining.

**true** if desired values are in the List

Array of values to filter on

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible DateTime values**.**

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub AppendFilterInList( _
   ByVal _fieldName_ As String, _
   ByVal _isIn_ As Boolean, _
   ByVal ParamArray _list_() As [Date](#) _
) 

public void AppendFilterInList( 
   string _fieldName_,
   bool _isIn_,
   params [DateTime](#)\[\] _list_
)

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_isIn_

**true** if desired values are in the List

_list_

Array of values to filter on

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterInList.md)