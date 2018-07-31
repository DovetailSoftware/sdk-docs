_Query(FCGeneric)_
------------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Sub Query()

**Description**

This method causes the generic object to query the database (based on the DBObjectName, the Filter, the SortFields, and the DataFields you have set for this object) to retrieve records. The query retrieves 0 or more rows, and places them in the recordset for the generic object.

If you are using child objects (traversing from one generic object to another), you only have to query the parent object. **FCFL** will then query all of the child objects for you automatically. For example, if you wish to query the case object for one specific case, but also wish to get all related activity logs and the related contact, you would set up the case, activity_log, and contact generic objects (see example below), and would only have to query the case generic object.

If you have more than one object that you wish to query at the same time that are **NOT** related, put them in the same bulk, and use the FCBulk.Query method.

**Note**: If you perform a query on the generic object, the recordset for the records is then "Open." You may **NOT** perform another query on the same generic objects unless you close the recordset first. To do that, call on the following code (assume the name of the generic object is boCase):

boCase.Records.Close();

**Note**: For ADO-savvy users, the recordset for the generic object is disconnected from the database as a final part of the query.

**Error Codes**

**Value**                **Meaning**

12005                                      The SQL query () is not valid

12006                                      The object to query does not have a DBObjectName specified

12007                                      You attempted to query a child object using a relation that was not queried for in

the parent generic object

12016                                      One of the data restriction clauses for this object is not valid

12018                                      The generic object to be queried is open, and may not be queried. Please close

the object before you attempt the query

12021                                      Your query returned () rows. Maximum allowed for this query is ().

12032                                      You must specify data fields for distinct queries. This query is for a distinct

query, but has not defined data fields.

**Example**

The following example queries a specific case, all related activity logs, and the related contact.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Get all cases, activity logs, and contact.

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  var boAct = FCSession.CreateGeneric();

  boAct.TraverseFromParent(boCase, "case_act2act_entry");

  var boContact = FCSession.CreateGeneric();

  boContact.TraverseFromParent(boCase, "case_reporter2contact");

  // Now query the data

  boCase.Query();

  // Display return data. First the case, then all activity logs

  //  then the one contact for the case

  while (boCase.EOF != true)

  {

    Response.Write ("Case ID: " + boCase("id_number"));

    while (boAct.EOF != true)

    {

      Response.Write("  Activity: " + boAct("objid"));

      boAct.MoveNext();

    }

    while (boContact.EOF != true)

    {

      Response.Write("  Contact: " + boContact("first_name") + " " +

                                   boContact("last_name"));

      boContact.MoveNext();  

    }

    boCase.MoveNext();

  }

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Dim boAct  As FCGeneric

  Dim boCont As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  Set boAct = fc_session.CreateGeneric

  boAct.TraverseFromParent boCase, "case_act2act_entry"

  Set boCont = fc_session.CreateGeneric

  boCont.TraverseFromParent boCase, "case_reporter2contact"

  boCase.Query

  While boCase.EOF = False

    MsgBox "Case: " & boCase("id_number")

    While boAct.EOF = False

      MsgBox "Activity: " & Trim$(Str$(boAct("objid")))

      boAct.MoveNext

    Wend

    While boCont.EOF = False

      MsgBox "Contact: " & boCont("first_name") & " " & _

                           boCont("last_name")

      boCont.MoveNext

    Wend

    boCase.MoveNext

  Wend