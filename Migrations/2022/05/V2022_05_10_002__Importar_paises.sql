set search_path to globalization;

insert into country 
    (country_id, name, three_char_code, numeric_code)
select
    upper(country_id) as country_id,
    name, 
    upper(three_char_code) as three_char_code,
    numeric_code
from (
    select 'AF' as country_id,'Afghanistan' as name,'AFG' as three_char_code,4 as numeric_code union
    select 'AL','Albania','ALB',8 union
    select 'DZ','Algeria','DZA',12 union
    select 'AS','American Samoa','ASM',16 union
    select 'AD','Andorra','AND',20 union
    select 'AO','Angola','AGO',24 union
    select 'AI','Anguilla','AIA',660 union
    select 'AQ','Antarctica','ATA',10 union
    select 'AG','Antigua and Barbuda','ATG',28 union
    select 'AR','Argentina','ARG',32 union
    select 'AM','Armenia','ARM',51 union
    select 'AW','Aruba','ABW',533 union
    select 'AU','Australia','AUS',36 union
    select 'AT','Austria','AUT',40 union
    select 'AZ','Azerbaijan','AZE',31 union
    select 'BS','Bahamas (the)','BHS',44 union
    select 'BH','Bahrain','BHR',48 union
    select 'BD','Bangladesh','BGD',50 union
    select 'BB','Barbados','BRB',52 union
    select 'BY','Belarus','BLR',112 union
    select 'BE','Belgium','BEL',56 union
    select 'BZ','Belize','BLZ',84 union
    select 'BJ','Benin','BEN',204 union
    select 'BM','Bermuda','BMU',60 union
    select 'BT','Bhutan','BTN',64 union
    select 'BO','Bolivia (Plurinational State of)','BOL',68 union
    select 'BQ','Bonaire, Sint Eustatius and Saba','BES',535 union
    select 'BA','Bosnia and Herzegovina','BIH',70 union
    select 'BW','Botswana','BWA',72 union
    select 'BV','Bouvet Island','BVT',74 union
    select 'BR','Brazil','BRA',76 union
    select 'IO','British Indian Ocean Territory (the)','IOT',86 union
    select 'BN','Brunei Darussalam','BRN',96 union
    select 'BG','Bulgaria','BGR',100 union
    select 'BF','Burkina Faso','BFA',854 union
    select 'BI','Burundi','BDI',108 union
    select 'CV','Cabo Verde','CPV',132 union
    select 'KH','Cambodia','KHM',116 union
    select 'CM','Cameroon','CMR',120 union
    select 'CA','Canada','CAN',124 union
    select 'KY','Cayman Islands (the)','CYM',136 union
    select 'CF','Central African Republic (the)','CAF',140 union
    select 'TD','Chad','TCD',148 union
    select 'CL','Chile','CHL',152 union
    select 'CN','China','CHN',156 union
    select 'CX','Christmas Island','CXR',162 union
    select 'CC','Cocos (Keeling) Islands (the)','CCK',166 union
    select 'CO','Colombia','COL',170 union
    select 'KM','Comoros (the)','COM',174 union
    select 'CD','Congo (the Democratic Republic of the)','COD',180 union
    select 'CG','Congo (the)','COG',178 union
    select 'CK','Cook Islands (the)','COK',184 union
    select 'CR','Costa Rica','CRI',188 union
    select 'HR','Croatia','HRV',191 union
    select 'CU','Cuba','CUB',192 union
    select 'CW','Curaçao','CUW',531 union
    select 'CY','Cyprus','CYP',196 union
    select 'CZ','Czechia','CZE',203 union
    select 'CI','Côte d''Ivoire','CIV',384 union
    select 'DK','Denmark','DNK',208 union
    select 'DJ','Djibouti','DJI',262 union
    select 'DM','Dominica','DMA',212 union
    select 'DO','Dominican Republic (the)','DOM',214 union
    select 'EC','Ecuador','ECU',218 union
    select 'EG','Egypt','EGY',818 union
    select 'SV','El Salvador','SLV',222 union
    select 'GQ','Equatorial Guinea','GNQ',226 union
    select 'ER','Eritrea','ERI',232 union
    select 'EE','Estonia','EST',233 union
    select 'SZ','Eswatini','SWZ',748 union
    select 'ET','Ethiopia','ETH',231 union
    select 'FK','Falkland Islands (the) [Malvinas]','FLK',238 union
    select 'FO','Faroe Islands (the)','FRO',234 union
    select 'FJ','Fiji','FJI',242 union
    select 'FI','Finland','FIN',246 union
    select 'FR','France','FRA',250 union
    select 'GF','French Guiana','GUF',254 union
    select 'PF','French Polynesia','PYF',258 union
    select 'TF','French Southern Territories (the)','ATF',260 union
    select 'GA','Gabon','GAB',266 union
    select 'GM','Gambia (the)','GMB',270 union
    select 'GE','Georgia','GEO',268 union
    select 'DE','Germany','DEU',276 union
    select 'GH','Ghana','GHA',288 union
    select 'GI','Gibraltar','GIB',292 union
    select 'GR','Greece','GRC',300 union
    select 'GL','Greenland','GRL',304 union
    select 'GD','Grenada','GRD',308 union
    select 'GP','Guadeloupe','GLP',312 union
    select 'GU','Guam','GUM',316 union
    select 'GT','Guatemala','GTM',320 union
    select 'GG','Guernsey','GGY',831 union
    select 'GN','Guinea','GIN',324 union
    select 'GW','Guinea-Bissau','GNB',624 union
    select 'GY','Guyana','GUY',328 union
    select 'HT','Haiti','HTI',332 union
    select 'HM','Heard Island and McDonald Islands','HMD',334 union
    select 'VA','Holy See (the)','VAT',336 union
    select 'HN','Honduras','HND',340 union
    select 'HK','Hong Kong','HKG',344 union
    select 'HU','Hungary','HUN',348 union
    select 'IS','Iceland','ISL',352 union
    select 'IN','India','IND',356 union
    select 'ID','Indonesia','IDN',360 union
    select 'IR','Iran (Islamic Republic of)','IRN',364 union
    select 'IQ','Iraq','IRQ',368 union
    select 'IE','Ireland','IRL',372 union
    select 'IM','Isle of Man','IMN',833 union
    select 'IL','Israel','ISR',376 union
    select 'IT','Italy','ITA',380 union
    select 'JM','Jamaica','JAM',388 union
    select 'JP','Japan','JPN',392 union
    select 'JE','Jersey','JEY',832 union
    select 'JO','Jordan','JOR',400 union
    select 'KZ','Kazakhstan','KAZ',398 union
    select 'KE','Kenya','KEN',404 union
    select 'KI','Kiribati','KIR',296 union
    select 'KP','Korea (the Democratic People''s Republic of)','PRK',408 union
    select 'KR','Korea (the Republic of)','KOR',410 union
    select 'KW','Kuwait','KWT',414 union
    select 'KG','Kyrgyzstan','KGZ',417 union
    select 'LA','Lao People''s Democratic Republic (the)','LAO',418 union
    select 'LV','Latvia','LVA',428 union
    select 'LB','Lebanon','LBN',422 union
    select 'LS','Lesotho','LSO',426 union
    select 'LR','Liberia','LBR',430 union
    select 'LY','Libya','LBY',434 union
    select 'LI','Liechtenstein','LIE',438 union
    select 'LT','Lithuania','LTU',440 union
    select 'LU','Luxembourg','LUX',442 union
    select 'MO','Macao','MAC',446 union
    select 'MG','Madagascar','MDG',450 union
    select 'MW','Malawi','MWI',454 union
    select 'MY','Malaysia','MYS',458 union
    select 'MV','Maldives','MDV',462 union
    select 'ML','Mali','MLI',466 union
    select 'MT','Malta','MLT',470 union
    select 'MH','Marshall Islands (the)','MHL',584 union
    select 'MQ','Martinique','MTQ',474 union
    select 'MR','Mauritania','MRT',478 union
    select 'MU','Mauritius','MUS',480 union
    select 'YT','Mayotte','MYT',175 union
    select 'MX','México','MEX',484 union
    select 'FM','Micronesia (Federated States of)','FSM',583 union
    select 'MD','Moldova (the Republic of)','MDA',498 union
    select 'MC','Monaco','MCO',492 union
    select 'MN','Mongolia','MNG',496 union
    select 'ME','Montenegro','MNE',499 union
    select 'MS','Montserrat','MSR',500 union
    select 'MA','Morocco','MAR',504 union
    select 'MZ','Mozambique','MOZ',508 union
    select 'MM','Myanmar','MMR',104 union
    select 'NA','Namibia','NAM',516 union
    select 'NR','Nauru','NRU',520 union
    select 'NP','Nepal','NPL',524 union
    select 'NL','Netherlands (the)','NLD',528 union
    select 'NC','New Caledonia','NCL',540 union
    select 'NZ','New Zealand','NZL',554 union
    select 'NI','Nicaragua','NIC',558 union
    select 'NE','Niger (the)','NER',562 union
    select 'NG','Nigeria','NGA',566 union
    select 'NU','Niue','NIU',570 union
    select 'NF','Norfolk Island','NFK',574 union
    select 'MP','Northern Mariana Islands (the)','MNP',580 union
    select 'NO','Norway','NOR',578 union
    select 'OM','Oman','OMN',512 union
    select 'PK','Pakistan','PAK',586 union
    select 'PW','Palau','PLW',585 union
    select 'PS','Palestine, State of','PSE',275 union
    select 'PA','Panama','PAN',591 union
    select 'PG','Papua New Guinea','PNG',598 union
    select 'PY','Paraguay','PRY',600 union
    select 'PE','Peru','PER',604 union
    select 'PH','Philippines (the)','PHL',608 union
    select 'PN','Pitcairn','PCN',612 union
    select 'PL','Poland','POL',616 union
    select 'PT','Portugal','PRT',620 union
    select 'PR','Puerto Rico','PRI',630 union
    select 'QA','Qatar','QAT',634 union
    select 'MK','Republic of North Macedonia','MKD',807 union
    select 'RO','Romania','ROU',642 union
    select 'RU','Russian Federation (the)','RUS',643 union
    select 'RW','Rwanda','RWA',646 union
    select 'RE','Réunion','REU',638 union
    select 'BL','Saint Barthélemy','BLM',652 union
    select 'SH','Saint Helena, Ascension and Tristan da Cunha','SHN',654 union
    select 'KN','Saint Kitts and Nevis','KNA',659 union
    select 'LC','Saint Lucia','LCA',662 union
    select 'MF','Saint Martin (French part)','MAF',663 union
    select 'PM','Saint Pierre and Miquelon','SPM',666 union
    select 'VC','Saint Vincent and the Grenadines','VCT',670 union
    select 'WS','Samoa','WSM',882 union
    select 'SM','San Marino','SMR',674 union
    select 'ST','Sao Tome and Principe','STP',678 union
    select 'SA','Saudi Arabia','SAU',682 union
    select 'SN','Senegal','SEN',686 union
    select 'RS','Serbia','SRB',688 union
    select 'SC','Seychelles','SYC',690 union
    select 'SL','Sierra Leone','SLE',694 union
    select 'SG','Singapore','SGP',702 union
    select 'SX','Sint Maarten (Dutch part)','SXM',534 union
    select 'SK','Slovakia','SVK',703 union
    select 'SI','Slovenia','SVN',705 union
    select 'SB','Solomon Islands','SLB',90 union
    select 'SO','Somalia','SOM',706 union
    select 'ZA','South Africa','ZAF',710 union
    select 'GS','South Georgia and the South Sandwich Islands','SGS',239 union
    select 'SS','South Sudan','SSD',728 union
    select 'ES','Spain','ESP',724 union
    select 'LK','Sri Lanka','LKA',144 union
    select 'SD','Sudan (the)','SDN',729 union
    select 'SR','Suriname','SUR',740 union
    select 'SJ','Svalbard and Jan Mayen','SJM',744 union
    select 'SE','Sweden','SWE',752 union
    select 'CH','Switzerland','CHE',756 union
    select 'SY','Syrian Arab Republic','SYR',760 union
    select 'TW','Taiwan (Province of China)','TWN',158 union
    select 'TJ','Tajikistan','TJK',762 union
    select 'TZ','Tanzania, United Republic of','TZA',834 union
    select 'TH','Thailand','THA',764 union
    select 'TL','Timor-Leste','TLS',626 union
    select 'TG','Togo','TGO',768 union
    select 'TK','Tokelau','TKL',772 union
    select 'TO','Tonga','TON',776 union
    select 'TT','Trinidad and Tobago','TTO',780 union
    select 'TN','Tunisia','TUN',788 union
    select 'TR','Turkey','TUR',792 union
    select 'TM','Turkmenistan','TKM',795 union
    select 'TC','Turks and Caicos Islands (the)','TCA',796 union
    select 'TV','Tuvalu','TUV',798 union
    select 'UG','Uganda','UGA',800 union
    select 'UA','Ukraine','UKR',804 union
    select 'AE','United Arab Emirates (the)','ARE',784 union
    select 'GB','United Kingdom of Great Britain and Northern Ireland (the)','GBR',826 union
    select 'UM','United States Minor Outlying Islands (the)','UMI',581 union
    select 'US','United States of America (the)','USA',840 union
    select 'UY','Uruguay','URY',858 union
    select 'UZ','Uzbekistan','UZB',860 union
    select 'VU','Vanuatu','VUT',548 union
    select 'VE','Venezuela (Bolivarian Republic of)','VEN',862 union
    select 'VN','Viet Nam','VNM',704 union
    select 'VG','Virgin Islands (British)','VGB',92 union
    select 'VI','Virgin Islands (U.S.)','VIR',850 union
    select 'WF','Wallis and Futuna','WLF',876 union
    select 'EH','Western Sahara','ESH',732 union
    select 'YE','Yemen','YEM',887 union
    select 'ZM','Zambia','ZMB',894 union
    select 'ZW','Zimbabwe','ZWE',716 union
    select 'AX','Aland Islands','ALA',248
         ) as c
order by name
;