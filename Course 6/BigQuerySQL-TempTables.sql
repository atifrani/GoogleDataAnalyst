WITH my_temp_table AS 
(
    SELECT 
      bikeid,
      SUM(duration_minutes) AS Trip_duration
    FROM 
      `bigquery-public-data.austin_bikeshare.bikeshare_trips` 
    GROUP BY 
      bikeid
    ORDER BY 
      Trip_duration DESC  
    LIMIT 1
)

SELECT 
  *
FROM
  my_temp_table



