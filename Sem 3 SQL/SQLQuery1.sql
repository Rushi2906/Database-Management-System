--INSERT PROCEDURE
	CREATE PROCEDURE PR_STUDENT_INSERT
		@StuID				int,
		@Name				varchar(100),
		@enrollmentNo		varchar(12),
		@division			varchar(50),
		@sem				int,
		@Birthdate			varchar(100)
	AS
	BEGIN
		INSERT INTO Student
		(StuID,			
		 Name,						
		 enrollmentNo,	
		 division,
		 sem,			
		 Birthdate
		)
		VALUES
		(@StuID,			
		 @Name,					
		 @enrollmentNo,	
		 @division,			
		 @sem,			
		 @Birthdate
		)
	END
	
	PR_STUDENT_INSERT 106,'RUSHI MANANI',101010101010,'BCY-3',3,'2004,06,29'
	
	SELECT * FROM Student
	
	
--SELECT PROCEDURE

ALTER PROCEDURE PR_STUDENT_SELECT
	@STUID INT,
	@NAME VARCHAR(100)
AS
BEGIN
	SELECT STUID,NAME FROM Student
	WHERE STUID=@STUID AND NAME=@NAME
END

EXEC PR_STUDENT_SELECT 106,'RUSHI MANANI'

--UPDATE PROCEDURE

ALTER PROC PR_STUDENT_UPDATE
	@STUID INT
	
AS
BEGIN
	UPDATE Student SET STUID=@STUID
	WHERE NAME='RUSHI MANANI'
END

EXEC PR_STUDENT_UPDATE 101
SELECT * FROM Student

--DELETE PROCEDURE

CREATE PROC PR_STUDENT_DELETE
	@STUID INT
AS
BEGIN
	DELETE FROM Student WHERE STUID=@STUID
END

EXEC PR_STUDENT_DELETE 102
SELECT * FROM Student