

select * from Students

--highest first in general query

select * from students order by marks desc

--row_number() is it used to give numbers randomly
select *, row_number() over (order by marks desc)[row number] from students

--rank() - when a tie appears it skips the number

select *,rank() over(order by marks desc)[rank number] from students

-- dense_rank() even though the tie appears ranks will be not skipped

select *,dense_rank() over (order by marks desc)[rank_no] from students


--partition by 

--row_number

select *,row_number() over(partition by subject order by marks desc)[row num] from students


select *,row_number() over(partition by student_name order by marks )[row num] from students

-- rank()

select *,rank() over (partition by subject order by marks)[rank] from students


select *,rank() over (partition by student_name order by marks desc)[rank] from students

-- dense_rank()

select *,dense_rank() over(partition by subject order by marks desc) [rank num]from students

select *,dense_rank() over(partition by student_name order by marks desc)[ranks] from students