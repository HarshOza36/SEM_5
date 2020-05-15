<?xml version="1.0"?>
<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body bgcolor="cyan">
<center><h3>Table of Employees</h3></center>
<table border="1" align="center">
<tr bgcolor="red">
<th>EMPID</th>
<th>EMPNAME</th>
<th>Salary</th>
<th>DOB</th>
<th>DOJ</th>
<th>Address</th>
<th>DeptName</th>
<th>Designation</th>
</tr>

<xsl:for-each select="employeedetails/employee">
<tr>
<td><xsl:value-of select="empid"/>
</td>

<td><xsl:value-of select="ename"/>
</td>

<td><xsl:value-of select="sal"/>
</td>

<td><xsl:value-of select="dob"/>
</td>

<td><xsl:value-of select="doj"/>
</td>

<td><xsl:value-of select="addr"/>
</td>

<td><xsl:value-of select="deptname"/>
</td>

<td><xsl:value-of select="desg"/>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>