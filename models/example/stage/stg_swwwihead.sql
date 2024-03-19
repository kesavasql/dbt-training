with stg_sweww as
(select * from {{ ref('SWWWIHEAD') }})
select * from stg_sweww