

select * from reportingstructure


select employeename[reportee],null[manager] from ReportingStructure where managerid is null
union all
select b.EmployeeName[reportee],a.EmployeeName[manager]from ReportingStructure a
inner join reportingstructure b on
a.EmployeeID = b.managerid
