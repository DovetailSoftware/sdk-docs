### SchemaRelationCollection Class

#### Syntax

```vbnet
'Declaration

<DefaultMemberAttribute("Item")>
Public Class SchemaRelationCollection 
   Inherits FChoice.Foundation.DataObjects.DataObjectCollection(Of SchemaRelation)
   Implements FChoice.Foundation.Schema.ISchemaRelationCollection 
```

```csharp
[DefaultMemberAttribute("Item")]
public class SchemaRelationCollection : FChoice.Foundation.DataObjects.DataObjectCollection<SchemaRelation>, FChoice.Foundation.Schema.ISchemaRelationCollection  
```

#### Inheritance Hierarchy

System.Object  
   [System.Collections.Generic.List<T>](#)  
      [FChoice.Foundation.DataObjects.DataObjectCollection<T>](fcSDK~FChoice.Foundation.DataObjects.DataObjectCollection`1.md)  
         **FChoice.Foundation.Clarify.Schema.SchemaRelationCollection**  

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify.Schema](fcSDK~FChoice.Foundation.Clarify.Schema_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[SchemaRelationCollection Members](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaRelationCollection_members.md)  
[FChoice.Foundation.Clarify.Schema Namespace](fcSDK~FChoice.Foundation.Clarify.Schema_namespace.md)