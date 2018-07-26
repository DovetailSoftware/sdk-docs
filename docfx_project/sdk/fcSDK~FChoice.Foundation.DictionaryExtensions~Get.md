### Get<T,V> Method

Syntax

```vbnet
'Declaration

<ExtensionAttribute()>
Public Shared Function Get
    (Of T,V)( _
   ByVal _dictionary_ As IDictionary(Of T,V), _
   ByVal _key_ As T _
) As V
```

```csharp
[ExtensionAttribute()]
public static V Get<T,V>( 
   IDictionary<T,V> _dictionary_,
   T _key_
)
```

#### Parameters

_dictionary_

_key_

#### Type Parameters

_T_

_V_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DictionaryExtensions Class](fcSDK~FChoice.Foundation.DictionaryExtensions.md)  
[DictionaryExtensions Members](fcSDK~FChoice.Foundation.DictionaryExtensions_members.md)