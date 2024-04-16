CREATE DATABASE organization
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


create table employees(
	id serial primary key,
	name varchar(48),
	salary numeric,
	employment_date date,
	shop_id integer references shops(id)
)

create table shops( 
	id serial primary key ,
	address varchar(48),
	budget numeric,
	employees_number integer,
	opening_date date
)
-- Вставка в shops(Точки продаж)
insert into shops (address, budget, employees_number, opening_date) values ('468 Lotheville Court', '69630.66', 83, '11/05/2021')
,('0 Morning Junction', '88012.83', 61, '18/02/2023')
,('55 Cambridge Street', '52086.97', 68, '05/08/2021')
,('7 Eliot Pass', '85836.55', 60, '09/10/2022')
,('026 Clyde Gallagher Parkway', '38638.71', 53, '07/08/2021')
,('1028 Shoshone Pass', '99473.86', 37, '29/01/2024')
,('63047 Grasskamp Trail', '16323.89', 77, '23/11/2023')
,('93823 Arkansas Junction', '81272.40', 72, '21/09/2022')
,('5 Birchwood Alley', '62795.98', 45, '16/11/2022')
,('237 Warrior Drive', '76118.85', 26, '06/06/2021')
,('054 Kipling Circle', '62353.33', 22, '17/01/2023')
,('1 Coolidge Road', '66522.04', 45, '02/01/2022')
,('53518 Hanover Junction', '47289.07', 87, '28/07/2022')
,('8 2nd Avenue', '39116.69', 74, '28/02/2024')
,('383 Comanche Street', '99881.78', 54, '14/12/2020')
,('6 American Ash Lane', '92248.40', 65, '21/06/2021')
,('2068 Springs Street', '67729.99', 31, '12/02/2022')
,('5 Bayside Parkway', '27096.92', 48, '21/06/2020')
,('1929 Browning Street', '39818.40', 64, '02/05/2022')
,('3550 Fallview Place', '74473.95', 43, '10/01/2024')
,('5 Westport Court', '32981.87', 91, '19/11/2020')
,('15 Nevada Trail', '96107.21', 55, '11/02/2022')
,('07 Sachtjen Court', '26686.80', 20, '24/02/2022')
,('59510 Hagan Road', '37897.54', 79, '13/04/2024')
,('8140 Badeau Center', '48356.22', 61, '04/12/2022')
,('07 Buell Junction', '67100.88', 94, '15/04/2022')
,('38907 Comanche Junction', '50178.86', 93, '20/03/2023')
,('55040 Mallard Avenue', '71975.37', 77, '23/12/2021')
,('93 Village Drive', '29308.45', 31, '20/05/2023')
,('9 Maywood Court', '99292.64', 93, '09/01/2021')
,('94667 Holy Cross Park', '43441.60', 58, '14/07/2020')
,('11841 Kim Point', '62126.11', 50, '19/08/2022')
,('12232 Parkside Plaza', '42759.32', 89, '16/09/2023')
,('34 Mccormick Way', '31504.72', 68, '18/08/2020')
,('495 Muir Junction', '94998.55', 90, '14/08/2023')
,('98 Jackson Street', '62581.35', 39, '15/09/2022')
,('1857 John Wall Drive', '90057.68', 27, '27/01/2024')
,('75 Drewry Drive', '72500.18', 87, '21/07/2021')
,('578 Main Court', '29921.23', 60, '03/04/2021')
,('6 Blaine Way', '76419.36', 62, '22/06/2022')

