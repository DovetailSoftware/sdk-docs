### GetLogger(Type) Method

GetLogger(Type) Method

The type which represents the name of the logger to retrieve.

Retrieves a logger for the given type name.

#### Syntax

```vbnet
'Declaration

Public Overloads Shared Function GetLogger( _
   ByVal _loggerType_ As Type _
) As Logger
```

```csharp
public static Logger GetLogger( 
   Type _loggerType_
)
```

#### Parameters

_loggerType_

The type which represents the name of the logger to retrieve.

#### Return Value

The logger configured for the specified logger type.

#### Remarks

It is generally a good idea to declare a logger once at the top of your class as a static member. Though this method does very little and has very little impact on performance, it makes the code easier to read by having access to the log whenever and wherever rather than being forced to retrieve it every time it's needed.

Example

This example shows a variety of ways in which to create a logger. The reccommended way is to declare a static (**Shared** in Visual Basic) Logger member at the top of your class and use Reflection to get the current type as demonstrated. This way is reusable in that you can copy and paste it into the top of every class.

```csharp
// Reusable (cut-n-paste) declaration you can put at the top of every class (recommended).
private static Logger log = LogManager.GetLogger( System.Reflection.MethodBase.GetCurrentMethod().DeclaringType );

// Will retrieve a logger named the same as the full type name (i.e. "Your.Assembly.TypeName").
Logger log = LogManager.GetLogger( this.GetType() );

// Will retrieve a logger by a specific name (not recommended).
Logger log = LogManager.GetLogger("some_unique_name");
```

```vbnet
' Reusable (cut-n-paste) declaration you can put at the top of every class (recommended).
Private Shared log As Logger = LogManager.GetLogger( System.Reflection.MethodBase.GetCurrentMethod().DeclaringType )

' Will retrieve a logger named the same as the full type name (i.e. "Your.Assembly.TypeName").
Dim log As Logger = LogManager.GetLogger( this.GetType() )

' Will retrieve a logger by a specific name (not recommended).
Dim log As Logger = LogManager.GetLogger("some_unique_name")
```

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)  
[Overload List](FChoice.Common~FChoice.Common.LogManager~GetLogger.md)