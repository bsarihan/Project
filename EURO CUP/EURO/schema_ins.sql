
DELETE FROM matches;
DELETE FROM Euro;
DELETE FROM Stadiums;
DELETE FROM Groups;
DELETE FROM FranceMatches;
DELETE FROM FranceGroups;
DELETE FROM FranceStadiums;


INSERT INTO public.Groups(ID, Teams) VALUES 
('Group A',  ' Turkey, Italy, Wales, Switzerland'), ('Group B',  ' Denmark, Finland, Belgium, Russia'),
('Group C',  ' Netherlands, Ukraine, Austria, North Macedonia'),('Group D',  ' England, Croatia, Scotland, Czech Republic'),
('Group E',  ' Spain, Sweden, Poland, Slovakia'),('Group F',  ' Hungary, Portugal, France, Germany');

INSERT INTO public.Matches(Nr, Teams, time_, dates) VALUES 
(1,'Turkey - Italy', '21:00', '11/06'), (2, ' Wales    -   Switzerland', '15:00', '12/06'), 
(3, 'Denmark    -   Finland', '18:00', '12/06'), (4, 'Belgium    -   Russia', '18:00', '12/06'),
(5, 'Netherlands  -   Ukraine', '21:00', '13/06'), (6, 'Austria      -   North Macedonia', '18:00', '13/06'),
(7, 'England     -  Croatia ', '15:00', '13/06'), (8, 'Scotland        -  Czech Republic', '15:00', '14/06'),
(9, 'Spain     -  Sweden', '21:00', '14/06'), (10, 'Poland   -  Slovakia', '18:00', '14/06'),
(11, 'Hungary    -  Portugal', '18:00', '15/06'), (12, 'France          -  Germany ', '21:00', '15/06'),
(13,'Turkey   -   Wales ', '18:00', '16/06'), (14,'Italy    -   Switzerland', '21:00', '16/06'), 
(15, 'Finland    -   Russia', '15:00', '16/06'), (16, 'Denmark    -   Belgium', '18:00', '17/06'), 
(17, 'Netherlands  -   Austria', '21:00', '17/06'), (18, 'Ukraine      -   North Macedonia', '15:00', '17/06'),
(19, 'Croatia    -  Czech Republic', '18:00', '18/06'), (20, 'England     -  Scotland ', '21:00', '18/06'),
(21, 'Sweden          -  Slovakia', '15:00', '18/06'), (22, 'Spain           -  Poland', '21:00', '19/06'),
(23, 'Hungary         -  France', '15:00', '19/06'), (24, 'Portugal        -  Germany', '18:00', '19/06'), 
(25, 'Switzerland  - Turkey', '18:00', '20/06'), (26, 'Italy  -  Wales', '18:00', '20/06'), 
(27, 'Russia     -   Denmark', '21:00', '21/06'), (28, 'Finland    -   Belgium', '21:00', '21/06'),  
(29, 'North Macedonia  -   Netherlands', '18:00', '21/06'), (30, 'Ukraine          -   Austria', '18:00', '21/06'), 
(31, 'Croatia         -  Scotland', '21:00', '22/06'), (32, 'Czech Republic  -  England', '21:00', '22/06'), 
(33, 'Slovakia    -  Spain', '18:00', '23/06'), (34, 'Sweden      -  Poland', '18:00', '23/06'), 
(35, 'Portugal        -  France', '21:00', '23/06'), (36, 'Germany         -  Hungary', '21:00', '23/06')
; 

INSERT INTO public.Euro(start_date, end_date, year, host) VALUES ('11/06', '11/07', 2021, 'Europe'), ('11/06', '10/07', 2016, 'France')
, ('08/06', '01/07', 2012, 'Poland-Ukraine'), ('07/06', '29/06', 2008, 'Austria-Switzerland'), ('12/06', '04/07', 2004, 'Portugal'), ('10/06', '02/07', 2000, 'Belgium-Nederlands');


INSERT INTO public.Stadiums(Stadium_Name, Cities) VALUES('Parken Stadium','Copenhagen'),
('Krestovsky Stadium','Saint Petersburg'),('Arena Națională', 'Bucharest'),('Johan Cruyff Arena', 'Amsterdam'),
('Wembley Stadium', 'London'),('Hampden Park', 'Glasgow'),('La Cartuja', 'Seville'),('Puskás Aréna', 'Budapest'),
('Allianz Arena', 'Munich'), ('Stadio Olimpico', 'Rom'), ('Olympic Stadium', 'Baku');

