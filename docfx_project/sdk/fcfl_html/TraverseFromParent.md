_TraverseFromParent_
--------------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Sub TraverseFromParent(ByVal the_parent As FCGeneric, _

                              ByVal trav_rel As String)

**Description**

This method sets up the parent/child relationship between two generic objects. It is exactly the same as setting the ParentRelation and ParentBO properties, but is easier.

This method should be called for the child generic object, and should specify the parent object, and the relation **ON THE PARENT** used to traverse between the two objects. Note that this is the opposite of the ParentRelation property which is the relation from the child to the parent.for example, to query a case, and the related contact record, you would create both generic objects and then specify:

boContact.TraverseFromParent(boCase, "case_reporter2contact");

In other words, the method specifies the parent generic object, and the relation you use on that parent to get to this (child) generic object.

You should not call on TraverseFromParent more than once in a row (or use the ParentRelation and ParentBO properties) without first calling the Untraverse method first. If you do, an error results.

**Note**: This method will set the DBObjectName for this generic object. Thus it is not necessary to set it for the child object.

**Note**: When you set the parent relation with ParentBO, the child object's BulkName is set to the parent's BulkName.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| the_parent | Yes | The parent generic object |
| trav_rel | Yes | The relation ON THE PARENT used to traverse between the two generic objects |

**Error Codes**

**Value**                **Meaning**

12024                                      Two TraverseFromParent calls were made on this generic without first calling

on the UnTraverse method.

**Example**

The following example queries case objects, and a related contact and site objects.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Get all cases

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  // Now get the related contacts

  var boContact = FCSession.CreateGeneric();

  boContact.TraverseFromParent(boCase, "case_reporter2contact"); 

  // Now get the related sites

  var boSite = FCSession.CreateGeneric();

  boSite.TraverseFromParent(boCase, "case_reporter2site");

  // Query the data, and display it 

  boCase.Query();

  while (boCase.EOF != true)

  {

    Response.Write ("Case: " + boCase("id_number") + "  Site/Contact: " +

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

  boContact.TraverseFromParent boCase, "case_reporter2contact" 

  Set boSite = fc_session.CreateGeneric

  boSite.TraverseFromParent boCase, "case_reporter2site"

  boCase.Query

  While boCase.EOF = False

    MsgBox "Case: " & boCase("id_number") & "  Site/Contact: " & _

           boSite("name") & " - " & boContact("first_name") & " " & _

           boContact("last_name")

    boCase.MoveNext

  Wend