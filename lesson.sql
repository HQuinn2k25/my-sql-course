SELECT 
ps.PatientId
,ps.Hospital
,ps.Ward
,ps.AdmittedDate
,ps.DischargeDate
,DATEADD(WEEK,-2, AdmittedDate) ReminderDate
,DATEDIFF (DAY, AdmittedDate, DischargeDate) as DaysInHospital
FROM PatientStay AS ps
WHERE ps.Hospital IN ('Kingston', 'PRUH')
ORDER BY 
ps.PatientId DESC
Select * from PatientStay
Select* FROM DimHospital

select 
ps.PatientId
,ps.AdmittedDate
,h.HospitalType
,h.Hospital
from PatientStay ps JOIN DimHospital h ON ps.Hospital = h.Hospital

SELECT
     p.PatientId
         ,p.AdmittedDate
             ,h.HospitalType
                 ,h.Hospital
                 FROM PatientStay p INNER JOIN DimHospitalBad h ON p.Hospital = h.Hospital


SELECT

 p.PatientId
,p.AdmittedDate
,p.DischargeDate
,h.HospitalType
,p.Hospital
,h.Hospital
,h.Hospital
FROM PatientStay P Right JOIN DimHospitalBad h ON p.Hospital = h.Hospital













--,AdmittedDate DESC
--, DischargeDate DESC
-- Comment: using 'IN' this can list more than one search for multiple criteria and avoid AND and OR--
--AND Ward LIKE '%Surgery'
--AND AdmittedDate BETWEEN '2024-02-27' AND '2024-03-02'

--select DATEADD(WEEK, 3, '2025-11-06')











--select * from.airports