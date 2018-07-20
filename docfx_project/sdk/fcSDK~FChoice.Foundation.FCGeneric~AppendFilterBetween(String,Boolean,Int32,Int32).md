### AppendFilterBetween(String,Boolean,Int32,Int32) Method

Name of the field the filter will be constraining.

**true** if desired rows fall between the two values

value on the left side of the between clause

value on the right side of the between clause

Adds a specialized filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to be between two Integer values.

Syntax

```vbnet
'Declaration
 
Public Overloads Sub AppendFilterBetween( _
   ByVal _fieldName_ As String, _
   ByVal _isBetween_ As Boolean, _
   ByVal _value1_ As Integer, _
   ByVal _value2_ As Integer _
) 
```

```csharp
public void AppendFilterBetween( 
   string _fieldName_,
   bool _isBetween_,
   int _value1_,
   int _value2_
)
```

#### Parameters

_fieldName_

Name of the field the filter will be constraining.

_isBetween_

**true** if desired rows fall between the two values

_value1_

value on the left side of the between clause

_value2_

value on the right side of the between clause

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterBetween.md)