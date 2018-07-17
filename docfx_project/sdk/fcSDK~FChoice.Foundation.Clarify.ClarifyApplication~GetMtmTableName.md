     GetMtmTableName Method (ClarifyApplication)                                                   

fcSDK Documentation

GetMtmTableName Method (ClarifyApplication)

The MTM relation from which the MTM table name is to be generated

Returns the name of the physical MTM table for a given MTM relationship using the Clarify MTM naming conventions

Syntax

```vbnet
```csharp

'Declaration
 

Public Function GetMtmTableName( _
   ByVal _relation_ As [SchemaRelation](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaRelation.md) _
) As String

public string GetMtmTableName( 
   [SchemaRelation](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaRelation.md) _relation_
)

#### Parameters

_relation_

The MTM relation from which the MTM table name is to be generated

#### Return Value

The name of the physical MTM table for a given MTM relationship using the Clarify MTM naming conventions

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)