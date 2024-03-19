with SWWWIHEAD as (

    select * from {{ ref('SWWWIHEAD') }} WHERE WI_TYPE='W'
 AND CLIENT='931'

),
S_TEXT as (

    select * from {{ ref('S_TEXT') }}

)
select WID,WI_TYPE,WI_RHTEXT,CLIENT,zzdate,zzdatetime
 from SWWWIHEAD S_H INNER JOIN S_TEXT S ON S_H.WI_RHTEXT=S.RHTEXT 

