### GetEnumerator Method (DataParameterCollection)

Returns an enumerator for the entire collection

Syntax

```vbnet
'Declaration

Public Function GetEnumerator() As [IEnumerator](#)
```

```csharp
public [IEnumerator](#) GetEnumerator()
```

#### Return Value

An [IEnumerator](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsIEnumeratorClassTopic.htm) for the collection

Remarks

This returns an enumerator of each parameter in the collection, not the name/parameter pairs.

Enumerators only allow reading the data in the collection. Enumerators cannot be used to modify the underlying collection.  

Initially, the enumerator is positioned before the first element in the collection. Reset also brings the enumerator back to this position. At this position, calling Current throws an exception. Therefore, you must call MoveNext to advance the enumerator to the first element of the collection before reading the value of Current.  

Current returns the same object until either MoveNext or Reset is called. MoveNext sets Current to the next element.  

After the end of the collection is passed, the enumerator is positioned after the last element in the collection, and calling MoveNext returns false. If the last call to MoveNext returned false, calling Current throws an exception. To set Current to the first element of the collection again, you can call Reset followed by MoveNext.  

An enumerator remains valid as long as the collection remains unchanged. If changes are made to the collection, such as adding, modifying or deleting elements, the enumerator is irrecoverably invalidated and the next call to MoveNext or Reset throws an InvalidOperationException. If the collection is modified between MoveNext and Current, Current will return the element that it is set to, even if the enumerator is already invalidated.  

The enumerator does not have exclusive access to the collection; therefore, enumerating through a collection is intrinsically not a thread-safe procedure. Even when a collection is synchronized, other threads could still modify the collection, which causes the enumerator to throw an exception. To guarantee thread safety during enumeration, you can either lock the collection during the entire enumeration or catch the exceptions resulting from changes made by other threads.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)