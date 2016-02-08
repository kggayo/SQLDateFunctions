----Today
SELECT GETDATE() 'Today'
----Yesterday
SELECT DATEADD(d,-1,GETDATE()) 'Yesterday'
----First Day of Current Week
SELECT DATEADD(wk,DATEDIFF(wk,0,GETDATE()),0) 'First Day of Current Week'
----Last Day of Current Week
SELECT DATEADD(wk,DATEDIFF(wk,0,GETDATE()),6) 'Last Day of Current Week'
----First Day of Last Week
SELECT DATEADD(wk,DATEDIFF(wk,7,GETDATE()),0) 'First Day of Last Week'
----Last Day of Last Week
SELECT DATEADD(wk,DATEDIFF(wk,7,GETDATE()),6) 'Last Day of Last Week'
----First Day of Current Month
SELECT DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0) 'First Day of Current Month'
----Last Day of Current Month
SELECT DATEADD(ms,- 3,DATEADD(mm,0,DATEADD(mm,DATEDIFF(mm,0,GETDATE())+1,0))) 'Last Day of Current Month'
----First Day of Last Month
SELECT DATEADD(mm,-1,DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0)) 'First Day of Last Month'
----Last Day of Last Month
SELECT DATEADD(ms,-3,DATEADD(mm,0,DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0))) 'Last Day of Last Month'
----First Day of Current Year
SELECT DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0) 'First Day of Current Year'
----Last Day of Current Year
SELECT DATEADD(ms,-3,DATEADD(yy,0,DATEADD(yy,DATEDIFF(yy,0,GETDATE())+1,0))) 'Last Day of Current Year'
----First Day of Last Year
SELECT DATEADD(yy,-1,DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0)) 'First Day of Last Year'
----Last Day of Last Year
SELECT DATEADD(ms,-3,DATEADD(yy,0,DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0))) 'Last Day of Last Year'

/*
ResultSet:

Today
———————–
2008-08-29 21:54:58.967

Yesterday
———————–
2008-08-28 21:54:58.967

First Day of Current Week
————————-
2008-08-25 00:00:00.000

Last Day of Current Week
————————
2008-08-31 00:00:00.000

First Day of Last Week
———————–
2008-08-18 00:00:00.000

Last Day of Last Week
———————–
2008-08-24 00:00:00.000

First Day of Current Month
————————–
2008-08-01 00:00:00.000

Last Day of Current Month
————————-
2008-08-31 23:59:59.997

First Day of Last Month
———————–
2008-07-01 00:00:00.000

Last Day of Last Month
———————–
2008-07-31 23:59:59.997

First Day of Current Year
————————-
2008-01-01 00:00:00.000

Last Day of Current Year
————————
2008-12-31 23:59:59.997

First Day of Last Year
———————–
2007-01-01 00:00:00.000

Last Day of Last Year
———————–
2007-12-31 23:59:59.997
*/