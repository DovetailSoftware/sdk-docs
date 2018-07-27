### GetMtmTableName Method (ClarifyApplication)

The MTM relation from which the MTM table name is to be generated

Returns the name of the physical MTM table for a given MTM relationship using the Clarify MTM naming conventions

#### Syntax

```vbnet
'Declaration

Public Function GetMtmTableName( _
   ByVal _relation_ As SchemaRelation _
) As String
```

```csharp
public string GetMtmTableName( 
   SchemaRelation _relation_
)
```

#### Parameters

_relation_

The MTM relation from which the MTM table name is to be generated

#### Return Value

The name of the physical MTM table for a given MTM relationship using the Clarify MTM naming conventions

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)