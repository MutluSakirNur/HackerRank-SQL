SELECT Doctor,Professor,Singer,Actor FROM
(
select
        ROWNUM,
        max(case Occupation when 'Doctor' then Name end) as Doctor,
        max(case Occupation when 'Professor' then Name end) as Professor,
        max(case Occupation when 'Singer' then Name end) as Singer,
        max(case Occupation when 'Actor' then Name end) as Actor
    from 
(SELECT NAME, OCCUPATION, ROW_NUMBER() OVER(PARTITION BY OCCUPATION ORDER BY NAME) AS ROWNUM FROM OCCUPATIONS) OCCU1
GROUP BY ROWNUM)
OCCULIST
