### PrepareParameter Method (DbProvider)

The parameter to prepare for the query

The type of query being performed

Prepares a parameter for the specified type of query according to the rules of the underlying database type

#### Syntax

```vbnet
'Declaration

Public Overridable Sub PrepareParameter( _
   ByVal _param_ As IDbDataParameter, _
   ByVal _cmdType_ As CommandType _
) 
```

```csharp
public virtual void PrepareParameter( 
   IDbDataParameter _param_,
   CommandType _cmdType_
)
```

#### Parameters

_param_

The parameter to prepare for the query

_cmdType_

The type of query being performed

#### Remarks

Different database types and even different query types within the same database type have different requirements for how parameters must be named or formatted. This method allows the specific DbProvider to prepare the parameter as appropriate.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)