-- Hiển thị tất cả học viên 
 SELECT * FROM mini_test_tuan1_md3.student;


-- Hiện thị Học viên Có họ Nguyễn 
 select * from student where fullName like 'Nguyen%';

-- HIện thị Học viên tên Anh
select * from student where fullName like '%Anh';

-- Hiện thị học viên từ 18 đến 25 
select * from student where age between 18 and 25;

-- Hiện thi học viên có Id 12 hoặc 13 
select * from student where id = 12 or id = 13 ; 

-- thống kê số lượng học viên của các lớp
select class.id , class.name , count(student.id) as student_count from class 
left join student on class.id = student.class_id
group by class.id , class.name; 

-- thống kê học viên của các tỉnh
select address.address , count(student.id)  as student_count from address 
left join student on address.id = student.address_id
group by address.address;

-- tính điểm trung bình của khóa học 
select course.id , course.name , avg(point.point) as avg_point from course 
left join point on course.id = point.course_id 
group by course.id , course.name ;

-- Đưa ra khóa học có điểm trung bình cao nhất 
select course.id , course.name , avg(point.point) as avg_point from course 
left join point on course.id = point.course_id 
group by course.id , course.name 
order by avg(point.point) desc
limit 1;

