create procedure SP_tbl_registation

@name varchar(500),
@phone_no varchar(13),
@email varchar(50),
@password varchar(50),
@createdby nvarchar(500),
@isDeleted bit

as
begin
	insert into tbl_users([name],[phoneno],[email],[password],[createdby],[createdDate],[isDeleted])
	values(@name,@phone_no,@email,@password,@createdby,GETDATE(),@isDeleted)
end
go

exec SP_tbl_registation 'Ram','8976543287','ram10@r.com','567890','admin',0

select* from tbl_users

-- dlete data from table where isDeleted value is null
delete from tbl_users where isDeleted is null 