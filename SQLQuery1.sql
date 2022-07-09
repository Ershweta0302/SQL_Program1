create database StorDB
use StorDB

CREATE TABLE[EmpRegistation](      
    [Id] [int] IDENTITY(1,1) NOT NULL,      
    [FirstName] [varchar](500) NOT NULL,    
    [LastName] [varchar](500) NOT NULL, 
	[PhoneNo][varchar](20) NOT NULL,
    [Email] [varchar](500) NOT NULL,   
    [Password] [varchar](500) NOT NULL,  
    [City] [varchar](50) NOT NULL,      
   )  

   CREATE TABLE EmpLogin
   (
   Id int primary key identity,
   Email varchar (500),
   Password varchar(200)
   )
   ---STORE PEROCDURE ---

CREATE procedure [dbo].[Usp_InsertUpdateDelete_Emp]  
@ID INT = NULL  
,@FirstName NVARCHAR(500) = NULL  
,@LastName NVARCHAR(500) = NULL  
,@PhoneNo NVARCHAR(15) = NULL  
,@Email NVARCHAR(300) = NULL
,@Password NVARCHAR(300) = NULL  
,@City NVARCHAR(500) = NULL  
,@Query INT  
AS  
BEGIN  
IF (@Query = 1)  
BEGIN  

INSERT INTO EmpRegistation(  
FirstName,
LastName,
PhoneNo,
Email,
Password,
City
) 
VALUES (  
@FirstName,
@LastName,
@PhoneNo,
@Email,
@Password,
@City
)  
IF (@@ROWCOUNT > 0)  
BEGIN  
SELECT 'Insert'  
END  
END  
IF (@Query = 2)  
---- Update ----
BEGIN  
UPDATE EmpRegistation  
SET FirstName = @FirstName,
	LastName = @LastName,
	PhoneNo = @PhoneNo,
	City=@City
WHERE EmpRegistation.Id =@ID  
SELECT 'Update'  
END  
IF (@Query = 3)  

-----Delete----
BEGIN  
DELETE  
FROM EmpRegistation  
WHERE EmpRegistation.Id=@ID --.CustomerID = @CustomerID  
SELECT 'Deleted'  
END  
IF (@Query = 4)  
BEGIN  
SELECT *  
FROM EmpRegistation  
END  
END  
IF (@Query = 5)  
BEGIN  
SELECT *  
FROM EmpRegistation
WHERE EmpRegistation.Id=@ID 
END

----Login---
CREATE procedure login_pro

(

        @Email varchar(300),

        @Password varchar(300)

)

as

declare @status int

if exists(select * from EmpLogin where Email=@Email and Password=@Password)

       set @status=1

else

       set @status=0

select @status