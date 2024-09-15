--Агрегатные и скалярные функции
--1. Вывести общее количество предметов в каждом фонде
select count(mp.Inventarny_Nomer) Количество, mp.ID_Museum_Fond from dbo.Cartochka_Museum_Predmet mp
group by mp.ID_Museum_Fond

--2. Вывести др cамого старого автора, родившего после 17 века в стране с кодом 1
select a.Kod_Country ,min(a.Birthday) ДР from dbo.Author a
where a.Birthday > '1601-01-01'
group by a.Kod_Country
having a.Kod_Country = 1

--3. Вывести в каком году каждый автор представил свой последний предмет
select mp.ID_Author, max(mp.Date_Of_Creation) Дата from dbo.Cartochka_Museum_Predmet mp
where mp.ID_Author is not null
group by mp.ID_Author

--4. Вывести со сколькими музейными фондами сотрудичает каждый музей
select ad.ID_Musey, count(ad.ID_Museum_Fond) Количество_Фондов from dbo.Act_Dvigenia ad
group by ad.ID_Musey

-- 5. Вывести название экспоната, год создания
select mp.Name, year(mp.Date_Of_Creation) Год_создания from dbo.Cartochka_Museum_Predmet mp

--6. Вывести фамилию и имя руководителей, надбавку и зарплату, у которых они не определены, поменяв на ноль
SELECT r.Surname, r.Name, ISNULL(r.Oklad, 0.00) ОКЛАД, ISNULL(r.Nadbavka, 0.00) НАДБАВКА,
ISNULL(r.Oklad, 0.00) + ISNULL(r.Nadbavka, 0.00) ЗАРПЛАТА FROM dbo.Rucovoditel r
WHERE ISNULL(r.Oklad, 0.00)= 0.00 OR ISNULL(r.Nadbavka, 0.00) = 0.00

--Внутренние и внешние соединения

--1.  Вывести название музея, город и название улицы и номер дома, на которой они расположены.
SELECT m.Name, c.Name, s.Name, m.Number_House FROM dbo.Musey m JOIN dbo.Street s 
ON m.Kod_Street = s.Kod_Street JOIN dbo.City c
on s.Kod_City = c.Kod_City

--2. Вывести сколько предметов есть в фондах каждого вида
SELECT vf.Name, COUNT(mp.Inventarny_Nomer) Количество_предметов
FROM dbo.Vid_Fonda vf JOIN dbo.Museum_Fond mf
ON vf.ID_Vid_Fonda = mf.ID_Vid_Fonda JOIN dbo.Cartochka_Museum_Predmet mp 
ON mf.ID_Museum_Fond = mp.ID_Museum_Fond
GROUP BY vf.Name;

--3. Вывести количество музеев в каждом городе.
SELECT c.Name, COUNT(m.ID_Musey) Количество_музеев FROM dbo.City c JOIN dbo.Street s
ON c.Kod_City = s.Kod_City JOIN dbo.Musey m 
ON s.Kod_Street = m.Kod_Street
GROUP BY c.Name

--4. Вывести все музеи и выставки, которые в них проводятся, включая музеи без выставок.
SELECT m.Name, v.Name FROM dbo.Musey m LEFT JOIN dbo.Vistavka v ON m.ID_Musey = v.ID_Musey

--5. Определить музеныйе фонды, которые сотрудничают с разными музеями
select distinct mf.Name, ad.ID_Musey, ad2.ID_Musey from dbo.Act_Dvigenia ad join dbo.Act_Dvigenia ad2
on ad.ID_Museum_Fond = ad2.ID_Museum_Fond and ad.ID_Musey > ad2.ID_Musey join dbo.Museum_Fond mf
on mf.ID_Museum_Fond = ad.ID_Museum_Fond 


--Вложенные запросы

-- 1. Вывести список экспанатов, созданные авторами из России
SELECT CMP.Name FROM dbo.Cartochka_Museum_Predmet CMP
WHERE CMP.ID_Author IN (SELECT A.ID_Author FROM dbo.Author A
WHERE A.Kod_Country = (SELECT C.Kod_Country FROM dbo.Country C WHERE C.Name = 'Россия'))


--2. Вывести список музеев, которые организовали выставки из фонда 4
SELECT M.Name FROM dbo.Musey M
WHERE M.ID_Musey IN (SELECT AD.ID_Musey FROM dbo.Act_Dvigenia AD WHERE AD.ID_Museum_Fond = 4)


--3. Вывести информацию о хранители, которые отвечают за фонды с типом фонда 'ЖИВОПИСЬ'
SELECT H.ID_Hranitel, H.Surname, H.Name FROM dbo.Hranitel H
WHERE H.ID_Hranitel IN (SELECT MF.ID_Hranitel FROM dbo.Museum_Fond MF WHERE
MF.ID_Vid_Fonda = (SELECT VF.ID_Vid_Fonda FROM dbo.Vid_Fonda VF WHERE VF.Name = 'Живопись'))


--4. Вывести список музеев, которые имеют фонды с предметами, созданными авторами, родившимися до '1900-01-01'
SELECT M.ID_Musey, M.Name FROM  dbo.Musey M
WHERE M.ID_Musey IN (SELECT [ID_Musey] FROM dbo.Act_Dvigenia AD WHERE AD.ID_Museum_Fond IN (
SELECT CMP.ID_Museum_Fond FROM dbo.Cartochka_Museum_Predmet CMP
WHERE CMP.ID_Author IN (SELECT  A.ID_Author FROM dbo.Author A WHERE A.Birthday < '1900-01-01')))


--5. Вывести информацию о хранителях, которые отвечают за фонды, содержащие предметы, созданные в 19 веке
SELECT  H.Surname, H.Name FROM dbo.Hranitel H
WHERE H.ID_Hranitel IN (SELECT MF.ID_Hranitel FROM  dbo.Museum_Fond MF
WHERE MF.ID_Museum_Fond IN (SELECT CMP.ID_Museum_Fond FROM  dbo.Cartochka_Museum_Predmet CMP
WHERE YEAR(CMP.Date_Of_Creation) BETWEEN 1800 AND 1899))