_AppendFilter_
--------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Sub AppendFilter(ByVal field_name As String, _

                        ByVal operation As String, _

                        ByVal value As Variant)

**Description**

This method adds another where clause for the generic object to query the database. This clause will be "anded" to other clauses in the object. The field name must be a valid field (or MTO/OTOP relation) in the table. The operation is one of the specified, approved relations, and the value should be a valid value for the database of the field.

You **MUST** set the DBObjectName (either by setting it, using SimpleQuery, ParentRelation/ParentBO, or TraverseFromParent) before you can call on this method. It requires that the generic object be set to a table or view first.

If you use the ISNULL or ISNOTNULL operator, the _value_ parameter is ignored. Also, depending on your programming language, you can test for NULL with the "=" or "<>" operators.

The method also performs some intelligent operations on the value. If the value has imbedded quotes, they are properly handled so that SQL can read them. For "IS IN" or "IS NOT IN" operators, you can place quotes around the items (for strings) as quotes or double quotes. The routine also handles having no quotes around the (string) items - it will place them for you. You also can have imbedded commas in the strings. For numerics, you should use no quotes.

The date/time filters are handy, but require a bit of care. Some of them (today, yesterday, tomorrow) do not have a value associated with them. Use the empty string ("") for the value field. The _on_ operator specifies a specific date. In other words, the query is finding out if the date/time was _on_ the date specified.

Within days and within hours allow you to specify that the date/time was within the specified (integer) number of days or hours. Finally, _between_ and _not between_ allow you to find dates/times either between or not between two dates/times. Those dates/times must be separated by either a comma or a space.

You may also use the "Now" date/time (-999) in any of the date operators, including between.

There is some special processing that is performed on date/time filters. If you suply a date but do not supply a time, **FCFL** attempts to put in the proper time for you. For example, if you have the "less than" filter (or before), and do not supply a time, AppendFilter will automatically fill in the time of midnight, so as to make sure that the filter is correct. Likewise for "after" (or >), the method will add the time of "11:59:59 PM" to the date if you provide only a date.

Similarly, the >= and <= filters add the proper dates. The "between" and "not between" will also add times to both the first and second dates if you do not supply times. The first date will have 11:59:59 PM added to it, and the second date will have midnight added to it. The reason for this is that "between" and "not between" are exclusionary. Saying "between 1/2/2004, 1/4/2004" should only return values on 1/3/2004 - not on either of the boundary dates.

Finally, there is an optional property on the FCApplication method called midnight.  This is an optional string that is really only needed to address some of the limitations in Oracle 7. If you specify this property (in the fc.env file, or programmatically), the string you supply for midnight is appended to any dates that do not have times supplied after them. This only occurs when time zone conversion changes the time to exactly midnight. The base **FCFL** routines, in this case, strip off the time from the date/time. This is not a problem for SQL Server, or later versions of Oracle. Hence the optional property. If you have questions about the property, you can always set it to a valid value - it will do no harm.

Note that none of the above special processing takes place if you provide a time in the value of the filter.

**Note**: The Within days and Within hours filters are restricted to a value of 1-999. If you wish a bigger value you must use the Filter property of the generic object.

**Note**: If you have very complex logic (such as with "Or" conditions), you can use the Filter property instead, as this method simply builds up the value in the Filter property for you.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| field_name | Yes | Valid field name for the database object. If you wish, you may also specify a valid MTO or OTOP relation name |
| operation | Yes | A string with a valid operation value. One of:<br>
1. ends with<br>
2. starts with<br>
3. contains<br>
4. not starts with<br>
5. not ends with<br>
6. not contains<br>
7. like<br>
8. not like<br>
9. equals (or =)<br>
10. <\> (or !=)<br>
11. less than (or <)<br>
12. greater than (or >)<br>
13. less or equal (or <=)<br>
14. greater or equal (or >=)<br>
15. before (date only)<br>
16. after (date only)<br>
17. sounds like<br>
18. is in (or in)<br>
19. is not in (or not in)<br>
20. isnull (nullable fields only)<br>
21. isnotnull (nullable fields only)<br>
22. today (use empty string for value)<br>
23. tomorrow (use empty string for value)<br>
24. yesterday (use empty string for value)<br>
25. on (use a date with NO time for the value)<br>
26. withindays (value is an integer)<br>
27. withinhours (value is an integer)<br>
28. olderthandays (value is an integer)<br>
29. olderthanhours (value is an integer)<br>
30. between (two dates, comma or space separated)<br>
31. not between (two dates, comma or space separated) |
| value | Yes | The value for comparison. |

**Error Codes**

**Value**                **Meaning**

12001                                      Bad operation specified

12002                                      Too many filters specified. Please use the Filter property instead

12022                                      The filter you have selected is not valid for the data type of this field

12023                                      The specified field is not valid for the query object

12025                                      The value for this AppendFilter is out of range. Valid values are 1-999

12027                                      The data supplied for a date filter is not a valid date

12028                                      A date and time was supplied for the "On" filter. This filter only allows a date to

be supplied

12033                                      The specified value is not numeric

**Example**

The following example uses AppendFilter to filter both a string and integer field from the case table.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Get some cases

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  boCase.AppendFilter("objid", "<", 268435459);

  boCase.AppendFilter("title", "not contains", "fred");

  boCase.Query();

  // Now print them out

  while (boCase.EOF != true)

  {

    Response.Write ("Case ID: " + boCase("id_number"));  

    boCase.MoveNext();

  }

**Visual Basic:**

The code in this example is written in Visual Basic. It finds cases created in the last 6 hours.

  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.AppendFilter "creation_time", "withinhours", 6

  boCase.Query

  While boCase.EOF = False

    MsgBox "Case ID: " & boCase("id_number")

    boCase.MoveNext

  Wend

The next example finds all cases created yesterday.

  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.AppendFilter "creation_time", "yesterday", ""

  boCase.Query

  While boCase.EOF = False

    MsgBox "Case ID: " & boCase("id_number")

    boCase.MoveNext

  Wend

The next example finds all cases created between January 1, 2000 and now.

  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.AppendFilter "creation_time", "between", "1/1/2000, -999"

  boCase.Query

  While boCase.EOF = False

    MsgBox "Case ID: " & boCase("id_number")

    boCase.MoveNext

  Wend