INSERT INTO public.FranceMatches(Nr, dates, time_, Teams, results) VALUES
(1, '10/06', '21:00',    'France - Romania',            '2-1'),
(2, '11/06', '15:00',    'Albania - Switzerland',       '0-1'),
(3, '11/06', '18:00',    'Wales - Slovakia',            '2-1'),        
(4, '11/06', '21:00',    'England - Russia',            '1-1'),   
(5, '12/06', '15:00',    'Turkey - Croatia',            '0-1'),    
(6, '12/06', '18:00',    'Poland - Northern Ireland',   '1-0'), 
(7, '12/06', '21:00',    'Germany - Ukraine',           '2-0'),   
(8, '13/06', '15:00',    'Spain - Czech Republic',      '1-0'),  
(9, '13/06', '18:00',    'Ireland - Sweden',            '1-1'),   
(10, '13/06', '21:00',   'Belgium - Italy',             '0-2'),     
(11, '14/06', '18:00',   'Austria - Hungary',           '0-2'),      
(12, '14/06', '21:00',   'Portugal - Iceland',          '1-1'),   
(13, '15/06', '15:00',   'Russia - Slovakia',           '1-2'), 
(14, '15/06', '18:00',   'Romania - Switzerland',       '1-1'),
(15, '15/06', '21:00',   'France - Albania',            '2-0'),
(16, '16/06', '15:00',   'England - Wales',             '2-1'),    
(17, '16/06', '18:00',   'Ukraine - Northern Ireland',  '0-2'), 
(18, '16/06', '21:00',   'Germany - Poland',            '0-0'),        
(19, '17/06', '15:00',   'Italy - Sweden',              '1-0'),     
(20, '17/06', '18:00',   'Czech Republic - Croatia',    '2-2'),         
(21, '17/06', '21:00',   'Spain - Turkey',              '3-0'),      
(22, '18/06', '15:00',   'Belgium - Ireland',           '3-0'),    
(23, '18/06', '18:00',   'Iceland - Hungary',           '1-1'),       
(24, '18/06', '21:00',   'Portugal - Austria',          '0-0'),    
(25, '19/06', '21:00',   'Romania - Albania',           '0-1'),       
(26, '19/06', '21:00',   'Switzerland - France',         '0-0'),     
(27, '20/06', '21:00',   'Russia - Wales',              '0-3'),            
(28, '20/06', '21:00',   'Slovakia - England',          '0-0'),     
(29, '21/06', '18:00',   'Northern Ireland - Germany',  '0-1'),          
(30, '21/06', '18:00',   'Ukraine - Poland',            '0-1'),       
(31, '21/06', '21:00',   'Croatia - Spain',             '2-1'),           
(32, '21/06', '21:00',   'Czech Republic - Turkey',     '0-2'),       
(33, '22/06', '18:00',   'Hungary - Portugal',          '3-3'),      
(34, '21/06', '18:00',   'Iceland - Austria',           '2-1'), 
(35, '21/06', '21:00',   'Italy - Ireland',             '0-1'),    
(36, '21/06', '21:00',   'Sweden - Belgium',            '0-1'),      
(37, '25/06', '15:00',   'Switzerland - Poland',        '4-5 pen. 1-1 a.e.t. (0-0)'),        
(38, '25/06', '18:00',   'Wales - Northern Ireland',    '1-0'),   
(39, '25/06', '21:00',   'Croatia - Portugal',          '0-1 a.e.t. (0-0)'),   
(40, '26/06', '15:00',   'France - Ireland',            '2-1'),            
(41, '26/06', '18:00',   'Germany - Slovakia',          '3-0'),          
(42, '26/06', '21:00',   'Hungary - Belgium',           '0-4'),       
(43, '27/06', '18:00',   'Italy - Spain',               '2-0'),           
(44, '27/06', '21:00',   'England - Iceland',           '1-2'),          
(45, '30/06', '21:00',   'Poland - Portugal',           '3-5 pen. 1-1 a.e.t. (0-0)'),
(46, '01/07', '21:00',   'Wales - Belgium',             '3-1'),          
(47, '02/07', '21:00',   'Germany - Italy',             '6-5 pen. 1-1 a.e.t. (0-0)'), 
(48, '03/07', '21:00',   'France - Iceland',            '5-2'),          
(49, '06/07', '21:00',   'Portugal - Wales',            '2-0'),               
(50, '07/07', '21:00',   'Germany - France',            '0-2'),              
(51, '10/07', '21:00',   'Portugal - France',           '1-0 a.e.t. (0-0)');

INSERT INTO public.FranceStadiums(Stadium_Name, Cities) VALUES
('Stade de France', 'Saint-Denis'),('Stade Bollaert-Delelis', 'Lens'),
('Parc des Princes', 'Paris'),('Stade Vélodrome', 'Marseille'),
('Stade Pierre-Mauroy', 'Lille'),('Parc Olympique Lyonnais', 'Lyon'),
('Nouveau Stade de Bordeaux', 'Bordeaux'),('Stade Geoffroy-Guichard', 'Saint-Étienne'),
('Stadium Municipal', 'Toulouse'),('Allianz Riviera', 'Nice');

INSERT INTO public.FranceGroups(ID, Teams) VALUES
('Group A', 'France, Romania, Albania, Switzerland'),
('Group B', 'England, Russia, Wales, Slovakia'),
('Group C', 'Germany, Ukraine, Poland, Northern Ireland'),
('Group D', 'Spain, Czech Republic, Turkey, Croatia'),
('Group E', 'Belgium, Italy, Ireland, Sweden'),
('Group F', 'Portugal, Iceland, Austria, Hungary');




