Create Procedure bordro
AS

Delete  from [dbo].[temptable]

declare @gunlukUcret float,@fazlaMesaiUcret float
set @gunlukUcret=150
set @fazlaMesaiUcret=50

Insert into [dbo].[temptable](TC,Ad,Soyad,Maas,Tip)

Select 

Emp.TC AS TC,
Emp.Ad AS Ad,
Emp.Soyad AS Soyad,

Case 
WHEN Emp.tipId = 1 THEN (Select dbo.tip1(Emp.id))
WHEN Emp.tipId = 2 THEN (Select dbo.tip2(Emp.id,@gunlukUcret))
WHEN Emp.tipId = 3 THEN (Select dbo.tip3(Emp.id,@fazlaMesaiUcret))
ELSE 0
END AS Maas,

Emp.tipId AS Tip

from  Employee as Emp 


Select * from [dbo].[temptable]