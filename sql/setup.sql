-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`

DROP table if exists random_data;

CREATE TABLE random_data 
(
    id INT GENERATED ALWAYS AS IDENTITY,
    is_active	varchar(300),
    balance	varchar(300),
    age	varchar(300),
    eye_color	varchar(300),
    name	varchar(300),
    gender	varchar(300),
    company	varchar(300),
    email	varchar(300),
    phone	varchar(300),
    address	varchar(300),
    latitude	varchar(300),
    longitude	varchar(300)
);

INSERT INTO random_data (is_active,balance,age,eye_color,name,gender,company,email,phone,address,latitude,longitude)
VALUES
    ('true', '$1,184.58', '21', 'blue', 'Lydia Cohen', 'female', 'SENSATE', 'lydiacohen@sensate.com', '+1 (940) 451-3090', '208 Alice Court, Axis, Alabama, 3735', '73.623047', '11.913395'),
    ('true', '$3,775.94', '38', 'green', 'Mcintosh Wilkinson', 'male', 'EARTHMARK', 'mcintoshwilkinson@earthmark.com', '+1 (807) 405-3094', '497 Danforth Street, Efland, Arizona, 724', '-7.742785', '-134.034995'),
    ('false', '$1,015.96', '35', 'green', 'Dana Snider', 'female', 'PETIGEMS', 'danasnider@petigems.com', '+1 (933) 549-3304', '327 Wythe Avenue, Greenwich, Kansas, 3148', '-29.385117', '151.176937'),
    ('false', '$3,718.81', '25', 'blue', 'Bradshaw Williamson', 'male', 'RODEOMAD', 'bradshawwilliamson@rodeomad.com', '+1 (976) 475-3303', '649 Kings Place, Bancroft, Delaware, 6012', '-82.954889', '178.136634'),
    ('false', '$3,864.30', '36', 'blue', 'Allyson Vaughn', 'female', 'MALATHION', 'allysonvaughn@malathion.com', '+1 (903) 503-2153', '579 Bond Street, Downsville, North Carolina, 8379', '52.033644', '86.879781'),
    ('true', '$3,211.37', '24', 'green', 'Holder Wilson', 'male', 'SKYBOLD', 'holderwilson@skybold.com', '+1 (905) 546-3609', '783 Louisa Street, Collins, South Dakota, 2691', '-31.80491', '28.046358'),
    ('true', '$1,322.97', '23', 'blue', 'Wilson Bell', 'male', 'LIQUIDOC', 'wilsonbell@liquidoc.com', '+1 (853) 537-3443', '902 Anthony Street, Ruckersville, Iowa, 2871', '17.699344', '-166.566175'),
    ('true', '$3,128.68', '37', 'green', 'Zelma Cross', 'female', 'BEDLAM', 'zelmacross@bedlam.com', '+1 (939) 587-2591', '840 Strickland Avenue, Deltaville, Oregon, 9448', '83.721449', '111.50693'),
    ('true', '$2,150.06', '32', 'blue', 'Smith Moran', 'male', 'DAYCORE', 'smithmoran@daycore.com', '+1 (892) 528-3916', '474 Metropolitan Avenue, Ballico, Utah, 4857', '-80.02098', '92.115585'),
    ('true', '$2,961.34', '26', 'blue', 'Cheri Pittman', 'female', 'KYAGORO', 'cheripittman@kyagoro.com', '+1 (930) 418-2546', '184 Mill Street, Norris, Nevada, 6156', '62.788889', '94.966401'),
    ('true', '$2,847.71', '39', 'blue', 'Kayla Mathews', 'female', 'SAVVY', 'kaylamathews@savvy.com', '+1 (976) 514-2661', '223 Eckford Street, Lewis, Maine, 979', '54.937498', '-173.463185'),
    ('false', '$1,508.62', '40', 'green', 'Trudy Charles', 'female', 'WAAB', 'trudycharles@waab.com', '+1 (842) 437-3625', '270 Lake Place, Cressey, Ohio, 2040', '40.800921', '-35.670294'),
    ('false', '$2,754.20', '31', 'brown', 'Ophelia Tillman', 'female', 'BALUBA', 'opheliatillman@baluba.com', '+1 (935) 457-3605', '546 Hornell Loop, Concho, California, 4501', '-19.721309', '-177.514728'),
    ('false', '$3,074.36', '25', 'blue', 'Wilcox Powell', 'male', 'FOSSIEL', 'wilcoxpowell@fossiel.com', '+1 (821) 590-3738', '892 Harrison Place, Masthope, Illinois, 9329', '32.002951', '-81.05876'),
    ('false', '$3,305.65', '34', 'brown', 'Camille Keller', 'female', 'INSOURCE', 'camillekeller@insource.com', '+1 (818) 474-2665', '467 Mersereau Court, Fulford, Texas, 3107', '79.173743', '164.305957');