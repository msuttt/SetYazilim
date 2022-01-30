create function tip3(@id int,@fazlaMesaiUcret decimal)
returns decimal
as 
begin
declare @sonuc decimal,@gunSayisi int,@saat int,@sabitMaas decimal,@fazlaMesaiSaat int,@hesaplananMaas decimal

set @gunSayisi=(Select count(tarih) as gunSayisi from WorkTime where tarih>='01/01/2022' and tarih<='01/31/2022' and employeeId=@id)
set @saat=(Select SUM(worktime) from WorkTime where tarih>='01/01/2022' and tarih<='01/31/2022' and employeeId=@id)
set @sabitMaas=(Select SabitMaas from Employee where id=@id)

set @fazlaMesaiSaat=@saat-(@gunSayisi*9)
set @hesaplananMaas=(@sabitMaas/30)*@gunSayisi

set @sonuc=@hesaplananMaas + (@fazlaMesaiUcret*@fazlaMesaiSaat)
return @sonuc
end