Create function tip2(@id int,@gunlukUcret decimal)
returns decimal
as
begin
declare @gunSayisi int,@sonuc decimal
set @gunSayisi=(Select count(tarih) as gunSayisi from WorkTime where tarih>='01/01/2022' and tarih<='01/31/2022' and employeeId=@id)
set @sonuc=@gunlukUcret*@gunSayisi

return @sonuc
end