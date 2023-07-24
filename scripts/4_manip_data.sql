-- For some tables used in the research

create or replace view full_fte_by_ig as
select AGYSUBT, OCCT, count(*) as fte_count from aggregate_view group by AGYSUBT, OCCT order by AGYSUBT, OCCT;

create or replace view top_10_fte as
select OCCT, count(*) as fte_count from aggregate_view group by OCCT order by fte_count desc limit 10;

-- For just 2010 data. --

create or replace view full_fte_by_ig_2010 as
select AGYSUBT, OCCT, count(*) as fte_count from aggregate_view where RECORDING_DATE like '2010%' group by AGYSUBT, OCCT order by AGYSUBT, OCCT;

create or replace view top_10_fte_2010 as
select OCCT, count(*) as fte_count from aggregate_view where RECORDING_DATE like '2010%' group by OCCT order by fte_count desc limit 10;

-- For a graph used in the research

create or replace view plot_view as
select
*
from
ig_data
join
category_data using (OCC);

create or replace table plot_data as

select
RECORDING_DATE,
AGYSUB,
count(*) as "Total Positions",
count(case CATEGORY when 'investigation' then 1 else null end) as "Investigation Positions",
count(case CATEGORY when 'audit' then 1 else null end) as "Audit Positions",
count(case CATEGORY when 'other' then 1 else null end) as "Other Positions",
cast("Investigation Positions" as double) / cast("Audit Positions" as double) as "Investigation to Audit Ratio"
from plot_view
where AGYSUB <> 'GS15'
group by RECORDING_DATE, AGYSUB
order by RECORDING_DATE, AGYSUB;


update plot_data set AGYSUB = 'Department of Agriculture' where AGYSUB = 'AG23';
update plot_data set AGYSUB = 'Department of Defense' where AGYSUB = 'DD26';
update plot_data set AGYSUB = 'Department of Education' where AGYSUB = 'EDEF';
update plot_data set AGYSUB = 'Department of Health And Human Services' where AGYSUB = 'HE13';
update plot_data set AGYSUB = 'Department of Homeland Security' where AGYSUB = 'HSAE';
update plot_data set AGYSUB = 'Department of Housing And Urban Development' where AGYSUB = 'HUGG';
update plot_data set AGYSUB = 'Department of Justice' where AGYSUB = 'DJ10';
update plot_data set AGYSUB = 'Department of Labor' where AGYSUB = 'DLIG';
update plot_data set AGYSUB = 'Department of Transportation' where AGYSUB = 'TD12';
update plot_data set AGYSUB = 'Department of The Treasury' where AGYSUB = 'TR95';
update plot_data set AGYSUB = 'Department of Veterans Affairs' where AGYSUB = 'VAAF';
update plot_data set AGYSUB = 'General Services Administration' where AGYSUB = 'GS15';

ALTER TABLE plot_data RENAME AGYSUB TO "Federal Agency";
ALTER TABLE plot_data RENAME RECORDING_DATE TO "Recording Date";

