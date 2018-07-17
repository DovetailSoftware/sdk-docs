_ParentBO_
----------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

Public ParentBO As FCGeneric

**Description**

This property contains the parent generic object for this generic object. This property is used when querying multiple tables, and traversing from one to another. The object placed in this property is the parent generic. For each row in that parent generic, using the relation in the ParentRelation property,  the related rows in this object are found. For example, if we query the case table, and wish also to see the related activity logs for those cases, we would create a generic object for the activity log table, and place the case generic in the ParentBO property of the activity log generic.

**Note**: When you set the parent relation with ParentBO, the child object's BulkName is set to the parent's BulkName.

**Example**

The following example demonstrates querying the case table, and then traversing to retrieve the related contact and related site.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

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

**Visual Basic:**

The code in this example is written in Visual Basic.

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