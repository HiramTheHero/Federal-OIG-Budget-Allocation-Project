create or replace table pre_dec_2016 as
select
AGYSUB,
OCC,
cast(strptime(DATECODE, '%Y%m') as DATE) as RECORDING_DATE
from read_csv_auto([
'data/data_files/FACTDATA_DEC2010.TXT',
'data/data_files/FACTDATA_DEC2011.TXT',
'data/data_files/FACTDATA_DEC2012.TXT',
'data/data_files/FACTDATA_DEC2013.TXT',
'data/data_files/FACTDATA_DEC2014.TXT',
'data/data_files/FACTDATA_DEC2015.TXT',
'data/data_files/FACTDATA_JUN2010.TXT',
'data/data_files/FACTDATA_JUN2011.TXT',
'data/data_files/FACTDATA_JUN2012.TXT',
'data/data_files/FACTDATA_JUN2013.TXT',
'data/data_files/FACTDATA_JUN2014.TXT',
'data/data_files/FACTDATA_JUN2015.TXT',
'data/data_files/FACTDATA_JUN2016.TXT',
'data/data_files/FACTDATA_MAR2010.TXT',
'data/data_files/FACTDATA_MAR2011.TXT',
'data/data_files/FACTDATA_MAR2012.TXT',
'data/data_files/FACTDATA_MAR2013.TXT',
'data/data_files/FACTDATA_MAR2014.TXT',
'data/data_files/FACTDATA_MAR2015.TXT',
'data/data_files/FACTDATA_MAR2016.TXT',
'data/data_files/FACTDATA_SEP2010.TXT',
'data/data_files/FACTDATA_SEP2011.TXT',
'data/data_files/FACTDATA_SEP2012.TXT',
'data/data_files/FACTDATA_SEP2013.TXT',
'data/data_files/FACTDATA_SEP2014.TXT',
'data/data_files/FACTDATA_SEP2015.TXT',
'data/data_files/FACTDATA_SEP2016.TXT'
],all_varchar=1);

create or replace table post_dec_2016 as
select
AGYSUB,
OCC,
cast(strptime(DATECODE, '%Y%m') as DATE) as RECORDING_DATE
from read_csv_auto([
'data/data_files/FACTDATA_DEC2016.TXT',
'data/data_files/FACTDATA_DEC2017.TXT',
'data/data_files/FACTDATA_DEC2018.TXT',
'data/data_files/FACTDATA_DEC2019.TXT',
'data/data_files/FACTDATA_DEC2020.TXT',
'data/data_files/FACTDATA_JUN2017.TXT',
'data/data_files/FACTDATA_JUN2018.TXT',
'data/data_files/FACTDATA_JUN2019.TXT',
'data/data_files/FACTDATA_JUN2020.TXT',
'data/data_files/FACTDATA_JUN2021.TXT',
'data/data_files/FACTDATA_MAR2017.TXT',
'data/data_files/FACTDATA_MAR2018.TXT',
'data/data_files/FACTDATA_MAR2019.TXT',
'data/data_files/FACTDATA_MAR2020.TXT',
'data/data_files/FACTDATA_MAR2021.TXT',
'data/data_files/FACTDATA_SEP2017.TXT',
'data/data_files/FACTDATA_SEP2018.TXT',
'data/data_files/FACTDATA_SEP2019.TXT',
'data/data_files/FACTDATA_SEP2020.TXT',
'data/data_files/FACTDATA_SEP2021.TXT'
],all_varchar=1);

create or replace table all_data as
select * from pre_dec_2016
union all by name
select * from post_dec_2016;

drop table pre_dec_2016;
drop table post_dec_2016;


create or replace table ig_data as
from all_data where AGYSUB in ('AG23', 'DD26','EDEF','GS15','HE13','HSAE','HUGG','DJ10','DLIG','TD12','TR95','VAAF') order by RECORDING_DATE;

create or replace table category_data as
select * from read_csv_auto('scripts/category_data.csv', header = 1);

create or replace table agy_data as
select distinct * from read_csv_auto('data/data_files/DTagy.csv', header = 1);

create or replace table occ_data as
select distinct * from read_csv_auto('data/data_files/DTocc.csv', header = 1);

create or replace view aggregate_view as
select
AGYSUBT,
OCCT,
RECORDING_DATE
from
(select
AGYSUBT,
OCC,
RECORDING_DATE
from
ig_data
join
agy_data using (AGYSUB))
join
occ_data using (OCC);