-- Вставка в employees(Сотрудники)
insert into employees (name, salary, shop_id, employment_date) values ('Colet Levis', '7220.60', 20, '28/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Alvis Reeday', '4017.56', 7, '29/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Olenolin Housam', '8826.12', 33, '20/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Freeland Windless', '6436.28', 41, '14/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Kiley Culshew', '3938.83', 5, '13/04/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Elliott Celler', '3562.46', 24, '26/04/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Jayme Need', '2624.57', 27, '25/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Torr Whalley', '8846.52', 6, '10/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Eward Kenan', '6428.51', 11, '04/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Ivory Thirtle', '7607.68', 29, '04/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Job Bellerby', '4449.56', 5, '06/10/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Adelice Higford', '2115.54', 18, '02/04/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Carlee Huburn', '8100.88', 26, '28/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Tiphany Scraggs', '4404.24', 41, '14/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Yoko Blackman', '2053.18', 7, '01/12/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Nessa Telford', '3372.10', 7, '06/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Doti MacGinley', '7626.89', 20, '09/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Renado Meller', '7769.58', 6, '16/03/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Edward Showers', '8883.78', 16, '27/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Kristyn Dollimore', '8559.25', 23, '09/03/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Durand Chomicki', '7019.45', 32, '21/02/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Ahmad Jersh', '7741.47', 12, '12/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Milena Youll', '6089.98', 32, '26/09/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Friedrich Whitsun', '9062.55', 31, '07/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Ingram Millberg', '6301.94', 39, '30/03/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Donalt Gallandre', '5878.40', 42, '08/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Caressa Brashaw', '7990.82', 35, '21/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Harlin Bresnahan', '3021.71', 23, '19/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Pennie Gaskin', '4134.94', 32, '15/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Vina Jocelyn', '3772.23', 2, '09/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Cherise Smale', '7421.45', 31, '03/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Melina Cod', '3498.37', 13, '19/03/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Ram Ottey', '9339.04', 4, '01/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Drucie Lamprecht', '4857.37', 35, '08/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Michelina Erdely', '4514.95', 37, '13/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Lind Yon', '9330.52', 29, '11/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Carol Caines', '9187.99', 38, '04/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Dud McEttigen', '8859.09', 34, '28/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Hildy Gifford', '5499.90', 3, '06/03/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Tillie Dobell', '9298.17', 14, '04/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Berny Newby', '6655.30', 19, '08/08/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Nanine Voaden', '4477.12', 18, '22/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Creight Berringer', '9879.29', 39, '27/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('L;urette Coweuppe', '7150.70', 9, '24/05/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Olive Earingey', '5038.43', 5, '19/11/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Gabriel Benitti', '5213.80', 23, '23/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Arni Jain', '7386.11', 33, '07/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Cos Sangwin', '5578.86', 30, '24/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Anderea Paddell', '3129.78', 13, '02/01/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Ansley Seccombe', '8877.24', 6, '23/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Josselyn Scotford', '7085.44', 7, '19/11/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Brena Slimon', '2491.82', 3, '05/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Reed Greggs', '2367.93', 6, '02/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Nichols Peetermann', '9146.31', 36, '07/12/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Clem Golthorpp', '7454.18', 17, '01/05/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Virgilio Moules', '5458.71', 40, '17/04/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Rozelle Buntine', '5272.40', 38, '18/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Ripley Freke', '2872.57', 22, '10/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Marja Gillow', '4552.99', 4, '29/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Hilarius Fiske', '6203.13', 15, '02/01/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Rozele Mazdon', '2022.61', 30, '28/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Merola Colthard', '9356.56', 25, '27/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Jermayne Jack', '8932.83', 38, '23/04/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Chloe Stackbridge', '7185.33', 38, '29/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Suzanna Jimmison', '3950.83', 40, '02/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Laughton Heams', '6379.67', 23, '08/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Vic Demer', '2992.24', 29, '30/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Cathee Baseley', '5700.98', 3, '01/08/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Charmane Kinnach', '7652.38', 14, '08/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Kevina Chastagnier', '3427.70', 5, '12/11/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Vito Allibon', '2527.17', 34, '19/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Daisy De Filippi', '8734.56', 8, '26/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Brinna Gostall', '6117.47', 21, '17/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Galven Caban', '5821.62', 27, '08/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Aarika Rushworth', '8429.72', 25, '19/09/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Fredek Strain', '4488.92', 8, '08/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Twyla Sawell', '2947.33', 20, '06/11/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Sophia Parkman', '6923.90', 40, '12/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Crissy Sedgmond', '7895.87', 18, '26/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Dalenna Benez', '3629.61', 22, '01/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Selby Rosling', '3905.74', 17, '30/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Roderick Thying', '2883.96', 30, '12/02/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Jeri Eaken', '6586.87', 29, '10/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Junina Dannel', '4152.72', 31, '14/08/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Jillene Emmanuele', '9071.98', 9, '06/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Creighton Nurny', '2415.02', 39, '13/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Fairlie Beadell', '7887.45', 10, '26/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Oberon Leil', '8501.74', 6, '20/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Debera Wash', '8372.34', 11, '27/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Nickie Siebart', '6714.72', 19, '22/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Gib Pryor', '6691.87', 20, '22/05/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Graig Muehler', '2065.26', 17, '16/12/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Gaile Jendrach', '4457.43', 4, '24/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Alvira Ovendale', '9817.60', 23, '07/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Catharine Clopton', '6486.12', 24, '14/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Greg Twell', '2440.48', 3, '31/05/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Pryce Sincock', '9135.03', 41, '20/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Sibyl Capponeer', '9781.76', 18, '24/11/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Ardenia Tubbs', '8629.56', 39, '05/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Jacques Barts', '7240.74', 2, '23/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Vincenty Mcmanaman', '6726.45', 17, '06/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Chrissy McWhannel', '8833.46', 26, '15/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Fabiano Quinevan', '9874.65', 35, '02/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Merrily Domini', '4834.96', 37, '28/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Maisie Diggens', '7188.08', 13, '31/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Hillary Aireton', '6172.61', 13, '26/02/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Theobald McIlroy', '4938.17', 12, '10/10/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Morie Kenealy', '9779.71', 31, '09/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Jamima Giacomelli', '6670.29', 24, '13/03/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Aharon Zecchetti', '3608.96', 16, '26/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Robina Maliffe', '2200.01', 39, '23/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Junie Wabersich', '4588.76', 5, '05/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Malva Langstone', '3212.77', 12, '03/07/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Phyllida Huws', '6886.91', 24, '23/12/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Moll Jankovic', '6149.76', 33, '12/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Trudie Jirousek', '5889.42', 10, '09/05/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Bartholomeo Sabbins', '5378.56', 30, '07/07/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Jimmie Dunrige', '7707.62', 38, '12/03/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Lonna Scawton', '5517.72', 40, '14/05/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Ezra Darmody', '7209.65', 23, '09/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Erhard Bresland', '6658.64', 42, '20/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Kaitlyn Zottoli', '7797.60', 2, '29/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Arni Youngs', '7613.99', 6, '11/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Ardith Aggio', '8644.49', 34, '06/11/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Alano Plimmer', '3748.21', 32, '04/05/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Frederigo Royston', '7342.54', 41, '02/11/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Jerrine Spleving', '7708.41', 17, '14/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Jolyn Du Hamel', '9870.90', 26, '02/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Ashley Carlan', '9107.65', 9, '20/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Jo ann MacIan', '8049.20', 34, '30/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Alie Godly', '2867.84', 17, '14/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Krishna Fleischer', '3816.21', 38, '03/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Joanne Bunworth', '9027.83', 37, '06/07/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Theodor O''Carney', '6350.04', 23, '12/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Sterling Fry', '2541.11', 23, '19/05/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Camilla Welch', '5801.64', 31, '19/11/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Homer Pena', '8481.33', 28, '01/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Trudie Castana', '3273.52', 37, '07/01/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Eleanor Loach', '8887.94', 31, '31/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Cassy Mould', '9245.23', 41, '14/10/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Edward Latour', '9837.68', 4, '11/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Angelica Bottinelli', '2311.60', 19, '19/11/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Alvera Goucher', '7230.67', 33, '23/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Sileas Robertis', '6192.52', 14, '05/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Jillayne Othen', '5266.60', 39, '27/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Nissy Weekley', '3980.60', 36, '28/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Lydie Slaughter', '2433.11', 31, '17/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Sidonnie Antyshev', '6096.34', 31, '09/09/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Jasmin Forsard', '6212.98', 28, '12/04/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Giulietta Spickett', '6968.91', 12, '07/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Beth Loren', '6212.04', 30, '15/04/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Mano Hinchshaw', '9684.22', 22, '10/04/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Gery Rouse', '9951.26', 10, '29/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Robbi Maggs', '3683.65', 12, '10/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Turner Lohan', '5902.59', 7, '02/03/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Hurley Boards', '6607.73', 27, '30/11/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Jacynth Freschi', '7089.40', 7, '02/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Tybi Rubinfeld', '9297.76', 13, '03/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Muffin Mendez', '7160.41', 9, '19/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Lianna Sparks', '8313.25', 22, '01/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Sallie Inkpen', '7774.33', 18, '21/01/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Dasi Walas', '6100.33', 36, '26/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Harwilll Martlew', '9617.74', 25, '13/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Olvan Baum', '5541.25', 32, '13/12/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Boot Rizzotto', '4905.65', 19, '14/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Nikolia Limpenny', '7649.18', 22, '01/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Edi Braybrookes', '4262.27', 42, '09/05/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Bili Mallock', '3865.67', 28, '01/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Aleksandr Pelman', '2352.36', 23, '18/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Homere Rafter', '2432.45', 17, '17/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Ferguson Couves', '8321.63', 20, '08/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Flem Mabbott', '2374.69', 27, '24/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Pippa Coakley', '2321.79', 12, '28/04/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Lishe Huckin', '8701.60', 3, '08/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Sande Vick', '7928.78', 41, '16/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Katinka Braund', '8299.78', 40, '28/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Dick Santostefano.', '2183.90', 42, '14/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Saba Clemenson', '7456.86', 8, '24/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Ashlen Perl', '3178.78', 14, '14/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Jannel Vinden', '9219.84', 24, '07/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Ileana Ferron', '4521.80', 36, '11/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Debbi Lermit', '2041.17', 32, '26/02/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Beau Skirvin', '5975.27', 5, '22/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Gisela Husby', '5780.84', 32, '19/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Tanya Quinell', '2426.58', 3, '06/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Norene Bitten', '4206.28', 23, '18/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Sven Sturgess', '5522.84', 6, '28/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Fae Connold', '7249.79', 27, '20/04/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Ealasaid Torrisi', '9509.74', 28, '18/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Giraldo Colthard', '5279.18', 40, '05/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Antonina Cabel', '4643.64', 34, '27/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Maggy Imlock', '6149.53', 30, '16/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Con Lavall', '3494.10', 27, '10/04/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Orlando Pattisson', '2602.78', 8, '31/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Kerby O''Fogarty', '2194.60', 34, '05/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Allie Gelland', '3939.84', 34, '18/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Cynde Edelheid', '5691.96', 20, '26/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Virgil Lillee', '4248.80', 10, '26/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Tresa Rossant', '3056.73', 23, '19/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Kathye Christley', '3633.15', 7, '07/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Leanora Colhoun', '2038.38', 23, '10/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Patrizio Frid', '9248.13', 7, '08/04/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Abram Kemetz', '7807.14', 24, '09/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Mella Downton', '9658.58', 36, '02/04/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Ebba Seiller', '7966.14', 38, '25/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Evelyn Pree', '3899.85', 24, '06/10/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Tammie Rapier', '8374.17', 33, '16/04/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Rollo Echalier', '7263.70', 11, '11/07/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Averill Stronach', '9046.78', 13, '18/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Bianka Ellison', '7345.64', 34, '04/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Aurilia Croft', '5730.87', 13, '12/04/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Bili Yallop', '3181.73', 16, '27/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Randee Marquess', '7804.14', 21, '24/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Ajay Koop', '9215.06', 41, '22/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Joya Vince', '7996.02', 26, '12/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Agace Dainter', '4532.19', 23, '28/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Brittany McGuiness', '9136.28', 40, '11/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Wynny Cuer', '7772.53', 33, '12/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Ives Bendel', '2194.51', 26, '03/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Lyndsay Crisall', '8445.83', 42, '11/04/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Tani O''Day', '3351.52', 33, '23/04/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Annetta Becken', '5482.22', 18, '23/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Lind Blaze', '3927.50', 38, '23/03/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Bram Stearn', '4211.44', 4, '16/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Ronni Mingardi', '9318.48', 14, '20/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Alaric Silk', '5484.72', 25, '20/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Susanne Hadaway', '3030.31', 5, '25/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Edan McIlhagga', '6458.23', 13, '13/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Maurits Waudby', '7104.33', 4, '27/01/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Jerri Georgot', '5033.06', 13, '10/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Kimbra Huston', '7414.16', 41, '25/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Yuri Worling', '2557.68', 6, '28/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Ree Schops', '6909.79', 21, '26/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Bell Boerder', '5311.18', 27, '09/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Heddi Wilsee', '9887.89', 23, '30/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Bridie Karpol', '4861.33', 4, '21/05/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Laureen Degg', '5656.66', 19, '14/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Bronnie Slocombe', '7284.18', 31, '30/03/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Diane-marie Wafer', '7110.60', 29, '06/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Herbert Wedgbrow', '6348.87', 27, '04/05/2022');
insert into employees (name, salary, shop_id, employment_date) values ('See O''Sheerin', '4186.81', 24, '18/09/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Karola Adolf', '4760.57', 31, '17/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Correna Ingrem', '4030.46', 30, '10/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Sergeant Maynell', '2083.38', 30, '07/12/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Elmo Iannetti', '8307.35', 13, '20/12/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Evyn MacRirie', '6402.95', 23, '18/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Byron McMakin', '2839.64', 8, '27/12/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Richard Aimeric', '4070.56', 6, '13/07/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Frank Jameson', '9550.93', 42, '26/11/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Aliza Iacovides', '2455.55', 19, '05/10/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Doug Curd', '7592.98', 14, '03/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Jocko Oakley', '2321.11', 11, '28/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Marlie Desorts', '5948.76', 12, '11/12/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Zerk Bowbrick', '5619.13', 17, '02/03/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Clifford Croy', '8950.73', 41, '16/05/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Ainslee Chinge', '4308.09', 15, '24/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Alfi Kovalski', '7645.70', 34, '14/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Curry McKennan', '4045.66', 31, '07/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Stanislaw Armin', '7716.14', 14, '16/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Sonnie Rivett', '7487.69', 4, '16/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Lothario Bratley', '9299.51', 18, '25/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Arthur Beranek', '5262.87', 12, '04/05/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Annie Planks', '4157.71', 15, '19/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Stevana Squier', '7577.93', 3, '06/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Lizabeth Cowup', '2837.87', 33, '29/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Phillipp Daburn', '2310.06', 6, '12/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Briano Hastwell', '8913.00', 23, '01/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Rodina Garnsworth', '4346.67', 22, '08/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Daniela Patrone', '3868.65', 5, '02/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Ches Whimp', '2572.95', 40, '30/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Teodoor Steddall', '8732.25', 27, '20/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Amalia Digweed', '7555.89', 19, '16/02/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Daniela Houldin', '2728.62', 3, '13/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Vladamir McCowen', '2648.87', 2, '12/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Nanny Hullock', '5100.87', 12, '24/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Sheela Puckring', '7904.23', 22, '14/12/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Jack Mulgrew', '6612.95', 19, '27/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Sindee Heinke', '3103.71', 5, '04/09/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Russ Heinzler', '8786.96', 26, '09/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Loraine Dury', '3910.50', 34, '12/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Phil Rex', '8588.59', 5, '07/12/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Roman Gyorffy', '8033.18', 41, '14/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Cordelie Lebang', '4197.30', 23, '14/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Moss Mudge', '7753.42', 35, '09/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Barbara Fearon', '2624.98', 24, '12/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Godiva Jerrand', '3586.98', 25, '27/10/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Hashim Benettelli', '6223.10', 40, '01/12/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Nolana Carruth', '3233.08', 27, '04/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Pierette Klagge', '7081.68', 18, '05/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Toddie Gammon', '9351.66', 19, '23/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Addy Benedetti', '3736.13', 29, '08/04/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Marilee Bawles', '5453.51', 14, '30/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Tallou Rackam', '3903.30', 25, '09/11/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Griz Lippiello', '5032.85', 9, '25/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Imogen Eshmade', '2840.92', 4, '10/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Ruby Scanlin', '4879.96', 17, '24/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Cathee Rudeforth', '3315.78', 34, '12/11/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Staffard Lalonde', '2992.30', 11, '27/09/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Carlie McPeice', '2453.71', 38, '28/05/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Kacy Hydes', '3446.39', 37, '10/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Van Portriss', '2377.82', 22, '14/03/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Frazer Corbert', '3957.69', 28, '30/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Laurence Mellish', '7749.10', 35, '18/11/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Jorrie Bartlomiejczyk', '3050.24', 31, '15/04/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Jaime Spridgen', '8183.93', 6, '02/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Hussein Spackman', '6596.82', 19, '18/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Trudey Shortall', '9018.84', 36, '03/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Catlee Whetson', '4504.43', 24, '17/04/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Emile Paulmann', '4457.87', 10, '25/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Elisabeth Hatton', '5312.28', 37, '01/05/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Lonnie Crowcum', '3680.42', 13, '21/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Pat Hopfer', '4374.53', 2, '13/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Zorina Brownlie', '5795.76', 24, '23/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Emlyn Ellsbury', '4767.86', 17, '06/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Brocky Blowin', '7286.80', 17, '13/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Worth Drakes', '5152.92', 37, '20/11/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Sherilyn Dowman', '9392.91', 18, '15/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Nanni Rickersey', '8276.83', 2, '15/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Justina Krates', '9740.26', 35, '07/11/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Edik Lashmore', '4249.61', 41, '05/11/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Thatcher Titcom', '7124.55', 2, '31/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Celka Antalffy', '9900.55', 34, '21/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Janelle Stepto', '9800.88', 5, '28/03/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Abner Foulis', '8032.38', 38, '26/05/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Jayme Fallis', '4920.36', 40, '11/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Alisha Hambright', '2730.79', 5, '03/09/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Carlee Martini', '6894.21', 32, '02/04/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Miranda Orsi', '2907.76', 41, '28/05/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Lettie Beagley', '6326.77', 38, '14/03/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Bevvy Kinnerk', '3513.74', 15, '06/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Thorn Mityakov', '6306.16', 12, '14/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Purcell Lewsley', '9170.26', 25, '24/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Tim Peake', '3593.10', 13, '02/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Carlin McGarrahan', '2900.51', 2, '10/12/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Mattie Antyshev', '4531.63', 8, '16/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Gillian McCarle', '7883.29', 25, '08/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Elicia Kirwin', '4288.86', 2, '14/03/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Milt Davidai', '3894.07', 8, '18/11/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Dorelia Gores', '8672.40', 8, '23/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Mikaela Croad', '8418.91', 18, '27/07/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Arne Swayne', '5103.66', 4, '27/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Cornell Joyson', '3529.95', 6, '03/05/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Fredia Rapier', '7248.76', 7, '11/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Skippy Frend', '6887.34', 39, '29/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Ole Endricci', '5352.90', 5, '09/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Claribel Sandbach', '5020.52', 15, '22/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Karie Gartsyde', '4129.57', 8, '06/05/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Emiline Wilby', '9708.40', 10, '15/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Moss Hogben', '7978.72', 13, '23/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Timmie Yelyashev', '2618.16', 10, '01/04/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Nataniel Pydcock', '8868.11', 27, '13/04/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Ginnie Jowle', '3256.34', 32, '03/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Wilton Rodenborch', '5575.70', 34, '21/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Jeffie Shoebotham', '9579.24', 24, '22/03/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Netty Coniff', '9147.70', 12, '08/05/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Gerianne Farfalameev', '7001.66', 7, '22/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Mannie Springthorp', '6696.62', 11, '18/10/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Cristabel Durno', '3633.63', 14, '23/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Tammy Crocetti', '4705.40', 40, '03/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Nickey Brugemann', '9171.92', 26, '18/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Harland Beneix', '6586.13', 3, '30/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Cynthie Pochon', '8494.65', 17, '06/07/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Pennie Heavy', '8471.31', 22, '08/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Micaela O''Connor', '7978.20', 33, '17/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Alleen Worg', '4131.92', 34, '23/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Kennett Ludmann', '4402.30', 29, '02/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Carla Downer', '9515.92', 32, '31/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Hill Dossettor', '8886.42', 6, '21/07/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Marge Lebbern', '3515.02', 36, '17/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Flor Laurent', '2989.18', 36, '25/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Emmanuel Petrelli', '5213.89', 32, '31/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Emlyn Heiner', '9713.97', 36, '18/11/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Gun Perrington', '4640.95', 9, '09/12/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Aimee Kiss', '9386.62', 9, '11/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Merrily Currin', '3265.02', 39, '27/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Jonie Muck', '3470.95', 8, '05/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Missie Wabersich', '5806.49', 3, '20/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Elfrieda Drummond', '9111.93', 15, '29/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Cilka Freed', '5819.56', 23, '23/03/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Issy Beatson', '8789.20', 19, '07/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Giffard Harrowell', '6098.44', 22, '28/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Reynold Beert', '8905.23', 12, '12/02/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Bonny Dandie', '9543.37', 30, '12/05/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Fonzie Hubbocks', '7346.80', 23, '29/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Florella Horsefield', '8309.81', 5, '20/03/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Bert Kollasch', '2738.29', 18, '10/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Brose Woolger', '3516.29', 13, '27/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Gale Fulep', '4860.97', 39, '03/04/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Biddie Rippin', '9224.33', 16, '01/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Arleen Erbain', '2846.82', 6, '19/09/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Sofie Probetts', '4922.53', 12, '14/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Bent Awcoate', '9167.01', 18, '28/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Piggy Bithany', '3587.53', 19, '28/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Brnaby Brooks', '5816.67', 42, '21/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Roze Tarbert', '4150.14', 7, '03/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Marylynne Jorden', '2930.36', 34, '22/09/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Konrad MacCulloch', '5228.97', 23, '17/03/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Jasun Sholl', '6033.19', 16, '19/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Petronilla Drewet', '8922.79', 15, '14/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Elfreda Burbage', '6120.28', 26, '22/04/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Cyrillus Housden', '7190.23', 24, '22/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Emeline Vaughan-Hughes', '4285.92', 22, '31/12/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Linnea Rozenbaum', '4215.71', 9, '21/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Osmund Berget', '4922.13', 10, '22/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Evita Matschuk', '6289.71', 37, '06/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Marcelle Godbold', '5865.03', 2, '13/02/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Betta Colegrove', '7507.30', 26, '22/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Drugi Scobbie', '3296.86', 22, '05/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Kassie Sang', '6068.33', 23, '17/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Maybelle Hudspith', '2988.04', 12, '24/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Husein Peirce', '7071.01', 6, '15/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Yale Louiset', '4959.75', 5, '25/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Keary Mebius', '9063.58', 34, '19/03/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Blaire Chaffyn', '9097.80', 2, '30/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Queenie Sigart', '2620.69', 35, '24/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Coreen Khomishin', '2838.41', 24, '16/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Luigi Penton', '3743.65', 10, '25/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Erwin Nias', '2054.14', 35, '06/09/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Ranice Liven', '9965.33', 3, '10/11/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Barbaraanne Mustoo', '3670.06', 27, '03/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Regan Foyston', '9236.68', 31, '23/12/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Marris Southwick', '4325.88', 13, '26/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Caryl Stallon', '3492.72', 22, '14/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Florenza O''Carrol', '6963.07', 8, '07/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Martyn Sugden', '6368.61', 25, '22/05/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Estell Caldwall', '5321.02', 4, '29/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Annemarie Pitsall', '9520.54', 9, '08/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Allyn Raubenheimers', '5875.26', 29, '29/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Gabriell Kleint', '8537.37', 8, '29/05/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Constantin Nordass', '8570.29', 13, '23/06/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Timothea Chrippes', '8171.27', 6, '12/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Quinn Groome', '7586.11', 4, '20/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Mick Runchman', '2149.48', 16, '08/02/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Terrill Pitceathly', '7627.08', 41, '09/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Alastair Bosenworth', '8456.52', 18, '25/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Malchy Boyen', '4795.95', 27, '01/12/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Kendre Ginman', '4771.03', 25, '13/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Margareta Blannin', '7707.63', 11, '16/01/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Susie Lesley', '7962.28', 10, '23/10/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Flossie Karel', '2710.58', 39, '16/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Beulah Caudwell', '3120.40', 15, '05/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Cammy Horrod', '2653.33', 11, '21/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Robinet Hallahan', '5302.85', 17, '08/04/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Craggy Livesey', '5969.31', 11, '27/04/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Gar Beaney', '9768.91', 17, '04/02/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Sayer Stainfield', '9432.53', 14, '04/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Christian Lampens', '3479.21', 11, '05/08/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Jarvis Howe', '3829.50', 16, '09/04/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Lewiss Batte', '6920.53', 14, '21/07/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Charleen Ashness', '5571.46', 3, '28/03/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Yorgos Neames', '6440.93', 39, '29/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Hurley Hiseman', '9575.04', 42, '09/11/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Dermot Marquez', '5526.24', 25, '23/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Felic Cassius', '8243.19', 31, '12/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Josi Burchard', '9833.35', 34, '09/12/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Sheffield Reagan', '7797.01', 8, '02/02/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Arlee Rolfo', '7955.77', 18, '05/08/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Cris Reames', '7937.08', 15, '03/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Dov Sowthcote', '9350.90', 15, '10/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Ami Ewence', '4288.33', 5, '03/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Heinrik McKeown', '4014.34', 32, '02/11/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Christiana Verson', '3238.82', 40, '15/10/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Tate Avent', '6676.67', 24, '02/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Norma Durrell', '7607.97', 7, '12/01/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Reginald Shekle', '2080.82', 42, '28/06/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Gerri Wiggans', '5273.20', 18, '11/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Audrie Lequeux', '5194.21', 4, '07/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Moss Biskupek', '8900.71', 3, '15/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Edd Whorlton', '4333.89', 18, '14/11/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Edie Dulinty', '8421.16', 34, '18/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Margery O'' Bee', '9478.02', 17, '27/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Reube Gertray', '8902.88', 38, '30/07/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Eachelle McLoughlin', '5051.84', 23, '11/09/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Britni Bodell', '8559.59', 15, '25/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Beret Rosenberger', '7673.00', 20, '20/08/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Allistir Wolfindale', '4728.98', 36, '16/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Silvester Cuffe', '4168.50', 34, '20/05/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Loralee Ghelarducci', '7562.76', 14, '22/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Leeland Kincla', '2877.00', 20, '10/04/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Rozanne Bowers', '4060.57', 21, '17/01/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Marj Lago', '4702.81', 21, '12/12/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Bradly Gillison', '2705.37', 14, '17/11/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Philis Castelain', '5145.96', 31, '16/09/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Tirrell Hamfleet', '8910.61', 26, '29/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Brose Gerrels', '4527.69', 11, '22/04/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Maureen Gowland', '3117.96', 29, '23/06/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Rikki Brumby', '8896.67', 31, '19/06/2021');
insert into employees (name, salary, shop_id, employment_date) values ('Ladonna David', '8062.15', 16, '04/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Truman Haydn', '6269.39', 4, '23/09/2020');
insert into employees (name, salary, shop_id, employment_date) values ('Willi Bassano', '6808.62', 39, '11/07/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Colet Koubek', '2786.15', 11, '10/09/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Katharina Matyasik', '4118.81', 19, '21/10/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Aida Paish', '4419.06', 38, '21/08/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Dud Beathem', '7089.93', 9, '04/05/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Nancee Killock', '9107.31', 33, '28/03/2024');
insert into employees (name, salary, shop_id, employment_date) values ('Violante Carbery', '5663.58', 25, '21/12/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Gregoire Morden', '7047.74', 17, '22/02/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Den Heath', '2980.88', 19, '04/10/2022');
insert into employees (name, salary, shop_id, employment_date) values ('Aurilia Jorck', '5444.20', 3, '08/03/2023');
insert into employees (name, salary, shop_id, employment_date) values ('Gherardo Brecon', '5871.13', 29, '10/11/2021');
