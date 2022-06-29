### SchemaFieldCollectionBase Class

#### Syntax

```vbnet
'Declaration

<DefaultMemberAttribute("Item")>
Public MustInherit Class SchemaFieldCollectionBase 
   Inherits FChoice.Foundation.DataObjects.DataObjectCollection(Of SchemaFieldBase)
   Implements FChoice.Foundation.Schema.ISchemaFieldCollection 
```

```csharp
[DefaultMemberAttribute("Item")]
public abstract class SchemaFieldCollectionBase : FChoice.Foundation.DataObjects.DataObjectCollection<SchemaFieldBase>, FChoice.Foundation.Schema.ISchemaFieldCollection
```

#### Inheritance Hierarchy

System.Object  
   [System.Collections.Generic.List<T>](#)  
      [FChoice.Foundation.DataObjects.DataObjectCollection<T>](fcSDK~FChoice.Foundation.DataObjects.DataObjectCollection`1.md)  
         **FChoice.Foundation.Clarify.Schema.SchemaFieldCollectionBase**  
            [FChoice.Foundation.Clarify.Schema.SchemaTableFieldCollection](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaTableFieldCollection.md)  
            [FChoice.Foundation.Clarify.Schema.SchemaViewFieldCollection](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaViewFieldCollection.md)  

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify.Schema](fcSDK~FChoice.Foundation.Clarify.Schema_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[SchemaFieldCollectionBase Members](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaFieldCollectionBase_members.md)  
[FChoice.Foundation.Clarify.Schema Namespace](fcSDK~FChoice.Foundation.Clarify.Schema_namespace.md)