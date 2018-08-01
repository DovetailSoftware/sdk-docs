_ParentRelation_
----------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public ParentRelation As String
```

#### Description

This property contains the name of the relation that points **_FROM_** a parent object to this child generic. It is not the name of the relation that points from this child generic. This property is used when querying multiple tables, and traversing from one to another. For example, if we query the case table, and wish also to see the related activity logs for those cases, we would create a generic object for the activity log table, and place the _case_act2act_entry_  relation name in the ParentRelation property.

When this property is used, you must always also set the ParentBO property for the child object.

This property should only be set for objects that are "children" objects in a query (being visited based on the value of a parent row in the parent business object. When you simply query a table (such as the case table above), or query a view, this property should not be set.

Also, it is recommended to use the advanced TraverseFromParent method instead of using this property.

**Note**: This property is not defined for generic objects on views, only on data tables.

**Example**

The following example demonstrates querying the case table, and then traversing to retrieve the related contact and related site.

**JavaScript:**
```
  // Get all cases
  var boCase = FCSession.CreateGeneric();
  boCase.SimpleQuery("case");

  // Now get the related contacts
  var boContact = FCSession.CreateGeneric();
  boContact.ParentBO = boCase;
  boContact.ParentRelation = "case_reporter2contact";

  // Now get the related sites
  var boSite = FCSession.CreateGeneric();
  boSite.ParentBO = boCase;
  boSite.ParentRelation = "case_reporter2site";

  // Query the data, and display it 
  boCase.Query();

  while (boCase.EOF != true)
  {
    Response.Write ("Case: " + boCase("id_number") + "  Site/Contact: " +
                  boSite("name") + " - " + boContact("first_name") +
                  " " \+ boContact("last_name"));        
    boCase.MoveNext();
  }
```

**Visual Basic:**
```
  Dim boCase As FCGeneric
  Dim boSite As FCGeneric
  Dim boContact As FCGeneric

  Set boCase = fc_session.CreateGeneric
  boCase.SimpleQuery "case"

  Set boContact = fc_session.CreateGeneric
  boContact.ParentBO = boCase
  boContact.ParentRelation = "case_reporter2contact"

  Set boSite = fc_session.CreateGeneric
  boSite.ParentBO = boCase
  boSite.ParentRelation = "case_reporter2site"

  boCase.Query

  While boCase.EOF = False
    MsgBox "Case: " & boCase("id_number") & "  Site/Contact: " & _
           boSite("name") & " - " & boContact("first_name") & " " & _
           boContact("last_name")
    boCase.MoveNext
  Wend
```