_UnTraverse_
------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub Untraverse()
```

#### Description

This method will clear the ParentRelation, ParentBO and root object properties for a generic object that was marked as a child or as a root query. It also works if you originally called on the TraverseFromParent or TraverseFromRoot methods.

It is not recommended that you use this method _after_ you have queried the generic object, as unexpected results with Move and Count may occur.

**Example**

The following example clears a child object relation after it was made in error.

**JavaScript:**
```
  // Set a case/contact relationship, and then unrelate it

  var boCase = FCSession.CreateGeneric();
  boCase.SimpleQuery("case");

  var boContact = FCSession.CreateGeneric();
  boContact.TraverseFromParent(boCase, "case_reporter2contact");

  // Remember that you now have to set the DBObjectName for the boContact 

  boContact.UnTraverse();
```

**Visual Basic:**
```
  Dim boCase As FCGeneric
  Dim boContact As FCGeneric

  Set boCase = fc_session.CreateGeneric
  boCase.SimpleQuery "case"

  Set boContact = fc_session.CreateGeneric
  boContact.TraverseFromParent boCase, "case_reporter2contact"

  boContact.Untraverse
```