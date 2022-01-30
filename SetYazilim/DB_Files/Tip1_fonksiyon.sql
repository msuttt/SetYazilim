Create function tip1(@id int)
returns decimal
as
begin
declare @gunSayisi int,@sabitMaas int,@sonuc decimal
set @gunSayisi=(Select count(tarih) as gunSayisi from WorkTime where tarih>='01/01/2022' and tarih<='01/31/2022'  and employeeId=@id)
set @sabitMaas=(Select SabitMaas from Employee where id=@id)
set @sonuc=(@sabitMaas/30)*@gunSayisi

return @sonuc
end