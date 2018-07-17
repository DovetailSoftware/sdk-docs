     RelateToIntField Method                                                   

fcSDK Documentation

RelateToIntField Method

The [row](fcSDK~FChoice.Foundation.GenericDataRow.md) whose unique Id will be put into the current row's Integer field.

Name of the Integer field which will receive the unique identifier of the **otherRow.**

Relate a given row's identifier to an Integer field present on this [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md).

Syntax

```vbnet
```csharp

'Declaration
 

Public Sub RelateToIntField( _
   ByVal _otherRow_ As [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md), _
   ByVal _intFieldName_ As String _
) 

public void RelateToIntField( 
   [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) _otherRow_,
   string _intFieldName_
)

#### Parameters

_otherRow_

The [row](fcSDK~FChoice.Foundation.GenericDataRow.md) whose unique Id will be put into the current row's Integer field.

_intFieldName_

Name of the Integer field which will receive the unique identifier of the **otherRow.**

Remarks

This relation method does not require that there be a relation present between the two rows being related. It is recommended that you use [RelateRecord](fcSDK~FChoice.Foundation.GenericDataRow~RelateRecord.md) whenever possible.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)