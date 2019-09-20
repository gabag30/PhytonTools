--CORRECCION DEL CAMPO PUBLICADA DE LA TABLA MARCA

--select nro_solici,publicada from marca
--where DAY(publicada)>31 or MONTH(publicada)>12 or YEAR (publicada)>9999 or YEAR(publicada)<1752

--select nro_solici,publicada from marca
--where DAY(publicada)<1 or MONTH(publicada)<1 or YEAR (publicada)>9999 or YEAR(publicada)<1752

--Correccion de fecha publicada
UPDATE marca
SET publicada= '2014-12-03'
WHERE publicada = '0014-12-03' AND nro_solici='2014030581'
GO
UPDATE marca
SET publicada= '1970-11-08'
WHERE publicada = '0970-11-08' AND nro_solici='1900017855'
GO
UPDATE marca
SET publicada= '1969-11-12'
WHERE publicada = '0969-11-12' AND nro_solici='1900016611'
GO
UPDATE marca
SET publicada= '1981-01-09'
WHERE publicada = '0981-01-09' AND nro_solici='1900029326'
GO
UPDATE marca
SET publicada= '1981-01-16'
WHERE publicada = '0981-01-16' AND nro_solici='1900029408'
GO
UPDATE marca
SET publicada= '1981-01-16'
WHERE publicada = '0981-01-16' AND nro_solici='1900029408'
GO
UPDATE marca
SET publicada= '1974-02-25'
WHERE publicada = '0974-02-25' AND nro_solici='1900021008'
GO
UPDATE marca
SET publicada= '1968-10-04'
WHERE publicada = '0168-10-04' AND nro_solici='1900015624'
GO
UPDATE marca
SET publicada= '1980-11-13'
WHERE publicada = '0980-11-13' AND nro_solici='1900029149'
GO
UPDATE marca
SET publicada= '1969-11-10'
WHERE publicada = '0969-11-10' AND nro_solici='1900016587'
GO
UPDATE marca
SET publicada= '1978-03-09'
WHERE publicada = '0197-03-09' AND nro_solici='1900024661'
GO
UPDATE marca
SET publicada= '1969-11-12'
WHERE publicada = '0969-11-12' AND nro_solici='1900016603'
GO
UPDATE marca
SET publicada= '1969-11-12'
WHERE publicada = '0969-11-12' AND nro_solici='1900016596'
GO
UPDATE marca
SET publicada= '1980-11-13'
WHERE publicada = '0980-11-13' AND nro_solici='1900029168'
GO
UPDATE marca
SET publicada= '1990-11-23'
WHERE publicada = '0990-11-23' AND nro_solici='1900053312'
GO
UPDATE marca
SET publicada= '1981-01-30'
WHERE publicada = '0981-01-30' AND nro_solici='1900029513'
GO
UPDATE marca
SET publicada= '1981-01-13'
WHERE publicada = '0981-01-13' AND nro_solici='1900029386'
GO
UPDATE marca
SET publicada= '1985-11-09'
WHERE publicada = '0985-11-09' AND nro_solici='1900045787'
GO
UPDATE marca
SET publicada= '1985-11-09'
WHERE publicada = '0985-11-09' AND nro_solici='1900045792'
GO
UPDATE marca
SET publicada= '1981-01-13'
WHERE publicada = '0981-01-13' AND nro_solici='1900029396'
GO
UPDATE marca
SET publicada= '1988-11-03'
WHERE publicada = '0988-11-03' AND nro_solici='1900050461'
GO
UPDATE marca
SET publicada= '1980-11-03'
WHERE publicada = '0980-11-03' AND nro_solici='1900029097'
GO
UPDATE marca
SET publicada= '1980-11-13'
WHERE publicada = '0980-11-13' AND nro_solici='1900029141'
GO
UPDATE marca
SET publicada= '1972-04-07'
WHERE publicada = '0972-04-07' AND nro_solici='1900019328'
GO
UPDATE marca
SET publicada= '1980-11-13'
WHERE publicada = '0980-11-13' AND nro_solici='1900029162'
GO
UPDATE marca
SET publicada= '1985-11-09'
WHERE publicada = '0985-11-09' AND nro_solici='1900045782'
GO
UPDATE marca
SET publicada= '1970-11-06'
WHERE publicada = '1190-12-23' AND nro_solici='1900017948'
GO
UPDATE marca
SET publicada= '1977-08-17'
WHERE publicada = '0197-08-17' AND nro_solici='1900024080'
GO
UPDATE marca
SET publicada= '1980-11-11'
WHERE publicada = '0980-11-11' AND nro_solici='1900029135'
GO
UPDATE marca
SET publicada= '1969-01-27'
WHERE publicada = '0199-01-27' AND nro_solici='1900015917'
GO
UPDATE marca
SET publicada= '1977-03-12'
WHERE publicada = '0197-03-12' AND nro_solici='1900023687'
GO
UPDATE marca
SET publicada= '1956-03-02'
WHERE publicada = '0956-03-02' AND nro_solici='1900007275'
GO
UPDATE marca
SET publicada= '1969-11-24'
WHERE publicada = '0969-11-24' AND nro_solici='1900016667'
GO
UPDATE marca
SET publicada= '1982-10-08'
WHERE publicada = '0198-10-08' AND nro_solici='1900041216'
GO
UPDATE marca
SET publicada= '1984-07-20'
WHERE publicada = '0984-07-20' AND nro_solici='1900043773'
GO
UPDATE marca
SET publicada= '1981-01-09'
WHERE publicada = '0981-01-09' AND nro_solici='1900029333'
GO
UPDATE marca
SET publicada= '1969-11-28'
WHERE publicada = '0969-11-28' AND nro_solici='1900016472'
GO
UPDATE marca
SET publicada= '1981-01-02'
WHERE publicada = '0981-01-02' AND nro_solici='1900029225'
GO
UPDATE marca
SET publicada= '1980-11-03'
WHERE publicada = '0980-11-03' AND nro_solici='1900029116'
GO
UPDATE marca
SET publicada= '1948-07-29'
WHERE publicada = '0948-07-29' AND nro_solici='1900005245'
GO
UPDATE marca
SET publicada= '1988-03-02'
WHERE publicada = '0988-03-02' AND nro_solici='1900049298'
GO
UPDATE marca
SET publicada= '1978-03-16'
WHERE publicada = '0197-03-16' AND nro_solici='1900024694'
GO
UPDATE marca
SET publicada= '1978-03-16'
WHERE publicada = '0197-03-16' AND nro_solici='1900024694'
GO
UPDATE marca
SET publicada= '1974-01-28'
WHERE publicada = '0174-01-28' AND nro_solici='1900020774'
GO
UPDATE marca
SET publicada= '1954-03-12'
WHERE publicada = '1494-03-12' AND nro_solici='1900006746'
GO
UPDATE marca
SET publicada= '1981-01-16'
WHERE publicada = '0981-01-16' AND nro_solici='1900029414'
GO
UPDATE marca
SET publicada= '1980-11-03'
WHERE publicada = '0980-11-03' AND nro_solici='1900029096'
GO
UPDATE marca
SET publicada= '1986-03-21'
WHERE publicada = '0986-03-21' AND nro_solici='1900046021'
GO
UPDATE marca
SET publicada= '1980-11-18'
WHERE publicada = '0980-11-18' AND nro_solici='1900029196'
GO
UPDATE marca
SET publicada= '1980-11-18'
WHERE publicada = '0980-11-18' AND nro_solici='1900029196'
GO

UPDATE marca
SET publicada= '1988-03-24'
WHERE publicada = '1198-03-24' AND nro_solici='1900049149'
GO
UPDATE marca
SET publicada= '1967-03-23'
WHERE publicada = '0167-03-23' AND nro_solici='1900014200'
GO
UPDATE marca
SET publicada= '1966-01-16'
WHERE publicada = '0966-01-16' AND nro_solici='1900013175'
GO
UPDATE marca
SET publicada= '1990-11-30'
WHERE publicada = '0990-11-30' AND nro_solici='1990002065'
GO
UPDATE marca
SET publicada= '1990-11-30'
WHERE publicada = '0990-11-30' AND nro_solici='1990002065'
GO
UPDATE marca
SET publicada= '1980-11-11'
WHERE publicada = '0980-11-11' AND nro_solici='1900029134'
GO
UPDATE marca
SET publicada= '1980-11-18'
WHERE publicada = '0980-11-18' AND nro_solici='1900029191'
GO
UPDATE marca
SET publicada= '1980-11-18'
WHERE publicada = '0980-11-18' AND nro_solici='1900029191'
GO
UPDATE marca
SET publicada= '1983-06-08'
WHERE publicada = '0983-06-08' AND nro_solici='1900042085'
GO
UPDATE marca
SET publicada= '1962-11-20'
WHERE publicada = '0962-11-20' AND nro_solici='1900011214'
GO
UPDATE marca
SET publicada= '1971-11-21'
WHERE publicada = '0971-11-21' AND nro_solici='1900018824'
GO
UPDATE marca
SET publicada= '1993-01-09'
WHERE publicada = '0993-01-09' AND nro_solici='1992007967'
GO
UPDATE marca
SET publicada= '1985-11-30'
WHERE publicada = '0985-11-30' AND nro_solici='1900045875'
GO
UPDATE marca
SET publicada= '1983-02-27'
WHERE publicada = '0983-02-27' AND nro_solici='1900041742'
GO
UPDATE marca
SET publicada= '1983-02-27'
WHERE publicada = '0983-02-27' AND nro_solici='1900041742'
GO
UPDATE marca
SET publicada= '1977-01-01'
WHERE publicada = '0197-01-01' AND nro_solici='1900024353'
GO
UPDATE marca
SET publicada= '1980-11-18'
WHERE publicada = '0980-11-18' AND nro_solici='1900029185'
GO
UPDATE marca
SET publicada= '1992-05-10'
WHERE publicada = '0192-05-10' AND nro_solici='1900055703'
GO
UPDATE marca
SET publicada= '1980-11-14'
WHERE publicada = '0980-11-14' AND nro_solici='1900029057'
GO
UPDATE marca
SET publicada= '1992-11-20'
WHERE publicada = '0992-11-20' AND nro_solici='1992003887'
GO
UPDATE marca
SET publicada= '1992-11-20'
WHERE publicada = '0992-11-20' AND nro_solici='1992003887'
GO
UPDATE marca
SET publicada= '1981-01-02'
WHERE publicada = '0981-01-02' AND nro_solici='1900029245'
GO
UPDATE marca
SET publicada= '1969-11-12'
WHERE publicada = '0969-11-12' AND nro_solici='1900016619'
GO
UPDATE marca
SET publicada= '1971-01-17'
WHERE publicada = '0971-01-17' AND nro_solici='1900018045'
GO
UPDATE marca
SET publicada= '1971-11-08'
WHERE publicada = '0971-11-08' AND nro_solici='1900018991'
GO
UPDATE marca
SET publicada= '1985-01-04'
WHERE publicada = '0985-01-04' AND nro_solici='1900044399'
GO
UPDATE marca
SET publicada= '1947-01-28'
WHERE publicada = '0947-01-28' AND nro_solici='1900003746'
GO
UPDATE marca
SET publicada= '1972-01-28'
WHERE publicada = '0972-01-28' AND nro_solici='1900019058'
GO
UPDATE marca
SET publicada= '1981-06-03'
WHERE publicada = '0981-06-03' AND nro_solici='1900029795'
GO
UPDATE marca
SET publicada= '1982-07-02'
WHERE publicada = '0982-07-02' AND nro_solici='1900040600'
GO
UPDATE marca
SET publicada= '1969-11-06'
WHERE publicada = '0969-11-06' AND nro_solici='1900016532'
GO
UPDATE marca
SET publicada= '1972-01-28'
WHERE publicada = '0972-01-28' AND nro_solici='1900019085'
GO
UPDATE marca
SET publicada= '1971-11-04'
WHERE publicada = '0971-11-04' AND nro_solici='1900018881'
GO
UPDATE marca
SET publicada= '1976-11-17'
WHERE publicada = '0976-11-17' AND nro_solici='1900023438'
GO
UPDATE marca
SET publicada= '1980-11-03'
WHERE publicada = '0980-11-03' AND nro_solici='1900029119'
GO
UPDATE marca
SET publicada= '1969-06-06'
WHERE publicada = '1199-06-06' AND nro_solici='1900016080'
GO
UPDATE marca
SET publicada= '1975-08-22'
WHERE publicada = '0619-08-22' AND nro_solici='1900022288'
GO
UPDATE marca
SET publicada= '1993-06-24'
WHERE publicada = '0993-06-24' AND nro_solici='1993000964'
GO
UPDATE marca
SET publicada= '1985-11-15'
WHERE publicada = '0985-11-15' AND nro_solici='1900045826'
GO
UPDATE marca
SET publicada= '1988-09-22'
WHERE publicada = '0988-09-22' AND nro_solici='1900049909'
GO
UPDATE marca
SET publicada= '1970-11-05'
WHERE publicada = '0970-11-05' AND nro_solici='1900017823'
GO
UPDATE marca
SET publicada= '1977-03-20'
WHERE publicada = '0977-03-20' AND nro_solici='1900023722'
GO
UPDATE marca
SET publicada= '1985-11-16'
WHERE publicada = '0985-11-16' AND nro_solici='1900045855'
GO
UPDATE marca
SET publicada= '1980-11-18'
WHERE publicada = '0980-11-18' AND nro_solici='1900029187'
GO
UPDATE marca
SET publicada= '1992-11-20'
WHERE publicada = '0992-11-20' AND nro_solici='1992004143'
GO
UPDATE marca
SET publicada= '1981-03-11'
WHERE publicada = '0981-03-11' AND nro_solici='1900029548'
GO
UPDATE marca
SET publicada= '1980-11-03'
WHERE publicada = '0980-11-03' AND nro_solici='1900029207'
GO
UPDATE marca
SET publicada= '1975-10-29'
WHERE publicada = '0175-10-29' AND nro_solici='1900022671'
GO
UPDATE marca
SET publicada= '1975-01-25'
WHERE publicada = '0975-01-25' AND nro_solici='1900023739'
GO
UPDATE marca
SET publicada= '1981-03-08'
WHERE publicada = '0981-03-08' AND nro_solici='1900029545'
GO
UPDATE marca
SET publicada= '1981-01-20'
WHERE publicada = '0981-01-20' AND nro_solici='1900029433'
GO
UPDATE marca
SET publicada= '1981-04-24'
WHERE publicada = '0981-04-24' AND nro_solici='1900029641'
GO
UPDATE marca
SET publicada= '1990-08-01'
WHERE publicada = '0990-08-01' AND nro_solici='1900052969'
GO
UPDATE marca
SET publicada= '1960-08-31'
WHERE publicada = '0196-08-31' AND nro_solici='1900010066'
GO
UPDATE marca
SET publicada= '1970-11-07'
WHERE publicada = '0970-11-07' AND nro_solici='1900017756'
GO
UPDATE marca
SET publicada= '1984-08-20'
WHERE publicada = '1084-08-20' AND nro_solici='1900043622'
GO
UPDATE marca
SET publicada= '1984-08-20'
WHERE publicada = '1084-08-20' AND nro_solici='1900043622'
GO
UPDATE marca
SET publicada= '1985-11-07'
WHERE publicada = '0985-11-07' AND nro_solici='1900045765'
GO
UPDATE marca
SET publicada= '1985-11-07'
WHERE publicada = '0985-11-07' AND nro_solici='1900045765'
GO
UPDATE marca
SET publicada= '1970-11-01'
WHERE publicada = '0970-11-01' AND nro_solici='1900017972'
GO
UPDATE marca
SET publicada= '1989-11-03'
WHERE publicada = '0989-11-03' AND nro_solici='1900050451'
GO
UPDATE marca
SET publicada= '1982-07-02'
WHERE publicada = '0982-07-02' AND nro_solici='1900040598'
GO
UPDATE marca
SET publicada= '1976-11-10'
WHERE publicada = '0976-11-10' AND nro_solici='1900022587'
GO
UPDATE marca
SET publicada= '1981-10-08'
WHERE publicada = '0981-10-08' AND nro_solici='1900030043'
GO
UPDATE marca
SET publicada= '1978-11-27'
WHERE publicada = '0978-11-27' AND nro_solici='1900025627'
GO
UPDATE marca
SET publicada= '1989-12-15'
WHERE publicada = '0989-12-15' AND nro_solici='1989003661'
GO
UPDATE marca
SET publicada= '1993-06-16'
WHERE publicada = '0199-06-16' AND nro_solici='1992003641'
GO
UPDATE marca
SET publicada= '1952-11-17'
WHERE publicada = '1592-11-17' AND nro_solici='1900006341'
GO
UPDATE marca
SET publicada= '1971-09-23'
WHERE publicada = '0197-09-23' AND nro_solici='1900018670'
GO
UPDATE marca
SET publicada= '199-12-04'
WHERE publicada = '0199-12-04' AND nro_solici='1900051794'
GO
UPDATE marca
SET publicada= '1989-12-04'
WHERE publicada = '0199-12-04' AND nro_solici='1900051794'
GO
UPDATE marca
SET publicada= '1989-12-04'
WHERE publicada = '0199-12-04' AND nro_solici='1900051794'
GO
UPDATE marca
SET publicada= '1981-10-08'
WHERE publicada = '0981-10-08' AND nro_solici='1900030057'
GO
UPDATE marca
SET publicada= '1981-10-08'
WHERE publicada = '0981-10-08' AND nro_solici='1900030057'
GO
UPDATE marca
SET publicada= '1983-02-27'
WHERE publicada = '0183-02-27' AND nro_solici='1900041736'
GO
UPDATE marca
SET publicada= '1993-01-24'
WHERE publicada = '0993-01-24' AND nro_solici='1992006560'
GO
UPDATE marca
SET publicada= '1995-09-07'
WHERE publicada = '1195-09-07' AND nro_solici='1992005116'
GO
UPDATE marca
SET publicada= '1995-07-26'
WHERE publicada = '0195-07-26' AND nro_solici='1994001289'
GO
UPDATE marca
SET publicada= '1980-05-01'
WHERE publicada = '0198-05-01' AND nro_solici='1900028724'
GO
UPDATE marca
SET publicada= '1995-10-01'
WHERE publicada = '1195-10-01' AND nro_solici='1994002450'
GO
UPDATE marca
SET publicada= '1995-06-20'
WHERE publicada = '0195-06-20' AND nro_solici='1994004441'
GO
UPDATE marca
SET publicada= '1995-06-20'
WHERE publicada = '0195-06-20' AND nro_solici='1994004441'
GO
UPDATE marca
SET publicada= '1995-01-10'
WHERE publicada = '0995-01-10' AND nro_solici='1994004601'
GO
UPDATE marca
SET publicada= '1995-09-27'
WHERE publicada = '1195-09-27' AND nro_solici='1994005216'
GO
UPDATE marca
SET publicada= '1995-01-21'
WHERE publicada = '0995-01-21' AND nro_solici='1995001360'
GO
UPDATE marca
SET publicada= '1995-09-27'
WHERE publicada = '1195-09-27' AND nro_solici='1995001885'
GO
UPDATE marca
SET publicada= '1995-07-28'
WHERE publicada = '0199-07-28' AND nro_solici='1994007178'
GO
UPDATE marca
SET publicada= '1995-01-03'
WHERE publicada = '0195-01-03' AND nro_solici='1994008042'
GO
UPDATE marca
SET publicada= '1994-10-11'
WHERE publicada = '0004-10-11' AND nro_solici='1900060507'
GO
UPDATE marca
SET publicada= '1993-11-11'
WHERE publicada = '0993-11-11' AND nro_solici='1900058898'
GO
UPDATE marca
SET publicada= '1993-11-11'
WHERE publicada = '0993-11-11' AND nro_solici='1900058898'
GO
UPDATE marca
SET publicada= '2004-05-10'
WHERE publicada = '0004-05-10' AND nro_solici='1995004287'
GO
UPDATE marca
SET publicada= '1996-01-06'
WHERE publicada = '1199-01-06' AND nro_solici='1995008160'
GO
UPDATE marca
SET publicada= '1996-06-24'
WHERE publicada = '0199-06-24' AND nro_solici='1995011098'
GO
UPDATE marca
SET publicada= '1977-07-11'
WHERE publicada = '0977-07-11' AND nro_solici='1900023888'
GO
UPDATE marca
SET publicada= '1996-11-01'
WHERE publicada = '0996-11-01' AND nro_solici='1996005756'
GO
UPDATE marca
SET publicada= '1996-11-01'
WHERE publicada = '0996-11-01' AND nro_solici='1996004114'
GO
UPDATE marca
SET publicada= '2001-01-03'
WHERE publicada = '0201-01-03' AND nro_solici='1900054788'
GO
UPDATE marca
SET publicada= '1996-11-01'
WHERE publicada = '0996-11-01' AND nro_solici='1996007096'
GO
UPDATE marca
SET publicada= '1996-11-01'
WHERE publicada = '0996-11-01' AND nro_solici='1996007757'
GO
UPDATE marca
SET publicada= '1996-11-01'
WHERE publicada = '0996-11-01' AND nro_solici='1996007757'
GO
UPDATE marca
SET publicada= '2000-04-01'
WHERE publicada = '0200-04-01' AND nro_solici='1996007869'
GO
UPDATE marca
SET publicada= '1997-01-01'
WHERE publicada = '0097-01-01' AND nro_solici='1996010257'
GO
UPDATE marca
SET publicada= '1999-08-31'
WHERE publicada = '0199-08-31' AND nro_solici='1996010436'
GO
UPDATE marca
SET publicada= '1997-10-01'
WHERE publicada = '0097-10-01' AND nro_solici='1997005163'
GO
UPDATE marca
SET publicada= '1998-12-27'
WHERE publicada = '0198-12-27' AND nro_solici='1997007130'
GO
UPDATE marca
SET publicada= '1999-06-07'
WHERE publicada = '0199-06-07' AND nro_solici='1997010450'
GO
UPDATE marca
SET publicada= '1997-02-01'
WHERE publicada = '0197-02-01' AND nro_solici='1997011834'
GO
UPDATE marca
SET publicada= '1998-11-17'
WHERE publicada = '0998-11-17' AND nro_solici='1997013636'
GO
UPDATE marca
SET publicada= '2000-08-31'
WHERE publicada = '0200-08-31' AND nro_solici='1998004190'
GO
UPDATE marca
SET publicada= '1999-12-01'
WHERE publicada = '0199-12-01' AND nro_solici='1998008954'
GO
UPDATE marca
SET publicada= '1999-02-04'
WHERE publicada = '0200-02-04' AND nro_solici='1998005300'
GO
UPDATE marca
SET publicada= '1999-02-04'
WHERE publicada = '0200-02-04' AND nro_solici='1998005300'
GO
UPDATE marca
SET publicada= '2000-01-14'
WHERE publicada = '0200-01-14' AND nro_solici='1998011564'
GO
UPDATE marca
SET publicada= '1998-06-05'
WHERE publicada = '0998-06-05' AND nro_solici='1900072274'
GO
UPDATE marca
SET publicada= '1999-10-07'
WHERE publicada = '0199-10-07' AND nro_solici='1998013047'
GO
UPDATE marca
SET publicada= '1999-10-07'
WHERE publicada = '0199-10-07' AND nro_solici='1998013047'
GO
UPDATE marca
SET publicada= '2000-07-01'
WHERE publicada = '0200-07-01' AND nro_solici='1999002675'
GO
UPDATE marca
SET publicada= '2000-06-01'
WHERE publicada = '0200-06-01' AND nro_solici='1999001555'
GO
UPDATE marca
SET publicada= '2000-09-29'
WHERE publicada = '0200-09-29' AND nro_solici='1999010693'
GO
UPDATE marca
SET publicada= '1999-05-24'
WHERE publicada = '0199-05-24' AND nro_solici='1999002245'
GO
UPDATE marca
SET publicada= '1999-10-10'
WHERE publicada = '0199-10-10' AND nro_solici='1999004571'
GO
UPDATE marca
SET publicada= '1999-07-09'
WHERE publicada = '0199-07-09' AND nro_solici='1999004269'
GO
UPDATE marca
SET publicada= '2000-04-14'
WHERE publicada = '0200-04-14' AND nro_solici='1999012051'
GO
UPDATE marca
SET publicada= '2000-05-25'
WHERE publicada = '0200-05-25' AND nro_solici='1999014848'
GO
UPDATE marca
SET publicada= '2000-03-31'
WHERE publicada = '0200-03-31' AND nro_solici='1999015923'
GO
UPDATE marca
SET publicada= '2000-11-22'
WHERE publicada = '1200-11-22' AND nro_solici='2000002996'
GO
UPDATE marca
SET publicada= '2000-09-01'
WHERE publicada = '0200-09-01' AND nro_solici='2000004133'
GO
UPDATE marca
SET publicada= '2000-09-01'
WHERE publicada = '0200-09-01' AND nro_solici='2000004133'
GO
UPDATE marca
SET publicada= '2000-09-13'
WHERE publicada = '0200-09-13' AND nro_solici='2000000104'
GO
UPDATE marca
SET publicada= '2000-09-13'
WHERE publicada = '0200-09-13' AND nro_solici='2000000104'
GO
UPDATE marca
SET publicada= '2000-09-01'
WHERE publicada = '0200-09-01' AND nro_solici='2000009015'
GO
UPDATE marca
SET publicada= '2000-08-29'
WHERE publicada = '0200-08-29' AND nro_solici='2000005941'
GO
UPDATE marca
SET publicada= '2000-12-18'
WHERE publicada = '0200-12-18' AND nro_solici='2000008293'
GO
UPDATE marca
SET publicada= '2000-12-18'
WHERE publicada = '0200-12-18' AND nro_solici='2000008293'
GO
UPDATE marca
SET publicada= '2000-12-18'
WHERE publicada = '0200-12-29' AND nro_solici='2000008312'
GO
UPDATE marca
SET publicada= '2001-02-01'
WHERE publicada = '0001-02-01' AND nro_solici='2000012518'
GO
UPDATE marca
SET publicada= '2003-05-02'
WHERE publicada = '0003-05-02' AND nro_solici='2002001745'
GO
UPDATE marca
SET publicada= '2005-04-13'
WHERE publicada = '1095-04-13' AND nro_solici='2003010008'
GO
UPDATE marca
SET publicada= '2012-12-04'
WHERE publicada = '0012-12-04' AND nro_solici='2007041458'
GO
UPDATE marca
SET publicada= '2011-01-18'
WHERE publicada = '0111-01-18' AND nro_solici='2010022188'
GO
UPDATE marca
SET publicada= '2011-10-10'
WHERE publicada = '0111-10-10' AND nro_solici='2011010697'
GO
UPDATE marca
SET publicada= '2012-10-01'
WHERE publicada = '0212-10-01' AND nro_solici='2011025876'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2011035379'
GO
UPDATE marca
SET publicada= '2012-10-18'
WHERE publicada = '0212-10-18' AND nro_solici='2011038612'
GO
UPDATE marca
SET publicada= '2012-02-07'
WHERE publicada = '0012-02-07' AND nro_solici='2011040970'
GO
UPDATE marca
SET publicada= '2012-02-07'
WHERE publicada = '0012-02-07' AND nro_solici='2011040970'
GO
UPDATE marca
SET publicada= '2012-02-07'
WHERE publicada = '0012-02-07' AND nro_solici='2011040972'
GO
UPDATE marca
SET publicada= '2012-02-07'
WHERE publicada = '0012-02-07' AND nro_solici='2011040989'
GO
UPDATE marca
SET publicada= '2012-02-07'
WHERE publicada = '0012-02-07' AND nro_solici='2011040989'
GO
UPDATE marca
SET publicada= '2012-10-18'
WHERE publicada = '0212-10-18' AND nro_solici='2012014969'
GO
UPDATE marca
SET publicada= '2012-04-13'
WHERE publicada = '0012-04-13' AND nro_solici='2012004568'
GO
UPDATE marca
SET publicada= '2012-05-11'
WHERE publicada = '0012-05-11' AND nro_solici='2012005765'
GO
UPDATE marca
SET publicada= '2012-02-16'
WHERE publicada = '0012-02-16' AND nro_solici='2012006821'
GO
UPDATE marca
SET publicada= '2012-12-21'
WHERE publicada = '0012-12-21' AND nro_solici='2012017089'
GO
UPDATE marca
SET publicada= '2012-10-01'
WHERE publicada = '0212-10-01' AND nro_solici='2012019628'
GO
UPDATE marca
SET publicada= '2012-10-01'
WHERE publicada = '0212-10-01' AND nro_solici='2012022572'
GO
UPDATE marca
SET publicada= '2012-02-01'
WHERE publicada = '0012-02-01' AND nro_solici='2012022575'
GO
UPDATE marca
SET publicada= '2012-10-24'
WHERE publicada = '0212-10-24' AND nro_solici='2012028383'
GO
UPDATE marca
SET publicada= '2013-02-25'
WHERE publicada = '0013-02-25' AND nro_solici='2012036832'
GO
UPDATE marca
SET publicada= '2013-02-15'
WHERE publicada = '0013-02-15' AND nro_solici='2013008379'
GO
UPDATE marca
SET publicada= '2013-12-02'
WHERE publicada = '0013-12-02' AND nro_solici='2013020622'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013025700'
GO
UPDATE marca
SET publicada= '2013-12-06'
WHERE publicada = '0013-12-06' AND nro_solici='2013026669'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013028457'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013028420'
GO
UPDATE marca
SET publicada= '2013-12-06'
WHERE publicada = '0013-12-06' AND nro_solici='2013029726'
GO
UPDATE marca
SET publicada= '2014-06-04'
WHERE publicada = '0214-06-04' AND nro_solici='2013030638'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013032828'
GO
UPDATE marca
SET publicada= '2013-12-06'
WHERE publicada = '0013-12-06' AND nro_solici='2013035773'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013035994'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013036707'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013038346'
GO
UPDATE marca
SET publicada= '2014-10-27'
WHERE publicada = '0214-10-27' AND nro_solici='2014004256'
GO
UPDATE marca
SET publicada= '2014-12-28'
WHERE publicada = '0014-12-28' AND nro_solici='2013041730'
GO
UPDATE marca
SET publicada= '2014-12-03'
WHERE publicada = '0014-12-03' AND nro_solici='2014002329'
GO
UPDATE marca
SET publicada= '2014-07-30'
WHERE publicada = '0204-07-30' AND nro_solici='2014017977'
GO
UPDATE marca
SET publicada= '2014-12-23'
WHERE publicada = '0014-12-23' AND nro_solici='2014024606'
GO
UPDATE marca
SET publicada= '2015-02-25'
WHERE publicada = '0015-02-25' AND nro_solici='2014025809'
GO
UPDATE marca
SET publicada= '2014-12-28'
WHERE publicada = '0014-12-28' AND nro_solici='2014029663'
GO
UPDATE marca
SET publicada= '2015-02-18'
WHERE publicada = '0145-02-18' AND nro_solici='2014029774'
GO
UPDATE marca
SET publicada= '2014-12-17'
WHERE publicada = '0014-12-17' AND nro_solici='2014033812'
GO
UPDATE marca
SET publicada= '2014-12-17'
WHERE publicada = '0014-12-17' AND nro_solici='2014034331'
GO
UPDATE marca
SET publicada= '2015-10-14'
WHERE publicada = '0215-10-14' AND nro_solici='2014040474'
GO
UPDATE marca
SET publicada= '2015-02-09'
WHERE publicada = '0015-02-09' AND nro_solici='2014040829'
GO
UPDATE marca
SET publicada= '2015-02-19'
WHERE publicada = '0015-02-19' AND nro_solici='2014040836'
GO
UPDATE marca
SET publicada= '2015-02-17'
WHERE publicada = '0015-02-17' AND nro_solici='2014042431'
GO
UPDATE marca
SET publicada= '2015-08-24'
WHERE publicada = '0215-08-24' AND nro_solici='2015000384'
GO
UPDATE marca
SET publicada= '2015-07-15'
WHERE publicada = '0215-07-15' AND nro_solici='2015014841'
GO
UPDATE marca
SET publicada= '2015-10-14'
WHERE publicada = '0215-10-14' AND nro_solici='2015015668'
GO
UPDATE marca
SET publicada= '2015-07-15'
WHERE publicada = '0215-07-15' AND nro_solici='2015016361'
GO
UPDATE marca
SET publicada= '2015-10-14'
WHERE publicada = '0215-10-14' AND nro_solici='2015018305'
GO
UPDATE marca
SET publicada= '2015-02-09'
WHERE publicada = '0015-02-09' AND nro_solici='2015009107'
GO
UPDATE marca
SET publicada= '2015-02-09'
WHERE publicada = '0015-02-09' AND nro_solici='2015009107'
GO
UPDATE marca
SET publicada= '2015-10-23'
WHERE publicada = '0215-10-23' AND nro_solici='2015011766'
GO
UPDATE marca
SET publicada= '2015-10-14'
WHERE publicada = '0215-10-14' AND nro_solici='2015026235'
GO
UPDATE marca
SET publicada= '1980-11-03'
WHERE publicada = '0980-11-03' AND nro_solici='1900029109'
GO
UPDATE marca
SET publicada= '1993-11-11'
WHERE publicada = '0993-11-11' AND nro_solici='1900058898'
GO
UPDATE marca
SET publicada= '1993-01-26'
WHERE publicada = '1199-01-26' AND nro_solici='1900016420'
GO
UPDATE marca
SET publicada= '1981-10-08'
WHERE publicada = '0981-10-08' AND nro_solici='1900030057'
GO
UPDATE marca
SET publicada= '1983-02-27'
WHERE publicada = '0183-02-27' AND nro_solici='1900041736'
GO
UPDATE marca
SET publicada= '1983-02-27'
WHERE publicada = '0183-02-27' AND nro_solici='1900041736'
GO
UPDATE marca
SET publicada= '1993-01-24'
WHERE publicada = '0993-01-24' AND nro_solici='1992006560'
GO
UPDATE marca
SET publicada= '1995-09-07'
WHERE publicada = '1195-09-07' AND nro_solici='1992005116'
GO
UPDATE marca
SET publicada= '1995-07-26'
WHERE publicada = '0195-07-26' AND nro_solici='1994001289'
GO
UPDATE marca
SET publicada= '1980-05-01'
WHERE publicada = '0198-05-01' AND nro_solici='1900028724'
GO
UPDATE marca
SET publicada= '1995-10-01'
WHERE publicada = '1195-10-01' AND nro_solici='1994002450'
GO
UPDATE marca
SET publicada= '1995-06-20'
WHERE publicada = '0195-06-20' AND nro_solici='1994004441'
GO
UPDATE marca
SET publicada= '1995-06-20'
WHERE publicada = '0195-06-20' AND nro_solici='1994004441'
GO
UPDATE marca
SET publicada= '1970-01-26'
WHERE publicada = '1199-01-26' AND nro_solici='1900016420'
GO
UPDATE marca
SET publicada= '1989-12-04'
WHERE publicada = '0199-12-04' AND nro_solici='1900051794'
GO
UPDATE marca
SET publicada= '1995-01-10'
WHERE publicada = '0995-01-10' AND nro_solici='1994004601'
GO
UPDATE marca
SET publicada= '1995-01-10'
WHERE publicada = '0995-01-10' AND nro_solici='1994004601'
GO
UPDATE marca
SET publicada= '1995-09-27'
WHERE publicada = '1195-09-27' AND nro_solici='1994005216'
GO
UPDATE marca
SET publicada= '1995-01-21'
WHERE publicada = '0995-01-21' AND nro_solici='1995001360'
GO
UPDATE marca
SET publicada= '1995-09-27'
WHERE publicada = '1195-09-27' AND nro_solici='1995001885'
GO
UPDATE marca
SET publicada= '1995-07-28'
WHERE publicada = '0199-07-28' AND nro_solici='1994007178'
GO
UPDATE marca
SET publicada= '1995-01-03'
WHERE publicada = '0195-01-03' AND nro_solici='1994008042'
GO
UPDATE marca
SET publicada= '1994-10-11'
WHERE publicada = '0004-10-11' AND nro_solici='1900060507'
GO
UPDATE marca
SET publicada= '2004-05-10'
WHERE publicada = '0004-05-10' AND nro_solici='1995004287'
GO
UPDATE marca
SET publicada= '1994-10-11'
WHERE publicada = '0004-05-10' AND nro_solici='1995004287'
GO
UPDATE marca
SET publicada= '1996-01-06'
WHERE publicada = '1199-01-06' AND nro_solici='1995008160'
GO
UPDATE marca
SET publicada= '1996-06-24'
WHERE publicada = '0199-06-24' AND nro_solici='1995011098'
GO
UPDATE marca
SET publicada= '1977-07-11'
WHERE publicada = '0977-07-11' AND nro_solici='1900023888'
GO
UPDATE marca
SET publicada= '1996-11-01'
WHERE publicada = '0996-11-01' AND nro_solici='1996005756'
GO
UPDATE marca
SET publicada= '1996-11-01'
WHERE publicada = '0996-11-01' AND nro_solici='1996004114'
GO
UPDATE marca
SET publicada= '2001-01-03'
WHERE publicada = '0201-01-03' AND nro_solici='1900054788'
GO
UPDATE marca
SET publicada= '1996-11-01'
WHERE publicada = '0996-11-01' AND nro_solici='1996007096'
GO
UPDATE marca
SET publicada= '1996-11-01'
WHERE publicada = '0996-11-01' AND nro_solici='1996007757'
GO
UPDATE marca
SET publicada= '2000-04-01'
WHERE publicada = '0200-04-01' AND nro_solici='1996007869'
GO
UPDATE marca
SET publicada= '1997-01-01'
WHERE publicada = '0097-01-01' AND nro_solici='1996010257'
GO
UPDATE marca
SET publicada= '1999-08-31'
WHERE publicada = '0199-08-31' AND nro_solici='1996010436'
GO
UPDATE marca
SET publicada= '1997-10-01'
WHERE publicada = '0097-10-01' AND nro_solici='1997005163'
GO
UPDATE marca
SET publicada= '1998-12-27'
WHERE publicada = '0198-12-27' AND nro_solici='1997007130'
GO
UPDATE marca
SET publicada= '1999-06-07'
WHERE publicada = '0199-06-07' AND nro_solici='1997010450'
GO
UPDATE marca
SET publicada= '1998-02-01'
WHERE publicada = '0197-02-01' AND nro_solici='1997011834'
GO
UPDATE marca
SET publicada= '1998-11-17'
WHERE publicada = '0998-11-17' AND nro_solici='1997013636'
GO
UPDATE marca
SET publicada= '2000-08-31'
WHERE publicada = '0200-08-31' AND nro_solici='1998004190'
GO
UPDATE marca
SET publicada= '1999-12-01'
WHERE publicada = '0199-12-01' AND nro_solici='1998008954'
GO
UPDATE marca
SET publicada= '2000-02-04'
WHERE publicada = '0200-02-04' AND nro_solici='1998005300'
GO
UPDATE marca
SET publicada= '2000-01-14'
WHERE publicada = '0200-01-14' AND nro_solici='1998011564'
GO
UPDATE marca
SET publicada= '1998-06-05'
WHERE publicada = '0998-06-05' AND nro_solici='1900072274'
GO
UPDATE marca
SET publicada= '1999-10-07'
WHERE publicada = '0199-10-07' AND nro_solici='1998013047'
GO
UPDATE marca
SET publicada= '2000-06-01'
WHERE publicada = '0200-06-01' AND nro_solici='1999001555'
GO
UPDATE marca
SET publicada= '2000-09-29'
WHERE publicada = '0200-09-29' AND nro_solici='1999010693'
GO
UPDATE marca
SET publicada= '1999-05-24'
WHERE publicada = '0199-05-24' AND nro_solici='1999002245'
GO
UPDATE marca
SET publicada= '2000-07-01'
WHERE publicada = '0200-07-01' AND nro_solici='1999002675'
GO
UPDATE marca
SET publicada= '1999-10-10'
WHERE publicada = '0199-10-10' AND nro_solici='1999004571'
GO
UPDATE marca
SET publicada= '1999-07-09'
WHERE publicada = '0199-07-09' AND nro_solici='1999004269'
GO
UPDATE marca
SET publicada= '2000-04-14'
WHERE publicada = '0200-04-14' AND nro_solici='1999012051'
GO
UPDATE marca
SET publicada= '2000-05-25'
WHERE publicada = '0200-05-25' AND nro_solici='1999014848'
GO
UPDATE marca
SET publicada= '2000-03-31'
WHERE publicada = '0200-03-31' AND nro_solici='1999015923'
GO
UPDATE marca
SET publicada= '2000-11-22'
WHERE publicada = '1200-11-22' AND nro_solici='2000002996'
GO
UPDATE marca
SET publicada= '2000-09-01'
WHERE publicada = '0200-09-01' AND nro_solici='2000004133'
GO
UPDATE marca
SET publicada= '2000-09-13'
WHERE publicada = '0200-09-13' AND nro_solici='2000000104'
GO
UPDATE marca
SET publicada= '2000-08-29'
WHERE publicada = '0200-08-29' AND nro_solici='2000005941'
GO
UPDATE marca
SET publicada= '2000-12-18'
WHERE publicada = '0200-12-18' AND nro_solici='2000008293'
GO
UPDATE marca
SET publicada= '2000-12-29'
WHERE publicada = '0200-12-29' AND nro_solici='2000008312'
GO
UPDATE marca
SET publicada= '2000-09-01'
WHERE publicada = '0200-09-01' AND nro_solici='2000009015'
GO
UPDATE marca
SET publicada= '2001-02-01'
WHERE publicada = '0001-02-01' AND nro_solici='2000012518'
GO
UPDATE marca
SET publicada= '2003-05-02'
WHERE publicada = '0003-05-02' AND nro_solici='2002001745'
GO
UPDATE marca
SET publicada= '2005-04-13'
WHERE publicada = '1095-04-13' AND nro_solici='2003010008'
GO
UPDATE marca
SET publicada= '2012-12-04'
WHERE publicada = '0012-12-04' AND nro_solici='2007041458'
GO
UPDATE marca
SET publicada= '2011-01-18'
WHERE publicada = '0111-01-18' AND nro_solici='2010022188'
GO
UPDATE marca
SET publicada= '2011-10-10'
WHERE publicada = '0111-10-10' AND nro_solici='2011010697'
GO
UPDATE marca
SET publicada= '2012-10-01'
WHERE publicada = '0212-10-01' AND nro_solici='2011025876'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2011035379'
GO
UPDATE marca
SET publicada= '2012-10-18'
WHERE publicada = '0212-10-18' AND nro_solici='2011038612'
GO
UPDATE marca
SET publicada= '2012-02-07'
WHERE publicada = '0012-02-07' AND nro_solici='2011040970'
GO
UPDATE marca
SET publicada= '2012-02-07'
WHERE publicada = '0012-02-07' AND nro_solici='2011040972'
GO
UPDATE marca
SET publicada= '2012-02-07'
WHERE publicada = '0012-02-07' AND nro_solici='2011040989'
GO
UPDATE marca
SET publicada= '2012-10-18'
WHERE publicada = '0212-10-18' AND nro_solici='2012014969'
GO
UPDATE marca
SET publicada= '2012-04-13'
WHERE publicada = '0012-04-13' AND nro_solici='2012004568'
GO
UPDATE marca
SET publicada= '2012-05-11'
WHERE publicada = '0012-05-11' AND nro_solici='2012005765'
GO
UPDATE marca
SET publicada= '2012-02-16'
WHERE publicada = '0012-02-16' AND nro_solici='2012006821'
GO
UPDATE marca
SET publicada= '2012-12-21'
WHERE publicada = '0012-12-21' AND nro_solici='2012017089'
GO
UPDATE marca
SET publicada= '2012-10-01'
WHERE publicada = '0212-10-01' AND nro_solici='2012019628'
GO
UPDATE marca
SET publicada= '2012-10-01'
WHERE publicada = '0212-10-01' AND nro_solici='2012022572'
GO
UPDATE marca
SET publicada= '2012-02-01'
WHERE publicada = '0012-02-01' AND nro_solici='2012022575'
GO
UPDATE marca
SET publicada= '2012-10-24'
WHERE publicada = '0212-10-24' AND nro_solici='2012028383'
GO
UPDATE marca
SET publicada= '2012-10-24'
WHERE publicada = '0212-10-24' AND nro_solici='2012028383'
GO
UPDATE marca
SET publicada= '2013-02-25'
WHERE publicada = '0013-02-25' AND nro_solici='2012036832'
GO
UPDATE marca
SET publicada= '2013-02-15'
WHERE publicada = '0013-02-15' AND nro_solici='2013008379'
GO
UPDATE marca
SET publicada= '2013-12-02'
WHERE publicada = '0013-12-02' AND nro_solici='2013020622'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013025700'
GO
UPDATE marca
SET publicada= '2013-12-06'
WHERE publicada = '0013-12-06' AND nro_solici='2013026669'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013028457'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013028420'
GO
UPDATE marca
SET publicada= '2013-12-06'
WHERE publicada = '0013-12-06' AND nro_solici='2013029726'
GO
UPDATE marca
SET publicada= '2014-06-04'
WHERE publicada = '0214-06-04' AND nro_solici='2013030638'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013032828'
GO
UPDATE marca
SET publicada= '2013-12-06'
WHERE publicada = '0013-12-06' AND nro_solici='2013035773'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013035994'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013036707'
GO
UPDATE marca
SET publicada= '2013-12-31'
WHERE publicada = '0013-12-31' AND nro_solici='2013038346'
GO
UPDATE marca
SET publicada= '2014-10-27'
WHERE publicada = '0214-10-27' AND nro_solici='2014004256'
GO
UPDATE marca
SET publicada= '2014-12-28'
WHERE publicada = '0014-12-28' AND nro_solici='2013041730'
GO
UPDATE marca
SET publicada= '2014-12-03'
WHERE publicada = '0014-12-03' AND nro_solici='2014002329'
GO
UPDATE marca
SET publicada= '2014-07-30'
WHERE publicada = '0204-07-30' AND nro_solici='2014017977'
GO
UPDATE marca
SET publicada= '2014-12-23'
WHERE publicada = '0014-12-23' AND nro_solici='2014024606'
GO
UPDATE marca
SET publicada= '2015-02-25'
WHERE publicada = '0015-02-25' AND nro_solici='2014025809'
GO
UPDATE marca
SET publicada= '2014-12-28'
WHERE publicada = '0014-12-28' AND nro_solici='2014029663'
GO
UPDATE marca
SET publicada= '2015-02-18'
WHERE publicada = '0145-02-18' AND nro_solici='2014029774'
GO
UPDATE marca
SET publicada= '2014-12-17'
WHERE publicada = '0014-12-17' AND nro_solici='2014033812'
GO
UPDATE marca
SET publicada= '2014-12-17'
WHERE publicada = '0014-12-17' AND nro_solici='2014034331'
GO
UPDATE marca
SET publicada= '2015-10-14'
WHERE publicada = '0215-10-14' AND nro_solici='2014040474'
GO
UPDATE marca
SET publicada= '2015-02-09'
WHERE publicada = '0015-02-09' AND nro_solici='2014040829'
GO
UPDATE marca
SET publicada= '2015-02-19'
WHERE publicada = '0015-02-19' AND nro_solici='2014040836'
GO
UPDATE marca
SET publicada= '2015-02-17'
WHERE publicada = '0015-02-17' AND nro_solici='2014042431'
GO
UPDATE marca
SET publicada= '2015-08-24'
WHERE publicada = '0215-08-24' AND nro_solici='2015000384'
GO
UPDATE marca
SET publicada= '2015-08-24'
WHERE publicada = '0215-08-24' AND nro_solici='2015014841'
GO
UPDATE marca
SET publicada= '2015-07-15'
WHERE publicada = '0215-07-15' AND nro_solici='2015014841'
GO
UPDATE marca
SET publicada= '2015-10-14'
WHERE publicada = '0215-10-14' AND nro_solici='2015015668'
GO
UPDATE marca
SET publicada= '2015-07-15'
WHERE publicada = '0215-07-15' AND nro_solici='2015016361'
GO
UPDATE marca
SET publicada= '2015-10-14'
WHERE publicada = '0215-10-14' AND nro_solici='2015018305'
GO
UPDATE marca
SET publicada= '2015-02-09'
WHERE publicada = '0015-02-09' AND nro_solici='2015009107'
GO
UPDATE marca
SET publicada= '2015-10-23'
WHERE publicada = '0215-10-23' AND nro_solici='2015011766'
GO
UPDATE marca
SET publicada= '2015-10-14'
WHERE publicada = '0215-10-14' AND nro_solici='2015026235'
GO

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--CORRECCION DEL CAMPO SOLICITADA DE LA TABLA MARCAS

--select nro_solici,solicitada from marca
--where DAY(solicitada)<1 OR MONTH(solicitada)<1 OR YEAR(solicitada)>9999 OR YEAR(solicitada)< 1753
--GO
--select nro_solici,solicitada from marca
--where DAY(solicitada)>31 or MONTH(solicitada)>12 or YEAR (solicitada)>9999 or YEAR(solicitada)<1753
--GO

--Correccion de fecha solicitada  
UPDATE marca
SET solicitada = '1967-01-10'
WHERE solicitada = '0967-01-10' AND nro_solici='1900014094'
GO
UPDATE marca
SET solicitada = '1968-09-06'
WHERE solicitada = '0168-09-06' AND nro_solici='1900015841'
GO
UPDATE marca
SET solicitada = '1981-11-21'
WHERE solicitada = '0981-11-21' AND nro_solici='1900029307' 
GO
UPDATE marca
SET solicitada = '1983-11-09'
WHERE solicitada = '0983-11-09' AND nro_solici='1900043321' 
GO
UPDATE marca
SET solicitada = '1980-01-24'
WHERE solicitada = '0980-01-24' AND nro_solici='1900043163' 
GO
UPDATE marca
SET solicitada = '1980-11-05'
WHERE solicitada = '0980-11-05' AND nro_solici='1900029255' 
GO
UPDATE marca
SET solicitada = '1971-11-23'
WHERE solicitada = '0971-11-23' AND nro_solici='1900018684' 
GO
UPDATE marca
SET solicitada = '1983-11-21'
WHERE solicitada = '0983-11-21' AND nro_solici='1900043318' 
GO
UPDATE marca
SET solicitada = '1980-11-05'
WHERE solicitada = '0980-11-05' AND nro_solici='1900029258' 
GO
UPDATE marca
SET solicitada = '1985-01-16'
WHERE solicitada = '0985-01-16' AND nro_solici='1900044699' 
GO
UPDATE marca
SET solicitada = '1983-11-21'
WHERE solicitada = '0983-11-21' AND nro_solici='1900043325' 
GO
UPDATE marca
SET solicitada = '1980-11-05'
WHERE solicitada = '0980-11-05' AND nro_solici='1900029136' 
GO
UPDATE marca
SET solicitada = '1975-11-10'
WHERE solicitada = '1975-11-10' AND nro_solici='1900023665'
GO
UPDATE marca
SET solicitada = '1975-11-10'
WHERE solicitada = '0975-11-10' AND nro_solici='1900023665'
GO
UPDATE marca
SET solicitada = '1983-11-10'
WHERE solicitada = '0983-11-10' AND nro_solici='1900043519'
GO
UPDATE marca
SET solicitada = '1994-03-12'
WHERE solicitada = '0194-03-12' AND nro_solici='1900043564'
GO
UPDATE marca
SET solicitada = '1998-06-03'
WHERE solicitada = '0198-06-03' AND nro_solici='1900029401'
GO
UPDATE marca
SET solicitada = '1983-11-18'
WHERE solicitada = '0983-11-18' AND nro_solici='1900043383'
GO
UPDATE marca
SET solicitada = '1993-03-24'
WHERE solicitada = '1193-03-24' AND nro_solici='1900002247'
GO

UPDATE marca
SET solicitada = '1983-11-21'
WHERE solicitada = '0983-11-21' AND nro_solici='1900043323'
GO

UPDATE marca
SET solicitada = '1962-11-10'
WHERE solicitada = '0962-11-10' AND nro_solici='1900011314'
GO
UPDATE marca
SET solicitada = '1975-11-25'
WHERE solicitada = '0975-11-25' AND nro_solici='1900023799'
GO
UPDATE marca
SET solicitada = '1983-11-10'
WHERE solicitada = '0983-11-10' AND nro_solici='1900043515'
GO
UPDATE marca
SET solicitada = '1984-01-05'
WHERE solicitada = '0984-01-05' AND nro_solici='1900043090'
GO
UPDATE marca
SET solicitada = '1980-11-18'
WHERE solicitada = '0980-11-18' AND nro_solici='1900029295'
GO

UPDATE marca
SET solicitada = '1981-01-06'
WHERE solicitada = '0981-01-06' AND nro_solici='1900029433'
GO
UPDATE marca
SET solicitada = '1983-11-10'
WHERE solicitada = '0983-11-10' AND nro_solici='1900043069'
GO
UPDATE marca
SET solicitada = '1998-05-11'
WHERE solicitada = '0198-05-11' AND nro_solici='1900041846'
GO
UPDATE marca
SET solicitada = '1993-07-03'
WHERE solicitada = '0993-07-03' AND nro_solici='1901001607'
GO
UPDATE marca
SET solicitada = '1995-07-03'
WHERE solicitada = '1195-01-12' AND nro_solici='1900003431'
GO
UPDATE marca
SET solicitada = '1992-06-30'
WHERE solicitada = '0192-06-30' AND nro_solici='1900058717'
GO
UPDATE marca
SET solicitada = '1985-08-20'
WHERE solicitada = '0985-08-20' AND nro_solici='1900046001'
GO
UPDATE marca
SET solicitada = '1986-10-01'
WHERE solicitada = '0986-10-01' AND nro_solici='1900046889'
GO
UPDATE marca
SET solicitada = '1997-07-31'
WHERE solicitada = '0197-07-31' AND nro_solici='1998009403'
GO
UPDATE marca
SET solicitada = '2000-11-10'
WHERE solicitada = '0200-11-10' AND nro_solici='2005027744'
GO
UPDATE marca
SET solicitada = '2000-11-10'
WHERE solicitada = '0200-11-10' AND nro_solici='2005027744'
GO
UPDATE marca
SET solicitada = '2003-11-26'
WHERE solicitada = '0003-11-26' AND nro_solici='2003030221'
GO
UPDATE marca
SET solicitada = '2003-12-24'
WHERE solicitada = '0003-12-24' AND nro_solici='2003032975'
GO
UPDATE marca
SET solicitada = '2005-05-20'
WHERE solicitada = '0078-05-20' AND nro_solici='2005007828'
GO
UPDATE marca
SET solicitada = '2006-09-28'
WHERE solicitada = '0620-09-28' AND nro_solici='2006033453'
GO
UPDATE marca
SET solicitada = '2007-04-10'
WHERE solicitada = '0107-04-10' AND nro_solici='2007011853'
GO
UPDATE marca
SET solicitada = '2013-01-30'
WHERE solicitada = '0013-01-30' AND nro_solici='2013004145'
GO
UPDATE marca
SET solicitada = '2004-09-21'
WHERE solicitada = '1698-09-21' AND nro_solici='2004016968'
GO
UPDATE marca
SET solicitada = '1900-09-21'
WHERE solicitada = '1752-08-27' AND nro_solici='1900006604'
GO
UPDATE marca
SET solicitada = '1900-01-16'
WHERE solicitada = '0900-01-16' AND nro_solici='1900053281'
GO
UPDATE marca
SET solicitada = '1983-11-23'
WHERE solicitada = '0983-11-23' AND nro_solici='1900043226'
GO
UPDATE marca
SET solicitada = '1981-01-06'
WHERE solicitada = '0981-01-06' AND nro_solici='1900029434'
GO
UPDATE marca
SET solicitada = '1993-04-29'
WHERE solicitada = '0993-04-29' AND nro_solici='1993004041'
GO
UPDATE marca
SET solicitada = '1985-01-01'
WHERE solicitada = '0985-01-01' AND nro_solici='1985000529'
GO
UPDATE marca
SET solicitada = '1992-11-01'
WHERE solicitada = '0992-11-01' AND nro_solici='1900058727'
GO
UPDATE marca
SET solicitada = '2005-02-24'
WHERE solicitada = '0005-02-24' AND nro_solici='2005003706'
GO
UPDATE marca
SET solicitada = '1964-07-13'
WHERE solicitada = '0200-07-13' AND nro_solici='1900012292'
GO
UPDATE marca
SET solicitada = '1945-09-12'
WHERE solicitada = '0135-09-12' AND nro_solici='1900003387'
GO
UPDATE marca
SET solicitada = '2002-11-21'
WHERE solicitada = '1200-11-21' AND nro_solici='2002016520'
GO
UPDATE marca
SET solicitada = '2005-01-30'
WHERE solicitada = '0200-01-30' AND nro_solici='2003028362'
GO


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CORRECCION DEL CAMPO REGISTRADA DE LA TABLA MARCA
--select nro_solici,registrada from marca
--where DAY(registrada)>31 or MONTH(registrada)>12 or YEAR (registrada)>9999 or YEAR(registrada)<1752
--GO
--select nro_solici,registrada from marca
--where DAY(registrada)<1 or MONTH(registrada)<1 or YEAR (registrada)>9999 or YEAR(registrada)<1752
--GO

--UPDATE DEL CAMPO FECHA REGISTRADA
UPDATE marca
SET registrada = '1994-01-11'
WHERE registrada = '0994-01-11' AND nro_solici='1993008514'
GO
UPDATE marca
SET registrada = '1994-01-11'
WHERE registrada = '0994-01-11' AND nro_solici='1993010720'
GO
UPDATE marca
SET registrada = '1994-01-11'
WHERE registrada = '0994-01-11' AND nro_solici='1993012646'
GO
UPDATE marca
SET registrada = '1994-01-11'
WHERE registrada = '0994-01-11' AND nro_solici='1993012275'
GO
UPDATE marca
SET registrada = '1995-08-04'
WHERE registrada = '0995-08-04' AND nro_solici='1994007450'
GO
UPDATE marca
SET registrada = '2000-10-19'
WHERE registrada = '0200-10-19' AND nro_solici='1999017304'
GO
UPDATE marca
SET registrada = '1996-02-09'
WHERE registrada = '1196-02-09' AND nro_solici='1995007195'
GO
UPDATE marca
SET registrada = '2001-12-18'
WHERE registrada = '0001-12-18' AND nro_solici='1997010001'
GO
UPDATE marca
SET registrada = '2000-04-14'
WHERE registrada = '0200-04-14' AND nro_solici='1998004390'
GO
UPDATE marca
SET registrada = '2000-05-10'
WHERE registrada = '0200-05-10' AND nro_solici='1998008026'
GO
UPDATE marca
SET registrada = '2000-06-29'
WHERE registrada = '0200-06-29' AND nro_solici='1999010589'
GO
UPDATE marca
SET registrada = '2000-09-29'
WHERE registrada = '0200-09-29' AND nro_solici='1999005610'
GO
UPDATE marca
SET registrada = '2000-03-31'
WHERE registrada = '0200-03-31' AND nro_solici='1999007827'
GO
UPDATE marca
SET registrada = '2000-04-24'
WHERE registrada = '0200-04-24' AND nro_solici='1999008195'
GO
UPDATE marca
SET registrada = '2000-06-12'
WHERE registrada = '0200-06-12' AND nro_solici='1999009120'
GO
UPDATE marca
SET registrada = '2000-03-22'
WHERE registrada = '0200-03-22' AND nro_solici='1999013475'
GO
UPDATE marca
SET registrada = '2003-12-22'
WHERE registrada = '0203-12-22' AND nro_solici='2000000854'
GO
UPDATE marca
SET registrada = '2000-12-27'
WHERE registrada = '0200-12-27' AND nro_solici='2000001440'
GO
UPDATE marca
SET registrada = '2000-12-11'
WHERE registrada = '0200-12-11' AND nro_solici='2000010779'
GO
UPDATE marca
SET registrada = '2001-04-23'
WHERE registrada = '0201-04-23' AND nro_solici='2000013651'
GO
UPDATE marca
SET registrada = '2001-08-13'
WHERE registrada = '0201-08-13' AND nro_solici='2000015543'
GO
UPDATE marca
SET registrada = '2001-12-24'
WHERE registrada = '0001-12-24' AND nro_solici='2000016798'
GO
UPDATE marca
SET registrada = '2001-12-04'
WHERE registrada = '0001-12-04' AND nro_solici='2001001711'
GO
UPDATE marca
SET registrada = '2001-12-05'
WHERE registrada = '0001-12-05' AND nro_solici='2001001767'
GO
UPDATE marca
SET registrada = '2002-01-29'
WHERE registrada = '0202-01-29' AND nro_solici='2001001998'
GO
UPDATE marca
SET registrada = '2003-01-28'
WHERE registrada = '1203-01-28' AND nro_solici='2002001001'
GO
UPDATE marca
SET registrada = '2001-12-05'
WHERE registrada = '0001-12-05' AND nro_solici='2001002937'
GO
UPDATE marca
SET registrada = '2003-08-11'
WHERE registrada = '0203-08-11' AND nro_solici='2001005089'
GO
UPDATE marca
SET registrada = '2003-04-28'
WHERE registrada = '0203-04-28' AND nro_solici='2002016161'
GO
UPDATE marca
SET registrada = '2003-04-08'
WHERE registrada = '0203-04-08' AND nro_solici='2002017922'
GO
UPDATE marca
SET registrada = '2003-12-17'
WHERE registrada = '0003-12-17' AND nro_solici='2003000783'
GO
UPDATE marca
SET registrada = '2003-12-22'
WHERE registrada = '0203-12-22' AND nro_solici='2003007928'
GO
UPDATE marca
SET registrada = '2007-02-05'
WHERE registrada = '0007-02-05' AND nro_solici='2004006380'
GO
UPDATE marca
SET registrada = '1999-12-16'
WHERE registrada = '0199-12-16' AND nro_solici='1999005653'
GO
UPDATE marca
SET registrada = '2005-07-15'
WHERE registrada = '0005-07-15' AND nro_solici='2005002886'
GO
UPDATE marca
SET registrada = '2000-07-16'
WHERE registrada = '0200-07-16' AND nro_solici='2006001153'
GO
UPDATE marca
SET registrada = '2007-02-01'
WHERE registrada = '0007-02-01' AND nro_solici='2006020968'
GO
UPDATE marca
SET registrada = '2007-07-09'
WHERE registrada = '0007-07-09' AND nro_solici='2006023584'
GO
UPDATE marca
SET registrada = '2007-02-01'
WHERE registrada = '0007-02-01' AND nro_solici='2006023864'
GO
UPDATE marca
SET registrada = '2006-12-07'
WHERE registrada = '0006-12-07' AND nro_solici='2006024120'
GO
UPDATE marca
SET registrada = '2007-02-01'
WHERE registrada = '0007-02-01' AND nro_solici='2006027704'
GO
UPDATE marca
SET registrada = '2007-02-01'
WHERE registrada = '0007-02-01' AND nro_solici='2006028642'
GO
UPDATE marca
SET registrada = '2007-02-01'
WHERE registrada = '0007-02-01' AND nro_solici='2006032208'
GO
UPDATE marca
SET registrada = '2009-05-11'
WHERE registrada = '0009-05-11' AND nro_solici='2007024200'
GO
UPDATE marca
SET registrada = '2008-03-14'
WHERE registrada = '0008-03-14' AND nro_solici='2007027499'
GO
UPDATE marca
SET registrada = '2009-12-02'
WHERE registrada = '0009-12-02' AND nro_solici='2007042053'
GO
UPDATE marca
SET registrada = '1989-09-16'
WHERE registrada = '0089-09-16' AND nro_solici='2008015181'
GO
UPDATE marca
SET registrada = '2008-11-25'
WHERE registrada = '0108-11-25' AND nro_solici='2008017624'
GO
UPDATE marca
SET registrada = '2000-07-28'
WHERE registrada = '0200-07-28' AND nro_solici='2008038769'
GO
UPDATE marca
SET registrada = '2000-07-28'
WHERE registrada = '0200-07-28' AND nro_solici='2009000949'
GO
UPDATE marca
SET registrada = '2000-08-05'
WHERE registrada = '0220-08-05' AND nro_solici='2009007921'
GO
UPDATE marca
SET registrada = '2009-08-05'
WHERE registrada = '0009-12-09' AND nro_solici='2009009711'
GO
UPDATE marca
SET registrada = '2000-07-21'
WHERE registrada = '0200-07-21' AND nro_solici='2009028415'
GO
UPDATE marca
SET registrada = '2010-07-27'
WHERE registrada = '0210-07-27' AND nro_solici='2009035855'
GO
UPDATE marca
SET registrada = '2010-12-06'
WHERE registrada = '0210-12-06' AND nro_solici='2010003225'
GO
UPDATE marca
SET registrada = '2000-12-06'
WHERE registrada = '0200-12-06' AND nro_solici='2010022083'
GO
UPDATE marca
SET registrada = '2012-02-01'
WHERE registrada = '0012-02-01' AND nro_solici='2010026651'
GO
UPDATE marca
SET registrada = '2011-02-15'
WHERE registrada = '0011-02-15' AND nro_solici='2010027157'
GO
UPDATE marca
SET registrada = '2011-02-15'
WHERE registrada = '0011-02-15' AND nro_solici='2010027337'
GO
UPDATE marca
SET registrada = '2011-08-05'
WHERE registrada = '0111-08-05' AND nro_solici='2011009290'
GO
UPDATE marca
SET registrada = '2011-12-28'
WHERE registrada = '0011-12-28' AND nro_solici='2010032799'
GO
UPDATE marca
SET registrada = '2012-02-17'
WHERE registrada = '0012-02-17' AND nro_solici='2010034692'
GO
UPDATE marca
SET registrada = '2011-10-11'
WHERE registrada = '0111-10-11' AND nro_solici='2011018728'
GO
UPDATE marca
SET registrada = '2011-11-14'
WHERE registrada = '0111-11-14' AND nro_solici='2011022998'
GO
UPDATE marca
SET registrada = '2012-12-13'
WHERE registrada = '0012-12-13' AND nro_solici='2011020267'
GO
UPDATE marca
SET registrada = '2013-02-19'
WHERE registrada = '0013-02-19' AND nro_solici='2011035488'
GO
UPDATE marca
SET registrada = '2013-02-08'
WHERE registrada = '0202-02-08' AND nro_solici='2011040874'
GO
UPDATE marca
SET registrada = '2012-08-07'
WHERE registrada = '0121-08-07' AND nro_solici='2011041320'
GO
UPDATE marca
SET registrada = '2012-11-08'
WHERE registrada = '0201-11-08' AND nro_solici='2012020033'
GO
UPDATE marca
SET registrada = '2012-12-06'
WHERE registrada = '0012-12-06' AND nro_solici='2012028461'
GO
UPDATE marca
SET registrada = '2014-03-11'
WHERE registrada = '0214-03-11' AND nro_solici='2013026888'
GO
UPDATE marca
SET registrada = '2015-02-04'
WHERE registrada = '0015-02-04' AND nro_solici='2013034307'
GO
UPDATE marca
SET registrada = '2015-01-20'
WHERE registrada = '0115-01-20' AND nro_solici='2014017591'
GO
UPDATE marca
SET registrada = '2015-01-20'
WHERE registrada = '0015-05-20' AND nro_solici='2014041106'
GO
UPDATE marca
SET registrada = '2016-02-26'
WHERE registrada = '0216-02-26' AND nro_solici='2015028399'
GO
UPDATE marca
SET registrada = '2016-02-26'
WHERE registrada = '0216-02-26' AND nro_solici='2015028399'
GO
UPDATE marca
SET registrada = '2016-02-11'
WHERE registrada = '0206-02-11' AND nro_solici='2015033441'
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--CORRECCION DE LA FECHA DE STAT_ DESDE DE LA TABLA MARCA 

--select nro_solici,stat_desde from marca
--where DAY(stat_desde)>31 or MONTH(stat_desde)>12 or YEAR (stat_desde)>9999 or YEAR(stat_desde)<1752
--GO
--select nro_solici,stat_desde from marca
--where DAY(stat_desde)<1 or MONTH(stat_desde)<1 or YEAR (stat_desde)>9999 or YEAR(stat_desde)<1752
--GO

-- Correccion de fecha stat desde 

UPDATE marca
SET stat_desde= '1964-11-19'
WHERE stat_desde = '0200-07-13' AND nro_solici='1900012292'
GO
UPDATE marca
SET stat_desde= '1983-06-02'
WHERE stat_desde = '0198-05-11' AND nro_solici='1900041846'
GO
UPDATE marca
SET stat_desde= '1945-09-12'
WHERE stat_desde = '0135-09-12' AND nro_solici='1900003387'
GO
UPDATE marca
SET stat_desde= '1994-01-11'
WHERE stat_desde = '0994-01-11' AND nro_solici='1993008514'
GO
UPDATE marca
SET stat_desde= '1994-01-11'
WHERE stat_desde = '0994-01-11' AND nro_solici='1993010720'
GO
UPDATE marca
SET stat_desde= '1994-01-11'
WHERE stat_desde = '0994-01-11' AND nro_solici='1993012646'
GO
UPDATE marca
SET stat_desde= '1993-11-08'
WHERE stat_desde = '0992-11-01' AND nro_solici='1900058727'
GO
UPDATE marca
SET stat_desde= '1993-11-08'
WHERE stat_desde = '0992-11-01' AND nro_solici='1900058727'
GO
UPDATE marca
SET stat_desde= '1994-01-11'
WHERE stat_desde = '0994-01-11' AND nro_solici='1993012275'
GO
UPDATE marca
SET stat_desde= '1945-11-12'
WHERE stat_desde = '1195-01-12' AND nro_solici='1900003431'
GO
UPDATE marca
SET stat_desde= '1995-08-04'
WHERE stat_desde = '0995-08-04' AND nro_solici='1994007450'
GO
UPDATE marca
SET stat_desde= '1996-02-09'
WHERE stat_desde = '1196-02-09' AND nro_solici='1995007195'
GO
UPDATE marca
SET stat_desde= '2001-10-15'
WHERE stat_desde = '0001-12-15' AND nro_solici='1996009806'
GO
UPDATE marca
SET stat_desde= '2001-10-15'
WHERE stat_desde = '0001-12-15' AND nro_solici='1996009806'
GO
UPDATE marca
SET stat_desde= '2001-12-18'
WHERE stat_desde = '0001-12-18' AND nro_solici='1997010001'
GO
UPDATE marca
SET stat_desde= '2000-04-14'
WHERE stat_desde = '0200-04-14' AND nro_solici='1998004390'
GO
UPDATE marca
SET stat_desde= '2000-05-10'
WHERE stat_desde = '0200-05-10' AND nro_solici='1998008026'
GO
UPDATE marca
SET stat_desde= '1998-12-30'
WHERE stat_desde = '0197-07-31' AND nro_solici='1998009403'
GO
UPDATE marca
SET stat_desde= '2000-06-29'
WHERE stat_desde = '0200-06-29' AND nro_solici='1999010589'
GO
UPDATE marca
SET stat_desde= '2000-09-29'
WHERE stat_desde = '0200-09-29' AND nro_solici='1999005610'
GO
UPDATE marca
SET stat_desde= '2000-09-29'
WHERE stat_desde = '0200-09-29' AND nro_solici='1999005610'
GO
UPDATE marca
SET stat_desde= '2000-03-31'
WHERE stat_desde = '0200-03-31' AND nro_solici='1999007827'
GO
UPDATE marca
SET stat_desde= '2000-03-31'
WHERE stat_desde = '0200-03-31' AND nro_solici='1999007827'
GO
UPDATE marca
SET stat_desde= '2000-04-24'
WHERE stat_desde = '0200-04-24' AND nro_solici='1999008195'
GO
UPDATE marca
SET stat_desde= '2000-06-12'
WHERE stat_desde = '0200-06-12' AND nro_solici='1999009120'
GO
UPDATE marca
SET stat_desde= '2000-03-22'
WHERE stat_desde = '0200-03-22' AND nro_solici='1999013475'
GO
UPDATE marca
SET stat_desde= '2003-12-22'
WHERE stat_desde = '0203-12-22' AND nro_solici='2000000854'
GO
UPDATE marca
SET stat_desde= '2003-12-22'
WHERE stat_desde = '0203-12-22' AND nro_solici='2000000854'
GO
UPDATE marca
SET stat_desde= '2000-12-27'
WHERE stat_desde = '0200-12-27' AND nro_solici='2000001440'
GO
UPDATE marca
SET stat_desde= '2000-08-07'
WHERE stat_desde = '0200-08-07' AND nro_solici='2000001622'
GO
UPDATE marca
SET stat_desde= '2000-06-12'
WHERE stat_desde = '0200-06-12' AND nro_solici='2000002839'
GO
UPDATE marca
SET stat_desde= '2000-10-19'
WHERE stat_desde = '0200-10-19' AND nro_solici='1999017304'
GO
UPDATE marca
SET stat_desde= '2000-10-19'
WHERE stat_desde = '0200-10-19' AND nro_solici='1999017304'
GO
UPDATE marca
SET stat_desde= '2000-04-14'
WHERE stat_desde = '0200-04-14' AND nro_solici='1997005236'
GO
UPDATE marca
SET stat_desde= '2001-05-08'
WHERE stat_desde = '0201-05-08' AND nro_solici='2000009333'
GO
UPDATE marca
SET stat_desde= '2002-09-09'
WHERE stat_desde = '0202-09-09' AND nro_solici='2000009823'
GO
UPDATE marca
SET stat_desde= '2000-12-11'
WHERE stat_desde = '0200-12-11' AND nro_solici='2000010779'
GO
UPDATE marca
SET stat_desde= '2001-04-23'
WHERE stat_desde = '0201-04-23' AND nro_solici='2000013651'
GO
UPDATE marca
SET stat_desde= '2001-12-24'
WHERE stat_desde = '0001-12-24' AND nro_solici='2000013862'
GO
UPDATE marca
SET stat_desde= '2001-08-13'
WHERE stat_desde = '0201-08-13' AND nro_solici='2000015543'
GO
UPDATE marca
SET stat_desde= '2001-12-24'
WHERE stat_desde = '0001-12-24' AND nro_solici='2000016798'
GO
UPDATE marca
SET stat_desde= '2001-12-04'
WHERE stat_desde = '0001-12-04' AND nro_solici='2001001711'
GO
UPDATE marca
SET stat_desde= '2001-12-05'
WHERE stat_desde = '0001-12-05' AND nro_solici='2001001767'
GO
UPDATE marca
SET stat_desde= '2002-01-29'
WHERE stat_desde = '0202-01-29' AND nro_solici='2001001998'
GO
UPDATE marca
SET stat_desde= '2002-02-13'
WHERE stat_desde = '0200-02-13' AND nro_solici='2001002537'
GO
UPDATE marca
SET stat_desde= '2003-01-28'
WHERE stat_desde = '1203-01-28' AND nro_solici='2002001001'
GO
UPDATE marca
SET stat_desde= '2001-12-05'
WHERE stat_desde = '0001-12-05' AND nro_solici='2001002939'
GO
UPDATE marca
SET stat_desde= '2001-12-05'
WHERE stat_desde = '0001-12-05' AND nro_solici='2001002937'
GO
UPDATE marca
SET stat_desde= '2002-07-02'
WHERE stat_desde = '0202-07-02' AND nro_solici='2001003880'
GO
UPDATE marca
SET stat_desde= '2002-10-31'
WHERE stat_desde = '0200-10-31' AND nro_solici='2001004286'
GO
UPDATE marca
SET stat_desde= '2002-10-31'
WHERE stat_desde = '0200-10-31' AND nro_solici='2001004286'
GO
UPDATE marca
SET stat_desde= '2003-08-11'
WHERE stat_desde = '0203-08-11' AND nro_solici='2001005089'
GO
UPDATE marca
SET stat_desde= '2002-08-20'
WHERE stat_desde = '0202-08-20' AND nro_solici='2002005701'
GO
UPDATE marca
SET stat_desde= '2002-08-20'
WHERE stat_desde = '0202-08-20' AND nro_solici='2002005701'
GO
UPDATE marca
SET stat_desde= '2002-12-12'
WHERE stat_desde = '0202-12-12' AND nro_solici='2002010110'
GO
UPDATE marca
SET stat_desde= '2003-05-15'
WHERE stat_desde = '0200-05-15' AND nro_solici='2002010211'
GO
UPDATE marca
SET stat_desde= '2000-08-29'
WHERE stat_desde = '0200-08-29' AND nro_solici='2000008974'
GO
UPDATE marca
SET stat_desde= '2003-04-28'
WHERE stat_desde = '0203-04-28' AND nro_solici='2002016161'
GO
UPDATE marca
SET stat_desde= '2003-10-01'
WHERE stat_desde = '0203-10-01' AND nro_solici='2002016644'
GO
UPDATE marca
SET stat_desde= '2003-04-08'
WHERE stat_desde = '0203-04-08' AND nro_solici='2002017922'
GO
UPDATE marca
SET stat_desde= '2003-12-17'
WHERE stat_desde = '0003-12-17' AND nro_solici='2003000783'
GO
UPDATE marca
SET stat_desde= '2003-05-15'
WHERE stat_desde = '0200-05-15' AND nro_solici='2003001492'
GO
UPDATE marca
SET stat_desde= '2003-12-22'
WHERE stat_desde = '0203-12-22' AND nro_solici='2003007928'
GO
UPDATE marca
SET stat_desde= '2003-08-13'
WHERE stat_desde = '0200-08-13' AND nro_solici='2003009694'
GO
UPDATE marca
SET stat_desde= '2003-08-13'
WHERE stat_desde = '0200-08-13' AND nro_solici='2003009694'
GO
UPDATE marca
SET stat_desde= '2007-02-05'
WHERE stat_desde = '0007-02-05' AND nro_solici='2004006380'
GO
UPDATE marca
SET stat_desde= '2007-02-01'
WHERE stat_desde = '0007-02-01' AND nro_solici='2004010298'
GO
UPDATE marca
SET stat_desde= '1999-12-16'
WHERE stat_desde = '0199-12-16' AND nro_solici='1999005653'
GO
UPDATE marca
SET stat_desde= '2005-07-15'
WHERE stat_desde = '0005-07-15' AND nro_solici='2005002886'
GO
UPDATE marca
SET stat_desde= '2000-07-16'
WHERE stat_desde = '0200-07-16' AND nro_solici='2006001153'
GO
UPDATE marca
SET stat_desde= '2007-12-20'
WHERE stat_desde = '0027-12-20' AND nro_solici='2006002137'
GO
UPDATE marca
SET stat_desde= '2007-06-26'
WHERE stat_desde = '0720-06-26' AND nro_solici='2006014502'
GO
UPDATE marca
SET stat_desde= '2007-06-26'
WHERE stat_desde = '0720-06-26' AND nro_solici='2006014502'
GO
UPDATE marca
SET stat_desde= '2007-02-01'
WHERE stat_desde = '0007-02-01' AND nro_solici='2006020968'
GO
UPDATE marca
SET stat_desde= '2007-07-09'
WHERE stat_desde = '0007-07-09' AND nro_solici='2006023584'
GO
UPDATE marca
SET stat_desde= '2007-02-01'
WHERE stat_desde = '0007-02-01' AND nro_solici='2006023864'
GO
UPDATE marca
SET stat_desde= '2006-12-07'
WHERE stat_desde = '0006-12-07' AND nro_solici='2006024120'
GO
UPDATE marca
SET stat_desde= '2007-02-01'
WHERE stat_desde = '0007-02-01' AND nro_solici='2006027704'
GO
UPDATE marca
SET stat_desde= '2007-02-01'
WHERE stat_desde = '0007-02-01' AND nro_solici='2006028642'
GO
UPDATE marca
SET stat_desde= '2007-02-01'
WHERE stat_desde = '0007-02-01' AND nro_solici='2006032208'
GO
UPDATE marca
SET stat_desde= '2007-11-23'
WHERE stat_desde = '0107-11-23' AND nro_solici='2007010813'
GO
UPDATE marca
SET stat_desde= '2007-11-23'
WHERE stat_desde = '0107-11-23' AND nro_solici='2007010813'
GO
UPDATE marca
SET stat_desde= '2009-05-11'
WHERE stat_desde = '0009-05-11' AND nro_solici='2007024200'
GO
UPDATE marca
SET stat_desde= '2008-03-14'
WHERE stat_desde = '0008-03-14' AND nro_solici='2007027499'
GO
UPDATE marca
SET stat_desde= '2009-12-02'
WHERE stat_desde = '0009-12-02' AND nro_solici='2007042053'
GO
UPDATE marca
SET stat_desde= '1989-09-16'
WHERE stat_desde = '0089-09-16' AND nro_solici='2008015181'
GO
UPDATE marca
SET stat_desde= '2008-11-25'
WHERE stat_desde = '0108-11-25' AND nro_solici='2008017624'
GO
UPDATE marca
SET stat_desde= '2008-11-14'
WHERE stat_desde = '0108-11-14' AND nro_solici='2008023582'
GO
UPDATE marca
SET stat_desde= '2000-07-28'
WHERE stat_desde = '0200-07-28' AND nro_solici='2008038769'
GO
UPDATE marca
SET stat_desde= '2000-07-28'
WHERE stat_desde = '0200-07-28' AND nro_solici='2009000949'
GO
UPDATE marca
SET stat_desde= '2009-05-08'
WHERE stat_desde = '0220-08-05' AND nro_solici='2009007921'
GO
UPDATE marca
SET stat_desde= '2009-05-08'
WHERE stat_desde = '0220-08-05' AND nro_solici='2009007921'
GO
UPDATE marca
SET stat_desde= '2009-12-09'
WHERE stat_desde = '0009-12-09' AND nro_solici='2009009711'
GO
UPDATE marca
SET stat_desde= '2000-07-21'
WHERE stat_desde = '0200-07-21' AND nro_solici='2009028415'
GO
UPDATE marca
SET stat_desde= '2010-07-27'
WHERE stat_desde = '0210-07-27' AND nro_solici='2009035855'
GO
UPDATE marca
SET stat_desde= '2010-12-06'
WHERE stat_desde = '0210-12-06' AND nro_solici='2010003225'
GO
UPDATE marca
SET stat_desde= '2000-12-06'
WHERE stat_desde = '0200-12-06' AND nro_solici='2010022083'
GO
UPDATE marca
SET stat_desde= '2012-02-01'
WHERE stat_desde = '0012-02-01' AND nro_solici='2010026651'
GO
UPDATE marca
SET stat_desde= '2011-02-15'
WHERE stat_desde = '0011-02-15' AND nro_solici='2010027157'
GO
UPDATE marca
SET stat_desde= '2011-02-15'
WHERE stat_desde = '0011-02-15' AND nro_solici='2010027337'
GO
UPDATE marca
SET stat_desde= '2011-08-05'
WHERE stat_desde = '0111-08-05' AND nro_solici='2011009290'
GO
UPDATE marca
SET stat_desde= '2011-12-28'
WHERE stat_desde = '0011-12-28' AND nro_solici='2010032799'
GO
UPDATE marca
SET stat_desde= '2012-02-17'
WHERE stat_desde = '0012-02-17' AND nro_solici='2010034692'
GO
UPDATE marca
SET stat_desde= '2011-10-11'
WHERE stat_desde = '0111-10-11' AND nro_solici='2011018728'
GO
UPDATE marca
SET stat_desde= '2011-11-14'
WHERE stat_desde = '0111-11-14' AND nro_solici='2011022998'
GO
UPDATE marca
SET stat_desde= '2012-12-13'
WHERE stat_desde = '0012-12-13' AND nro_solici='2011020267'
GO
UPDATE marca
SET stat_desde= '2012-12-06'
WHERE stat_desde = '0012-12-06' AND nro_solici='2011031751'
GO
UPDATE marca
SET stat_desde= '2013-02-19'
WHERE stat_desde = '0013-02-19' AND nro_solici='2011035488'
GO
UPDATE marca
SET stat_desde= '2013-02-08'
WHERE stat_desde = '0202-02-08' AND nro_solici='2011040874'
GO
UPDATE marca
SET stat_desde= '2013-02-08'
WHERE stat_desde = '0202-02-08' AND nro_solici='2011040874'
GO
UPDATE marca
SET stat_desde= '2012-08-07'
WHERE stat_desde = '0121-08-07' AND nro_solici='2011041320'
GO
UPDATE marca
SET stat_desde= '2013-01-10'
WHERE stat_desde = '0201-01-24' AND nro_solici='2012016845'
GO
UPDATE marca
SET stat_desde= '2012-11-08'
WHERE stat_desde = '0201-11-08' AND nro_solici='2012020033'
GO
UPDATE marca
SET stat_desde= '2012-10-01'
WHERE stat_desde = '0012-12-01' AND nro_solici='2012021095'
GO
UPDATE marca
SET stat_desde= '2012-12-06'
WHERE stat_desde = '0012-12-06' AND nro_solici='2012028461'
GO
UPDATE marca
SET stat_desde= '2013-07-23'
WHERE stat_desde = '0203-07-23' AND nro_solici='2013011874'
GO
UPDATE marca
SET stat_desde= '2014-03-11'
WHERE stat_desde = '0214-03-11' AND nro_solici='2013026888'
GO
UPDATE marca
SET stat_desde= '2015-02-04'
WHERE stat_desde = '0015-02-04' AND nro_solici='2013034307'
GO
UPDATE marca
SET stat_desde= '2015-01-20'
WHERE stat_desde = '0115-01-20' AND nro_solici='2014017591'
GO
UPDATE marca
SET stat_desde= '2015-05-20'
WHERE stat_desde = '0015-05-20' AND nro_solici='2014041106'
GO
UPDATE marca
SET stat_desde= '2016-02-26'
WHERE stat_desde = '0216-02-26' AND nro_solici='2015028399'
GO
UPDATE marca
SET stat_desde= '2016-02-10'
WHERE stat_desde = '0206-02-11' AND nro_solici='2015033441'
GO

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CORRECCION DE FORMATO DE HORA INCORRECTA (Hora Militar)

--select substring(hora, 1,2) as HORA_INCORRECTA, hora, nro_solici 
--from marca where hora between '00:00:00' and '06:59:59' order by hora
--GO


--UPDATE del campo hora 
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '001105' and nro_solici= '1990003615'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '001721' and nro_solici= '2004020641'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '001436' and nro_solici= '2004021543'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '001436' and nro_solici= '2004021543'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '001819' and nro_solici= '2004016345'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '001926' and nro_solici= '2004021465'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '002349' and nro_solici= '2004021542'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '002424' and nro_solici= '2004021741'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '000034' and nro_solici= '2003021384'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '002543' and nro_solici= '2004021541'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '002704' and nro_solici= '2004021539'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '002917' and nro_solici= '2004021722'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '003019' and nro_solici= '2004021538'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '003204' and nro_solici= '2004021723'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '003321' and nro_solici= '2004021537'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','12')
where hora= '003440' and nro_solici= '2004021536'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '003601' and nro_solici= '2004021535'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '003714' and nro_solici= '2004021534'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '003854' and nro_solici= '2004021533'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '004014' and nro_solici= '2004021532'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '004118' and nro_solici= '2004021531'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '004823' and nro_solici= '2004021713'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '004852' and nro_solici= '2005031475'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '005039' and nro_solici= '2005031476'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '005158' and nro_solici= '2005031477'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '005309' and nro_solici= '2005031478'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '005445' and nro_solici= '1998017505'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '005957' and nro_solici= '2005006655'
GO
UPDATE marca
SET hora=REPLACE(hora,'00','08')
where hora= '005958' and nro_solici= '2005030025'
GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010000' and nro_solici= '1900029224'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010041' and nro_solici= '2003000795'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010051' and nro_solici= '2003000752'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010127' and nro_solici= '2006018267'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010136' and nro_solici= '1998017507'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010153' and nro_solici= '2006013487'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010244' and nro_solici= '2003033292'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010404' and nro_solici= '2006013223'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010412' and nro_solici= '2005030598'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010432' and nro_solici= '2004021714'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010500' and nro_solici= '2003001207'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010501' and nro_solici= '2003001206'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010517' and nro_solici= '2003000756'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010525' and nro_solici= '2006013472'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010542' and nro_solici= '2003000798'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010545' and nro_solici= '2003001208'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010551' and nro_solici= '2003001210'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010557' and nro_solici= '2003001209'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010603' and nro_solici= '2003033293'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010618' and nro_solici= '2005031354'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010624' and nro_solici= '2005020057'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010626' and nro_solici= '2005006656'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010635' and nro_solici= '2006014506'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010641' and nro_solici= '2004021717'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010713' and nro_solici= '1998017506'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010747' and nro_solici= '2005031348'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010749' and nro_solici= '2005006657'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010804' and nro_solici= '2004021716'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010820' and nro_solici= '2003033294'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010836' and nro_solici= '2006015662'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010848' and nro_solici= '2006018922'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '010940' and nro_solici= '2003033295'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011009' and nro_solici= '2004021720'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011013' and nro_solici= '2003000084'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011022' and nro_solici= '2003001212'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011029' and nro_solici= '2003000257'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011039' and nro_solici= '2003001213'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011047' and nro_solici= '2003000083'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011055' and nro_solici= '2003033298'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011121' and nro_solici= '2003000258'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011131' and nro_solici= '2003001149'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011157' and nro_solici= '2005031349'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011201' and nro_solici= '2006013178'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011220' and nro_solici= '2004021719'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011222' and nro_solici= '2005006666'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011255' and nro_solici= '2003033299'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011330' and nro_solici= '1988000019'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011420' and nro_solici= '2004021718'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011442' and nro_solici= '2004021530'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011457' and nro_solici= '2003033300'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011557' and nro_solici= '2004021529'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011623' and nro_solici= '2004021721'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011631' and nro_solici= '2006013386'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011709' and nro_solici= '2003033301'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011810' and nro_solici= '2005020058'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011906' and nro_solici= '2003033302'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011921' and nro_solici= '2004021893'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011933' and nro_solici= '2004021528'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '011943' and nro_solici= '2006013514 '
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012003' and nro_solici= '2005031350 '
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012003' and nro_solici= '2005031373'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012023' and nro_solici= '2006019326'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012039' and nro_solici= '2003001160'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012106' and nro_solici= '2005031364'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012123' and nro_solici= '2004021756'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012125' and nro_solici= '2005006667'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012128' and nro_solici= '2003033257'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012147' and nro_solici= '2006018430'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012230' and nro_solici= '2004021892'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012255' and nro_solici= '2005025869'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012301' and nro_solici= '2005006668'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012317' and nro_solici= '2005031363'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012321' and nro_solici= '2000009346'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012351' and nro_solici= '2005031337'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012415' and nro_solici= '2005006669'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012436' and nro_solici= '2005020059'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012451' and nro_solici= '2003033254'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012500' and nro_solici= '2004021874'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012508' and nro_solici= '2005031343'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012509' and nro_solici= '2006018361'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012524' and nro_solici= '1900028871'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012528' and nro_solici= '2004021755'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012536' and nro_solici= '2005006658'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012709' and nro_solici= '2005031344'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012716' and nro_solici= '2004021757'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012732' and nro_solici= '2006015612'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012740' and nro_solici= '2006024649'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012759' and nro_solici= '2006018396'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012805' and nro_solici= '2006013372'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012842' and nro_solici= '2003033255'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012846' and nro_solici= '2006014505'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012922' and nro_solici= '1990004718'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012931' and nro_solici= '2004021882'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012935' and nro_solici= '2004021754'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '012951' and nro_solici= '2004021440'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013002' and nro_solici= '2005031345'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013011' and nro_solici= '2003000062'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013034' and nro_solici= '2005031338'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013042' and nro_solici= '2003000817'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013122' and nro_solici= '2004021745'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013156' and nro_solici= '2005020060'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013256' and nro_solici= '2004021881'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013406' and nro_solici= '2000010953'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013429' and nro_solici= '2001005129'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013434' and nro_solici= '2003033219'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013448' and nro_solici= '2004001294 '
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013507' and nro_solici= '2003000822'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013508' and nro_solici= '2006014337'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013535' and nro_solici= '2006015666'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013538' and nro_solici= '2003000821'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013555' and nro_solici= '2003001161'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013604' and nro_solici= '2004021870'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013618' and nro_solici= '2003000820'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013710' and nro_solici= '2005016434'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013802' and nro_solici= '2004021769'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013807' and nro_solici= '2004001413'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013813' and nro_solici= '2005031339'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013816' and nro_solici= '2006014338'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013847' and nro_solici= '2006018117'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013852' and nro_solici= '2004021869'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013854' and nro_solici= '2005031371 '
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013855' and nro_solici= '2003000815'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '013931' and nro_solici= '2004001412'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014003' and nro_solici= '2006015665'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014029' and nro_solici= '2003033218'
GO

UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014039' and nro_solici= '2005031366'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014039' and nro_solici= '2005031340'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014105' and nro_solici= '2004021794'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014119' and nro_solici= '2006014261'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014217' and nro_solici= '2004021768'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014247' and nro_solici= '2002012529'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014256' and nro_solici= '2005031367'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014325' and nro_solici= '2005031342'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014404' and nro_solici= '2006018577'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014414' and nro_solici= '2003033217'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014422' and nro_solici= '2005031365'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014431' and nro_solici= '2003024743A'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014514' and nro_solici= '2004021441'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014630' and nro_solici= '2003000751'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014640' and nro_solici= '2006018115'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014644' and nro_solici= '2005020489'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014704' and nro_solici= '2003033216'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014818' and nro_solici= '2004021608'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014826' and nro_solici= '2006018395'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014844' and nro_solici= '2005025874'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014848' and nro_solici= '2003000753'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014916' and nro_solici= '2003033215'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014933' and nro_solici= '2006014342'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '014949' and nro_solici= '2006018566'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015014' and nro_solici= '2003000754'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015034' and nro_solici= '2003033214'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015043' and nro_solici= '2002012522'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015156' and nro_solici= '2003033213'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015224' and nro_solici= '2003000755'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015237' and nro_solici= '2005028380'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015245' and nro_solici= '2006014340'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015311' and nro_solici= '2003033212'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015328' and nro_solici= '2006018429'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015336' and nro_solici= '2005025878'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015340' and nro_solici= '2002004436'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015349' and nro_solici= '2006018116'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015447' and nro_solici= '2004021633'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015503' and nro_solici= '2003033211'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015541' and nro_solici= '2006019335'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015549' and nro_solici= '2005025882'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015554' and nro_solici= '2003000764'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015616' and nro_solici= '2005031341'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015635' and nro_solici= '2006014341'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015710' and nro_solici= '2005029643'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015715' and nro_solici= '2003024749'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015717' and nro_solici= '2004021657'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015744' and nro_solici= '1900000466A'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015752' and nro_solici= '2006013510'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015824' and nro_solici= '2005029933'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015829' and nro_solici= '2006019098'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015932' and nro_solici= '2003024733'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015943' and nro_solici= '2006014485'
GO
UPDATE marca
SET hora=REPLACE(hora,'01','13')
where hora= '015958' and nro_solici= '2005025881'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020004' and nro_solici= '2003001167'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020006' and nro_solici= '2003000926'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020007' and nro_solici= '2005006683'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020013' and nro_solici= '2003000100'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020018' and nro_solici= '2003001166'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020041' and nro_solici= '2003000101'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020048' and nro_solici= '2006018112'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020111' and nro_solici= '2004021635'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020121' and nro_solici= '2006019115'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020126' and nro_solici= '2005006681'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020149' and nro_solici= '2005022422'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020235' and nro_solici= '2003033210'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020253' and nro_solici= '2005025880'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020338' and nro_solici= '2004021776'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020345' and nro_solici= '2003000114'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020414' and nro_solici= '2003033209'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020549' and nro_solici= '2005023005'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020639' and nro_solici= '2005022416'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020643' and nro_solici= '2005029996'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020650' and nro_solici= '2006013159'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020702' and nro_solici= '2003033207'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020702' and nro_solici= '2005006679'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020718' and nro_solici= '2006018113'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020731' and nro_solici= '2003000765'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020816' and nro_solici= '2004021773'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020818' and nro_solici= '2003033206'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020820' and nro_solici= '2005006671'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020857' and nro_solici= '2006014488'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020925' and nro_solici= '2003033205'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '020933' and nro_solici= '2006014498'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021003' and nro_solici= '2003001169'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021018' and nro_solici= '2005022415'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021021' and nro_solici= '2005006661'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021026' and nro_solici= '2004021774'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021046' and nro_solici= '2003001168'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021048' and nro_solici= '2003033204'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021118' and nro_solici= '2006013224'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021204' and nro_solici= '2003033203'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021223' and nro_solici= '2005006662'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021246' and nro_solici= '2005023009'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021313' and nro_solici= '2005029997'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021320' and nro_solici= '2004021775'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021347' and nro_solici= '2005006663'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021351' and nro_solici= '2006013077'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021352' and nro_solici= '1900021125'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021421' and nro_solici= '2006018114'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021504' and nro_solici= '2006014499'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021505' and nro_solici= '2005006672'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021508' and nro_solici= '2002011508'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021514' and nro_solici= '2004021772'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021546' and nro_solici= '2005028579'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021552' and nro_solici= '2003001285'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021557' and nro_solici= '2006014339'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021607' and nro_solici= '2003001284'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021635' and nro_solici= '2006013222'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021635' and nro_solici= '2006013222'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021644' and nro_solici= '2003001283'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021659' and nro_solici= '2004021771'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021723' and nro_solici= '2003001281'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021724' and nro_solici= '2003001280'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021727' and nro_solici= '2003001282'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021858' and nro_solici= '2003001211'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021903' and nro_solici= '2006014496'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021920' and nro_solici= '2006018179'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021937' and nro_solici= '2005006673'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '021952' and nro_solici= '2006019072'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022006' and nro_solici= '2006022393'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022014' and nro_solici= '2005025875'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022051' and nro_solici= '2003001286'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022136' and nro_solici= '2006013227'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022157' and nro_solici= '2005006674'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022207' and nro_solici= '2006014497'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022225' and nro_solici= '2005025870'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022258' and nro_solici= '2006013512'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022312' and nro_solici= '2006015558'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022418' and nro_solici= '2004021770'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022427' and nro_solici= '2005023007'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022434' and nro_solici= '2003032881'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022439' and nro_solici= '2005030644'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022509' and nro_solici= '2005006675'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022515' and nro_solici= '2006014493'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022534' and nro_solici= '2001002717'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022559' and nro_solici= '2004021743'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022607' and nro_solici= '2005031810'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022650' and nro_solici= '2006014492'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022708' and nro_solici= '2005031887'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022712' and nro_solici= '2005006676'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022717' and nro_solici= '2005023008'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022738' and nro_solici= '2006019083'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022840' and nro_solici= '2005006660'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022857' and nro_solici= '2003021615'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022903' and nro_solici= '2006014491'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022907' and nro_solici= '2006013157'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022948' and nro_solici= '2006013228'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '022957' and nro_solici= '2005006659'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023007' and nro_solici= '2003000112'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023016' and nro_solici= '2004021744'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023025' and nro_solici= '2003001287'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023030' and nro_solici= '2005026506'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023044' and nro_solici= '2006018273'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023050' and nro_solici= '2005031811'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023107' and nro_solici= '2005031856'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023109' and nro_solici= '2006014490'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023251' and nro_solici= '2005006677'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023255' and nro_solici= '2004001373'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023402' and nro_solici= '2005026505'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023415' and nro_solici= '2005006687'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023418' and nro_solici= '2002017357'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023431' and nro_solici= '2006018898'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023520' and nro_solici= '2004000299'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023528' and nro_solici= '2005006685'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023531' and nro_solici= '2003000113'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023618' and nro_solici= '2006014484'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023811' and nro_solici= '2006001178'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023821' and nro_solici= '2006013485'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023822' and nro_solici= '2005007141'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023826' and nro_solici= '2005029984'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023843' and nro_solici= '2004001238'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023851' and nro_solici= '2005031812'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023858' and nro_solici= '2005028321'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '023920' and nro_solici= '2006013070'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024005' and nro_solici= '2003000211'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024005' and nro_solici= '2005006682'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024012' and nro_solici= '2006019073'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024031' and nro_solici= '2003000212'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024040' and nro_solici= '2005025866'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024119' and nro_solici= '2005029986'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024210' and nro_solici= '2002012521'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024320' and nro_solici= '2006018176'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024414' and nro_solici= '2005007140'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024526' and nro_solici= '2005023010'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024534' and nro_solici= '2003000284'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024540' and nro_solici= '2006027975'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024543' and nro_solici= '2006013068'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024544' and nro_solici= '2005007139'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024600' and nro_solici= '2002012519'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024709' and nro_solici= '2005031813'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024710' and nro_solici= '2006008993'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024752' and nro_solici= '2006013247'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024758' and nro_solici= '2005006684'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024811' and nro_solici= '2005023021'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024819' and nro_solici= '2006017718'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024852' and nro_solici= '2005029976'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024917' and nro_solici= '2005031347'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '024947' and nro_solici= '2005130690'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025014' and nro_solici= '2002012617'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025023' and nro_solici= '2006013809'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025025' and nro_solici= '2006017618'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025026' and nro_solici= '2002010776'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025046' and nro_solici= '2002011460'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025055' and nro_solici= '2005015380'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025118' and nro_solici= '2006027977'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025130' and nro_solici= '2005013435'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025143' and nro_solici= '2005030186'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025253' and nro_solici= '2005023022'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025257' and nro_solici= '2006027976'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025322' and nro_solici= '2002012616'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025358' and nro_solici= '2005031351'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025407' and nro_solici= '2005029975'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025418' and nro_solici= '2001004090'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025423' and nro_solici= '2006027974'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025429' and nro_solici= '2006013044'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025517' and nro_solici= '2006018175'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025519' and nro_solici= '2003000283'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025525' and nro_solici= '2005031353'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025533' and nro_solici= '2005031346'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025535' and nro_solici= '2006027973'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025559' and nro_solici= '2003000219'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025626' and nro_solici= '2005028349'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025725' and nro_solici= '2003021391'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025728' and nro_solici= '2005007381'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025745' and nro_solici= '2003000220'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025749' and nro_solici= '2005029921'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025754' and nro_solici= '2005012906'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025758' and nro_solici= '2006013045'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025823' and nro_solici= '2006018359'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025923' and nro_solici= '2002012215'
GO
UPDATE marca
SET hora=REPLACE(hora,'02','14')
where hora= '025949' and nro_solici= '2005031819'
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030001' and nro_solici= '2003000285'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030002' and nro_solici= '2003000221'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030009' and nro_solici= '2003001032'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030009' and nro_solici= '2003001030'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030018' and nro_solici= '2003001028'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030019' and nro_solici= '2003000222'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030020' and nro_solici= '2003001025'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030044' and nro_solici= '2003001029'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030047' and nro_solici= '2001002718'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030048' and nro_solici= '2003021394'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030053' and nro_solici= '2003001027'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030055' and nro_solici= '2005029770'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030111' and nro_solici= '2005028550'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030237' and nro_solici= '2006013072'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030238' and nro_solici= '2003000286'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030241' and nro_solici= '2001002719'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030302' and nro_solici= '2006018362'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030306' and nro_solici= '2005031820'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030325' and nro_solici= '2006013234'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030413' and nro_solici= '2006027972'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030515' and nro_solici= '2005028465'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030521' and nro_solici= '2003000287'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030546' and nro_solici= '2006027971'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030553' and nro_solici= '2001002720'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030611' and nro_solici= '2005031821'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030652' and nro_solici= '2006014264'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030726' and nro_solici= '2005006070'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030749' and nro_solici= '2005031836'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030823' and nro_solici= '2002012325'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '030923' and nro_solici= '2006018392'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031007' and nro_solici= '2003001040'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031008' and nro_solici= '2006018427'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031034' and nro_solici= '2003001031'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031037' and nro_solici= '2003000288'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031041' and nro_solici= '2006018177'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031048' and nro_solici= '2003000224'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031051' and nro_solici= '2003000223'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031052' and nro_solici= '2003001198'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031102' and nro_solici= '2006014263'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031106' and nro_solici= '2006014675'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031114' and nro_solici= '2006027970'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031156' and nro_solici= '2005028466'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031333' and nro_solici= '2006013071'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031420' and nro_solici= '2005031837'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031442' and nro_solici= '2003012544'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031504' and nro_solici= '2003000768'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031520' and nro_solici= '2003001184'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031535' and nro_solici= '2003001047'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031546' and nro_solici= '2003000069'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031602' and nro_solici= '2006013046'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031611' and nro_solici= '2005023023'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031639' and nro_solici= '2005031839'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031757' and nro_solici= '2006018066'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031821' and nro_solici= '2005023024'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '031953' and nro_solici= '2005023020'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032011' and nro_solici= '2003000070'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032021' and nro_solici= '2005029974'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032042' and nro_solici= '2003000071'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032050' and nro_solici= '2002011468'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032112' and nro_solici= '1900040062'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032131' and nro_solici= '2005028467'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032141' and nro_solici= '2002011467'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032150' and nro_solici= '2005023019'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032203' and nro_solici= '2006013179'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032209' and nro_solici= '2002011466'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032251' and nro_solici= '2002011465'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032301' and nro_solici= '2002011462'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032305' and nro_solici= '2002011461'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032306' and nro_solici= '2002011463'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032313' and nro_solici= '2002011464'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032504' and nro_solici= '2005006071'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032518' and nro_solici= '2006026487'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032528' and nro_solici= '2005028468'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032747' and nro_solici= '2005006072'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '032900' and nro_solici= '2006022760'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033010' and nro_solici= '2003000227'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033020' and nro_solici= '2003000226'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033020' and nro_solici= '2003000234'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033029' and nro_solici= '2003000225'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033044' and nro_solici= '2003000228'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033059' and nro_solici= '2002011469'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033124' and nro_solici= '2003000229'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033151' and nro_solici= '2005006678'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033201' and nro_solici= '2003000232'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033211' and nro_solici= '2003000233'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033326' and nro_solici= '2003001079'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033344' and nro_solici= '2003000230'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033348' and nro_solici= '2003000231'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033413' and nro_solici= '2005006446'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033414' and nro_solici= '2003024845'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033428' and nro_solici= '2005020015'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033452' and nro_solici= '2003001078'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033601' and nro_solici= '2003000884'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033634' and nro_solici= '2003000883'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033639' and nro_solici= '2003000882'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033736' and nro_solici= '2003000873'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033772' and nro_solici= '2003000872'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '033932' and nro_solici= '2003000732'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034001' and nro_solici= '2003000734'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034009' and nro_solici= '2003000235'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034028' and nro_solici= '2003000736'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034038' and nro_solici= '2005020016'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034047' and nro_solici= '2003000735'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034103' and nro_solici= '2003000236'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034319' and nro_solici= '2005020014'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034331' and nro_solici= '2005007284'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034521' and nro_solici= '2003000128'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034559' and nro_solici= '2003000237'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034612' and nro_solici= '2003000238'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034732' and nro_solici= '2003000239'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034811' and nro_solici= '2003000241'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034844' and nro_solici= '2003000240'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '034931' and nro_solici= '2005006764'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035022' and nro_solici= '2003000129'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035052' and nro_solici= '2003000242'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035304' and nro_solici= '2003001026'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035352' and nro_solici= '2003000336'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035631' and nro_solici= '2003000296'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035703' and nro_solici= '2003000295'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035713' and nro_solici= '2003000292'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035721' and nro_solici= '2003000293'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035816' and nro_solici= '2003000294'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035834' and nro_solici= '2003000298'
GO
UPDATE marca
SET hora=REPLACE(hora,'03','15')
where hora= '035837' and nro_solici= '2003000297'
GO
UPDATE marca
SET hora=REPLACE(hora,'04','16')
where hora= '040003' and nro_solici= '2002011477'
GO
UPDATE marca
SET hora=REPLACE(hora,'04','16')
where hora= '040037' and nro_solici= '2002011475'
GO
UPDATE marca
SET hora=REPLACE(hora,'04','16')
where hora= '040049' and nro_solici= '2002011476'
GO
UPDATE marca
SET hora=REPLACE(hora,'04','16')
where hora= '044308' and nro_solici= '2006027600'
GO
UPDATE marca
SET hora=REPLACE(hora,'04','16')
where hora= '044832' and nro_solici= '2003022279'
GO
UPDATE marca
SET hora=REPLACE(hora,'04','16')
where hora= '045139' and nro_solici= '2006027601'
GO
UPDATE marca
SET hora=REPLACE(hora,'05','17')
where hora= '050204' and nro_solici= '2006027623'
GO
UPDATE marca
SET hora=REPLACE(hora,'05','17')
where hora= '050524' and nro_solici= '2006027624'
GO
UPDATE marca
SET hora=REPLACE(hora,'05','17')
where hora= '050746' and nro_solici= '2006027602 '
GO
--select substring(hora, 1,2) as HORA_INCORRECTA, hora, nro_solici 
--from marca where hora between '00:00:00' and '06:59:59' order by hora
--GO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select nro_solici, hora from marca
--group by nro_solici, hora
--having MIN(len(hora))<6
--GO
update marca
set hora='094600'
where hora='0946'and nro_solici='2006018428'
GO
update marca
set hora='150500'
where hora='1505  'and nro_solici='2004011146'
GO
update marca
set hora='152500'
where hora='1525'and nro_solici='2004001560'
GO
update marca
set hora='080000'
where hora=''and nro_solici='2001000025 '
GO
update marca
set hora='102500'
where hora='1025'and nro_solici='2005011748'
GO
update marca
set hora='110411'
where hora='11041 'and nro_solici='2006004455'
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SELECT nro_solici,hora, CONVERT(VARCHAR,solicitada)+' '+SUBSTRING(hora, 1, 2)+':'+SUBSTRING(hora, 3,
--  2)+':'+ SUBSTRING(hora, 5, 2) 
--  FROM marca
--  WHERE SUBSTRING(hora, 1, 2)>24 OR SUBSTRING(hora, 3,2)>60 OR SUBSTRING(hora, 5, 2)>60

--GO

update marca
set hora='150610'
where hora='300610'and nro_solici='1900029521'
GO
update marca
set hora='160000'
where hora='610000'and nro_solici='1900007269'
GO
update marca
set hora='150000'
where hora='510000'and nro_solici='1900012761'
GO
update marca
set hora='150000'
where hora='510000' and nro_solici='1900062044'
GO
update marca
set hora='140000'
where hora='400000' and nro_solici='2002011531'
GO
UPDATE marca
SET hora=REPLACE(hora,'69','59')
where hora= '160169' and nro_solici= '2002011476'
GO
UPDATE marca
SET hora=REPLACE(hora,'72','27')
where hora= '153772' and nro_solici= '2003000872'
GO
UPDATE marca
SET hora=REPLACE(hora,'26','08')
where hora= '260604' and nro_solici= '2003017052'
GO
UPDATE marca
SET hora=REPLACE(hora,'28','08')
where hora= '280201' and nro_solici= '2006008873'
GO
UPDATE marca
SET hora=REPLACE(hora,'28','08')
where hora= '280637' and nro_solici= '2006023974'
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select nro_solici, hora from marca
--WHERE LEN(LTRIM(RTRIM(hora)))<6

update marca
set hora='080000'
where hora='  0000' and nro_solici='1999010589'
GO
update marca
set hora='080000'
where hora='  0000' and nro_solici='1999005565'
GO
update marca
set hora='080531'
where hora='  0531' and nro_solici='2000007096'
GO
update marca
set hora='082356'
where hora='  2356' and nro_solici='2000012977'
GO
update marca
set hora='083058'
where hora='  3058' and nro_solici='2001000120'
GO
update marca
set hora='080637'
where hora='  0637' and nro_solici='2001002187'
GO
update marca
set hora='080259'
where hora='  0259' and nro_solici='2001000883'
GO
update marca
set hora='080936'
where hora='  0936' and nro_solici='2001002433'
GO
update marca
set hora='080815'
where hora='  0815' and nro_solici='2001003993'
GO
update marca
set hora='085327'
where hora='  5327' and nro_solici='2003001303'
GO
update marca
set hora='083424'
where hora='  3424' and nro_solici='2003028073'
GO
update marca
set hora='084844'
where hora='  4844' and nro_solici='2004006803'
GO
update marca
set hora='083328'
where hora='  3328' and nro_solici='2006013246'
GO
update marca
set hora='084709'
where hora='  4709' and nro_solici='2012036708'
GO
update marca
set hora='084709'
where hora='  4435' and nro_solici='2014010808'
GO
update marca
set hora='084709'
where hora='00801 ' and nro_solici='2014010808'
 GO
UPDATE marca
SET hora=REPLACE(hora,SPACE(2),SPACE(0))
GO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--SELECT nro_solici,hora, CONVERT(VARCHAR,solicitada)+' '+SUBSTRING(hora, 1, 2)+':'+SUBSTRING(hora, 3,
--  2)+':'+ SUBSTRING(hora, 5, 2) 
--  FROM marca
--  WHERE SUBSTRING(hora, 1, 2)>24 OR SUBSTRING(hora, 3,2)>60 OR SUBSTRING(hora, 5, 2)>60 
--  GO
update marca
set hora='082738'
where hora='82738 ' and nro_solici='2000005976'
GO
update marca
set hora='154858'
where hora='34858 ' and nro_solici='2000007357'
GO
update marca
set hora='081410'
where hora='81410 ' and nro_solici='2000008457'
GO
update marca
set hora='095134'
where hora='95134 ' and nro_solici='2001000041'
GO
update marca
set hora='133615'
where hora='13615 ' and nro_solici='2001000117'
GO
update marca
set hora='082718'
where hora='02718 ' and nro_solici='2001001495'
GO
update marca
set hora='130949'
where hora='10949 ' and nro_solici='2000014087'
GO
update marca
set hora='152102'
where hora='32102 ' and nro_solici='2000017935'
GO
update marca
set hora='084801'
where hora='04801 ' and nro_solici='2001001439'
GO
update marca
set hora='162231'
where hora='42231' and nro_solici='2001001419'
GO
update marca
set hora='154616'
where hora='34616 ' and nro_solici='2001002578'
GO
update marca
set hora='163028'
where hora='43028 ' and nro_solici='2001002602'
GO
update marca
set hora='171034'
where hora='51034 ' and nro_solici='2000015393'
GO
update marca
set hora='165301'
where hora='45300 ' and nro_solici='2002002152'
GO
update marca
set hora='153012'
where hora='33012 ' and nro_solici='2002011530'
GO
update marca
set hora='152015'
where hora='32015 ' and nro_solici='2002011529'
GO
update marca
set hora='153439'
where hora='34539 ' and nro_solici='2004002524'
GO
update marca
set hora='161530'
where hora='41530 ' and nro_solici='2004002565'
GO
update marca
set hora='084748'
where hora='84748 ' and nro_solici='2004012557'
GO
update marca
set hora='084139'
where hora='84139 ' and nro_solici='2004018067'
GO
update marca
set hora='081803'
where hora='01803 ' and nro_solici='2005007439'
GO
update marca
set hora='083202'
where hora='73202 ' and nro_solici='2006020469'
GO
update marca
set hora='165601'
where hora='45600 ' and nro_solici='2008011218'
GO
update marca
set hora='095824'
where hora='95824 ' and nro_solici='2010018303'
GO
update marca
set hora='092744'
where hora='92744 ' and nro_solici='2012040002'
GO
update marca
set hora='170323'
where hora='50323 ' and nro_solici='2013011273'
GO
update marca
set hora='161028'
where hora='41028 ' and nro_solici='2015012311'
GO
update marca
set hora='080801'
where hora='00801 ' and nro_solici='2015044227'
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select nro_solici, hora from marca
--WHERE LEN(LTRIM(RTRIM(hora)))<6

update marca
set hora='142001'
where hora='20000' and nro_solici='1994005308'
GO
update marca
set hora='131159'
where hora='11159 ' and nro_solici='2000004253'
GO
update marca
set hora='135043'
where hora='15043 ' and nro_solici='2000007890'
GO
update marca
set hora='083417'
where hora='03417 ' and nro_solici='2001000554'
GO
UPDATE marca
set hora='085142'
where hora='05142 ' and nro_solici='2001000629'
GO
UPDATE marca
set hora='144059'
where hora='24059 ' and nro_solici='2001002716'
GO
UPDATE marca
set hora='085333'
where hora='05333 ' and nro_solici='2001004052'
GO
UPDATE marca
set hora='141522'
where hora='21522 ' and nro_solici='2002011509'
GO
UPDATE marca
set hora='144510'
where hora='24510 ' and nro_solici='2002011510'
GO
UPDATE marca
SET hora=REPLACE(hora,'23','08')
where nro_solici='2005033668'
GO
--select nro_solici, hora from marca
--where nro_solici='2006018394'
--GO

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CORRECION DE FECHA EXPIRA 

--select nro_solici,expira from marca
--where DAY(expira)>31 or MONTH(expira)>12 or YEAR (expira)>9999 or YEAR(expira)<1752
--GO
--select nro_solici,expira from marca
--where DAY(expira)<1 or MONTH(expira)<1 or YEAR (expira)>9999 or YEAR(expira)<1752
--GO

--Correccion de fecha expirada
UPDATE marca
SET expira= '1999-01-12'
WHERE expira = '1099-01-12' AND nro_solici='1900050374'
GO
UPDATE marca
SET expira= '1999-09-06'
WHERE expira = '0199-09-06' AND nro_solici='1900051320'
GO
UPDATE marca
SET expira= '1983-12-17'
WHERE expira = '0183-12-17' AND nro_solici='1900011752'
GO
UPDATE marca
SET expira= '1992-09-02'
WHERE expira = '0992-09-02' AND nro_solici='1900040599'
GO

UPDATE marca
SET expira= '1998-07-19'
WHERE expira = '0198-07-19' AND nro_solici='1900024841'
GO
UPDATE marca
SET expira= '1993-11-22'
WHERE expira = '0993-11-22' AND nro_solici='1900042518'
GO
UPDATE marca
SET expira= '1999-09-06'
WHERE expira = '0199-09-06' AND nro_solici='1900051315'
GO
UPDATE marca
SET expira= '1986-09-10'
WHERE expira = '0186-09-10' AND nro_solici='1900023141'
GO

UPDATE marca
SET expira= '1987-09-16'
WHERE expira= '1687-09-16' AND nro_solici='1900014420'
GO
UPDATE marca
SET expira= '1988-11-22'
WHERE expira= '0988-11-22' AND nro_solici='1900025484'
GO
UPDATE marca
SET expira= '1999-09-11'
WHERE expira= '0199-09-11' AND nro_solici='1900051337'
GO
UPDATE marca
SET expira= '1978-11-23'
WHERE expira= '1678-11-23' AND nro_solici='1900025570'
GO
UPDATE marca
SET expira= '2002-10-14'
WHERE expira= '0202-10-14' AND nro_solici='1992002239'
GO
UPDATE marca
SET expira= '1996-02-27'
WHERE expira= '0996-02-27' AND nro_solici='1900045946'
GO
UPDATE marca
SET expira= '1975-12-30'
WHERE expira= '0975-12-30' AND nro_solici='1900013124'
GO
UPDATE marca
SET expira= '1999-09-12'
WHERE expira= '0199-09-12' AND nro_solici='1900051347'
GO
UPDATE marca
SET expira= '1987-09-21'
WHERE expira= '1687-09-21' AND nro_solici='1900014491'
GO
UPDATE marca
SET expira= '1994-08-20'
WHERE expira= '0994-08-20' AND nro_solici='1900043614'
GO
UPDATE marca
SET expira= '2008-12-02'
WHERE expira= '0208-12-02' AND nro_solici='1900050189'
GO
UPDATE marca
SET expira= '1975-07-12'
WHERE expira= '1675-07-12' AND nro_solici='1900012770'
GO
UPDATE marca
SET expira= '1996-01-15'
WHERE expira= '1196-01-15' AND nro_solici='1900045826'
GO
UPDATE marca
SET expira= '1991-03-02'
WHERE expira= '0991-03-02' AND nro_solici='1900029207'
GO
UPDATE marca
SET expira= '1994-02-23'
WHERE expira= '0194-02-23' AND nro_solici='1900011845'
GO
UPDATE marca
SET expira= '1999-09-11'
WHERE expira= '0199-09-11' AND nro_solici='1900051336'
GO
UPDATE marca
SET expira= '1990-07-21'
WHERE expira= '0990-07-21' AND nro_solici='1900017110'
GO
UPDATE marca
SET expira= '2002-06-15'
WHERE expira= '0202-06-15' AND nro_solici='1900055577'
GO
UPDATE marca
SET expira= '2006-07-08'
WHERE expira= '1206-07-08' AND nro_solici='1900046424'
GO
UPDATE marca
SET expira= '2023-02-19'
WHERE expira= '0023-02-19' AND nro_solici='1900057031'
GO
UPDATE marca
SET expira= '2000-01-24'
WHERE expira= '0200-01-24' AND nro_solici='1996009064'
GO
UPDATE marca
SET expira= '2002-07-31'
WHERE expira= '0997-07-31' AND nro_solici='1997001237'
GO
UPDATE marca
SET expira= '2010-05-10'
WHERE expira= '0210-05-10' AND nro_solici='1998008026'
GO
UPDATE marca
SET expira= '2010-06-29'
WHERE expira= '0210-06-29' AND nro_solici='1999010589'
GO
UPDATE marca
SET expira= '2010-09-29'
WHERE expira= '0210-09-29' AND nro_solici='1999005610'
GO
UPDATE marca
SET expira= '2010-03-31'
WHERE expira= '0210-03-31' AND nro_solici='1999007827'
GO
UPDATE marca
SET expira= '2010-04-24'
WHERE expira= '0210-04-24' AND nro_solici='1999008195'
GO
UPDATE marca
SET expira= '2010-03-22'
WHERE expira= '0210-03-22' AND nro_solici='1999013475'
GO
UPDATE marca
SET expira= '2013-12-22'
WHERE expira= '0213-12-22' AND nro_solici='2000000854'
GO
UPDATE marca
SET expira= '2010-12-27'
WHERE expira= '0210-12-27' AND nro_solici='2000001440'
GO
UPDATE marca
SET expira= '2010-10-19'
WHERE expira= '0210-10-19' AND nro_solici='1999017304'
GO
UPDATE marca
SET expira= '2010-10-19'
WHERE expira= '0210-10-19' AND nro_solici='1999017304'
GO
UPDATE marca
SET expira= '2012-01-29'
WHERE expira= '0212-01-29' AND nro_solici='2001001998'
GO
UPDATE marca
SET expira= '2011-05-08'
WHERE expira= '0211-05-08' AND nro_solici='2000009333'
GO
UPDATE marca
SET expira= '2011-04-23'
WHERE expira= '0211-04-23' AND nro_solici='2000013651'
GO
UPDATE marca
SET expira= '2011-08-13'
WHERE expira= '0211-08-13' AND nro_solici='2000015543'
GO
UPDATE marca
SET expira= '2011-08-13'
WHERE expira= '0211-08-13' AND nro_solici='2002001001'
GO
UPDATE marca
SET expira= '2012-12-12'
WHERE expira= '0212-12-12' AND nro_solici='2002010110'
GO
UPDATE marca
SET expira= '2013-01-28'
WHERE expira= '1213-01-28' AND nro_solici='2002001001'
GO
UPDATE marca
SET expira= '2013-08-11'
WHERE expira= '0213-08-11' AND nro_solici='2001005089'
GO
UPDATE marca
SET expira= '2016-04-26'
WHERE expira= '0216-04-26' AND nro_solici='2002005616'
GO
UPDATE marca
SET expira= '2013-04-28'
WHERE expira= '0213-04-28' AND nro_solici='2002016161'
GO
UPDATE marca
SET expira= '2013-10-01'
WHERE expira= '0213-10-01' AND nro_solici='2002016644'
GO
UPDATE marca
SET expira= '2013-04-08'
WHERE expira= '0213-04-08' AND nro_solici='2002017922'
GO
UPDATE marca
SET expira= '2014-05-21'
WHERE expira= '0014-05-21' AND nro_solici='2003018031'
GO
UPDATE marca
SET expira= '2013-12-22'
WHERE expira= '0213-12-22' AND nro_solici='2003007928'
GO
UPDATE marca
SET expira= '2009-12-16'
WHERE expira= '0209-12-16' AND nro_solici='1999005653'
GO
UPDATE marca
SET expira= '2010-07-16'
WHERE expira= '0210-07-16' AND nro_solici='2006001153'
GO
UPDATE marca
SET expira= '2023-12-16'
WHERE expira= '0023-12-16' AND nro_solici='2006029162'
GO
UPDATE marca
SET expira= '2017-05-17'
WHERE expira= '0017-05-17' AND nro_solici='2006030450'
GO
UPDATE marca
SET expira= '2017-07-02'
WHERE expira= '0017-07-02' AND nro_solici='2006038619'
GO
UPDATE marca
SET expira= '2018-11-25'
WHERE expira= '0118-11-25' AND nro_solici='2008017624'
GO
UPDATE marca
SET expira= '2018-11-25'
WHERE expira= '0118-11-25' AND nro_solici='2008017624'
GO
UPDATE marca
SET expira= '2018-11-14'
WHERE expira= '0118-11-14' AND nro_solici='2008023582'
GO
UPDATE marca
SET expira= '2010-07-28'
WHERE expira= '0210-07-28' AND nro_solici='2008038769'
GO
UPDATE marca
SET expira= '2010-07-28'
WHERE expira= '0210-07-28' AND nro_solici='2009000949'
GO
UPDATE marca
SET expira= '2010-07-21'
WHERE expira= '0210-07-21' AND nro_solici='2009028415'
GO
UPDATE marca
SET expira= '2020-07-27'
WHERE expira= '0220-07-27' AND nro_solici='2009035855'
GO
UPDATE marca
SET expira= '2020-12-06'
WHERE expira= '0220-12-06' AND nro_solici='2010003225'
GO
UPDATE marca
SET expira= '2020-12-17'
WHERE expira= '0020-12-17' AND nro_solici='2010012699'
GO
UPDATE marca
SET expira= '2010-12-06'
WHERE expira= '0210-12-06' AND nro_solici='2010022083'
GO
UPDATE marca
SET expira= '2021-02-14'
WHERE expira= '0021-02-14' AND nro_solici='2010029055'
GO
UPDATE marca
SET expira= '2021-08-05'
WHERE expira= '0121-08-05' AND nro_solici='2011009290'
GO
UPDATE marca
SET expira= '2021-11-21'
WHERE expira= '0021-11-21' AND nro_solici='2010036993'
GO
UPDATE marca
SET expira= '2021-12-16'
WHERE expira= '0221-12-16' AND nro_solici='2011016852'
GO
UPDATE marca
SET expira= '2021-10-11'
WHERE expira= '0121-10-11' AND nro_solici='2011018728'
GO
UPDATE marca
SET expira= '2021-11-14'
WHERE expira= '0121-11-14' AND nro_solici='2011022998'
GO
UPDATE marca
SET expira= '2031-08-07'
WHERE expira= '0131-08-07' AND nro_solici='2011041320'
GO
UPDATE marca
SET expira= '2011-11-08'
WHERE expira= '0211-11-08' AND nro_solici='2012020033'
GO
UPDATE marca
SET expira= '2024-03-11'
WHERE expira= '0224-03-11' AND nro_solici='2013026888'
GO
UPDATE marca
SET expira= '2025-01-20'
WHERE expira= '0125-01-20' AND nro_solici='2014017591'
GO
UPDATE marca
SET expira= '2026-02-26'
WHERE expira= '0226-02-26' AND nro_solici='2015028399'
GO
UPDATE marca
SET expira= '2016-02-11'
WHERE expira= '0216-02-11' AND nro_solici='2015033441'
GO
UPDATE marca
SET expira= '2016-02-11'
WHERE expira= '1209-01-17' AND nro_solici='1900015744'
GO
UPDATE marca
SET expira= '2005-07-31'
WHERE expira= '1205-07-31' AND nro_solici='1994008042'
GO
UPDATE marca
SET expira= '2019-08-05'
WHERE expira= '0230-08-05' AND nro_solici='2009007921'
GO
UPDATE marca
SET expira= '2002-08-18'
WHERE expira= '0222-08-18' AND nro_solici='1992000440'
GO

UPDATE marca
SET expira= '2009-01-17'
WHERE expira= '1209-01-17' AND nro_solici='1900015744'
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--correccion de campo Registro
--SELECT registro,nro_solici FROM marca
--WHERE LEN (registro)<1 
--order by registro desc
--GO
--select RTRIM(LTRIM(registro)) from marca
--GO

--correccion de inconsitencia de campo regisro
UPDATE marca 
SET registro=REPLACE(registro,'.','')
where registro like '%.%'
GO
UPDATE marca
SET registro=REPLACE(registro,SPACE(2),SPACE(0))
GO
UPDATE marca
SET registro=REPLACE(registro,SPACE(1),SPACE(0))
GO
UPDATE marca
SET registro=REPLACE(registro,'L','')
where registro like '%L%'
GO
UPDATE marca
SET registro=REPLACE(registro,'S','')
where registro like '%S%'
GO
UPDATE marca
SET registro=REPLACE(registro,'B','')
where registro like '%B%'
GO
UPDATE marca
SET registro=REPLACE(registro,'A','')
where registro like '%A%'
GO
UPDATE marca
SET registro=REPLACE(registro,'M','')
where registro like '%M%'
GO
UPDATE marca
SET registro=REPLACE(registro,'/','')
where registro like '%/%'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'RCHIVO','')
WHERE nro_solici='2014037368' AND registro='RCHIVO'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'.','')
WHERE nro_solici='1994003767' 
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'.','')
WHERE nro_solici='1997002001' 
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'.','')
WHERE nro_solici='2000018093'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'.','')
WHERE nro_solici='2002008920'
GO 
UPDATE marca 
SET registro=REPLACE(REGISTRO,'.','')
WHERE nro_solici='2004125490'
GO 
UPDATE marca 
SET registro=REPLACE(REGISTRO,'.','')
WHERE nro_solici='2005026307'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'.','')
WHERE nro_solici='2011029515'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'.','')
WHERE nro_solici='2012040621'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'/','')
WHERE nro_solici='2015027766'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'-','')
WHERE nro_solici='1994001117'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'-','')
WHERE nro_solici='1995003849'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'-','')
WHERE nro_solici='2004010941'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'-','')
WHERE nro_solici='2005032476'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'-','')
WHERE nro_solici='2008008024'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'-','')
WHERE nro_solici='2013037654'
GO
UPDATE marca
SET registro=REPLACE(registro,'C','')
where registro like '%C%'
GO
UPDATE marca
SET registro=REPLACE(registro,'R','')
where registro like '%R%'
GO
UPDATE marca
SET registro=REPLACE(registro,'N','')
where registro like '%N%'
GO
UPDATE marca
SET registro=REPLACE(registro,'F','')
where registro like '%F%'
GO
UPDATE marca
SET registro=REPLACE(registro,'D','')
where registro like '%D%'
GO
UPDATE marca 
SET registro=REPLACE(REGISTRO,'Oive','')
WHERE nro_solici='2014032043' AND registro='Oive'
GO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--DELETE DE SOLICITUD VACIO Y REPETIDOS 

--Numero de solicitud duplicado 

-- Select nro_solici,solicitada, nom_marca, tipo_marca, status from marca where nro_solici in
--(select distinct(nro_solici) from marca group by nro_solici having count(nro_solici)>1)

delete from marca where nro_solici='           ' 
GO
DELETE FROM marca
WHERE nro_solici='2002018319' AND status= '52' 
GO
DELETE FROM marca
WHERE nro_solici='2003001153' AND status= '52' 
GO
DELETE FROM marca
WHERE nro_solici='2005001511' AND status= '52' 
GO
DELETE FROM marca
WHERE nro_solici='2004021704' AND status= '52' 
GO
DELETE FROM marca
WHERE nro_solici='2005030102' AND status= '52' 
GO
DELETE FROM marca
WHERE nro_solici='2005015380' AND peso_r= '285' 
GO
DELETE FROM marca
WHERE nro_solici='2006016787' AND status= '52' 
GO

--Select nro_solici,solicitada, hora, nom_marca, tipo_marca, status  from marca where nro_solici in
--( select nro_solici from marca where SUBSTRING(nro_solici,5,1)<>'0'  group by nro_solici)order by nro_solici --or LEN(nro_solici)<>10
GO
DELETE FROM marca
WHERE nro_solici='2013       ' AND nom_marca='' AND agente=' 4254'
GO
DELETE FROM marca
WHERE nro_solici='2008888888 ' AND nom_marca='PATITO FEO'
GO
--DELETE agentes
--FROM agentes
--WHERE %%physloc%% IN (SELECT MIN(%%physloc%%)
--FROM agentes
--GROUP BY agente
-- having COUNT(agente)>1)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--UPDATE PARA AGREGAR EL TIPO DE PERSONA JURIDICA(J) Y NATURAL(N) EN LA TABLA TITULAR 

--SELECT RTRIM(LTRIM(nombre)), TIPO_PERSO FROM titular
--WHERE TIPO_PERSO IS NULL order by nombre

--SELECT * FROM titular WHERE CHARINDEX('Sin nombre', upper(nombre))>0 


ALTER TABLE titular ADD tipo_perso varchar(1);


update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE R.L. DE C.V', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE RL.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE RL.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NV', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE R.L. DE C.V.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('& CIA.S.C.A.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A.G', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GMBH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LTD', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.A. DE C.V', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INC', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.A', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONDURAS SA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('P.L.C.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PLC', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('N.V', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AG', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHNSON & JOHNSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ABBOTT LABORATORIES.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ABBOTT LABORATORIES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('K.K.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.L.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GMLH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BAYER AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.DE R.L.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACADEMIE SCEINTIFIQUE DE BEAUTE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOCIEDAD DE FRANCIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CESKOSLOVENSKE HUDEBNI NASTRAJE NARODNI PODNIK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOTTGER KOMMANDITGESELLSCHAFT PHARMAZEUTISCHE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATORIOS ANDIFAR', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REVLON REALISTIC PROFESSIONAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATORIOS FRANCELIA, S. DE R. L.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.A.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.R.L.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE R.L.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('APS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.P.A.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.P.A', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROCTER & GAMBLE (MANUFACTURING) IRELAND LIMITED', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RELIGIOUS TECHNOLOGY CENTER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('QUIMICAS HANDAL DE CENTROAMERICA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LLC', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICENTE PASCUAL STELLA HERNANDEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INC.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OREAL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GEORG DRALLE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SPA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUAN JANSA PUJALS.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HENKEL KGAA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO F. SIMAN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PPRODUCTOS FINOS S,A.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SANOFI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATORIES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIMITED', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CV', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TEXTILES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BAYER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POLYMER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATORIOS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JONHSON & JOHNSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMACIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNILEVER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHNSON  & JOHNSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOCIETE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCANTIL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INDUSTRIAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHNSON &JOHNSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INDUSTRIES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INTERNACIONAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PINTURAS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FABRICA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHNSON Y JOHNSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMACEUTI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATOIRE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATOIRE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BV', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARTICULOS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GAZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CENTROAMERICA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SPORT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DISTRIBUIDORA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHNSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EMPRESA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DISTRIBUTORS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INTERNATIONAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PRODUCTOS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HERRAMIENTAS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHILIPS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ELECTRONIC', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DROGUERIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOCIEDAD', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAFE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASSOCIATION', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SERVICIOS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SERVICIOS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INDUSTRIAS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('L.P.C', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WORKS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TECHNOLOGIES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DEPORTIVO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EDITORIAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHILPS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NISSAN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MITSUBICHI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PANADERIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOSPITAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ILLYCAFFE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATORIO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONDA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TOYOTA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MITSUBISHI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASOCIACION', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MUSIC', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SIEMENS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUMINISTROS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FERRETERIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FERRETERO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARROZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FUNDACION', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALMACEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PRODUCTORA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUZUKI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAPICES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INSTITUTO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SISTEMA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TELEVISION', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GRUPO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CENTRAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PRODUCTS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CANON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHARMACIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOTEL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOTEL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RESTAURANTE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DITEL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYSTEM', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DONKIN DONUTS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('L.T.D.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONDURAS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHSON & JOHSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHSON & JOHSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POPULAR', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('G.M.B.H.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INDUSTRIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ISUZU', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPOSTERIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TV', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CERVECERIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TABACALERA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROTECCION', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEGURO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASOCIADOS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHICKEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IMPORTACIONES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIBRA-PHARM GESELLSCHAFT FUR PHARMAZEUTISCHE (REVERSO)', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHARMAZEUTISCHE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PUMA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE R. L. DE C. V.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALCATEL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IDUSTRIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('G.M. B.H.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE R. L.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SONY', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('M.B.H.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('L.P.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LLP', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C.R.M. MOTORSHOP S.DE R.F.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMITALIA CARLO EBRA S. R.L.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONDUREÑA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCEDES BENZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MANUFACTURERA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KAWAS S. KAWAS Y CIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S P A', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('P.T. MASPION', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALIMENTOS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FERRETODO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('J.& E. ATKINSON LTED.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TIENDAS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCEDES-BENZ AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROYECCIONES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IGLESIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C.A.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GRUPPO LEPETIT, S. P. A.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MINNESOTA MINIG AND MANUFACTURING', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GRUNDFOS, A/S', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MONTEDISON.S,P.A.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REEMTSMA CIGARETTENFABRIKEN G.M.B.H,', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A G.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SITRIBUIDORA CENNTRAL DESVIO AL MANCHEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TOSTADORA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('L.F. MORENO HIJO Y CIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('E.R. SQUIBB & DPMD OMV.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('H.H. POTT NFGB', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TWENTY FOUR/SEVEN (24/7) VEINTICUATRO SIETE (24/7)', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BAXTER TRAVENOL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CMI IP HOLDING', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MINNESOTA MINING AND MANUFACTURING', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATORI PRO TER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FAR ITALIA CARLO ERBA S,P.A.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PATRONATO NACIONAL DE LA INFANCIA (PANI)', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PATRONATO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATORISO RADON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VEB JANAER GLASWERK SCHOTT V. GEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C.H.BOEHERINGER SOHN', upper(nombre))>0
GO

update titular set tipo_perso = 'J' WHERE CHARINDEX('E. MERCK', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HOECHST AKTIENG.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GUENTER R. HEWIG', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENKEL KOMMARDIT GELSELLSCHAFT AKTIEN', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOCTOR FUAD ASFURA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BEIERSDORF AKTIENG.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANNICK GOUTAL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GILDA ESPINOZA CHOCANO DE TSCHEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANNICK GOUTAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RICHTER GEDEON VEGYESZETI GYAR R.T.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENKEL KOMMANDITGELSELLSCHAFT AUFAKTIEN.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROUSSEL UCLAF', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C.H. BOEHRINGER SOHN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASTA MEDICA AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('J. & E ATKINSONS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('J. & E ATKINSONS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOEHRINGER MANNHEIM BNBH', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('IVAN CABAÑAS SILVA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ORSEM', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOECHST AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BARBARA STEIN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EGIS GYOGYSZERGYAR', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MODESTO ABREU P.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KEMIRA OY', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BEIERSDORF AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KOH-I-NOOR-SPOJENE KOVOPERUMYSLOVE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('E.MERCK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WORLDWIDE.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SPIESSHOFER & BRAUN EXPORTGESELLECHOT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOECHST AKTIENGESELLS CHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO F SIMAN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHEMIEWERK HOMBURG ZWEIGNIEDERLASSUNG DER DEUTSCHEN GOL-UND', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SMITHKLINE BEECHAM', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARED-EX', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOMINGO ROIG SOLA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIBA-GEIGY LTED.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIPHA LYONNAISE INDUSTRIELLE PHARMACEUTIQUE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LURGI AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FALCADO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MFC SERVICES (ALL)', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MFC SERVICES (ALL)', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHILIPPE CHARRIOL.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEINRICH MACK NACHF', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENKEL KOMMANDIFELLS ELLSCHAFT AUB AKTIEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROLLEI-WERKE-FRANKE & HEIDECKE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INHABER DR. F.A. SCHENKER-WINKLER IND DR. BORKARD SCHENKER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIUTPOLD-WEKE-CHEMISCHE- PHARMZEUTISCHE FABRIK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SHCERING AKITRENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOOKER CHEMICALS', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALFA ROMERO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FUAD ASFURA ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNTHELABO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUSTAVO ADOLFO ULLOA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WELLA AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOEHRINGER MANNHEIM G.M.B.H ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOCHEMIE GESELLSCHAFT MBH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHEVAL NOIR', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARFUMS CHRISTIAN DIOR', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASTA-WERKE AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GRUNDFOS A/S', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HANS SCHWARZKPF G.B.M.H.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BEHRINGWERKE AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TOMAS WEDDLE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERREL DOW PHARMACEUTICALS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARFUMS GUY LAROCHE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BUSH BOAKE ALLEN LMT.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALICIA LAVIDALIE DUFOUR DE CARRILLO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALFRED DUNHILL LTED.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ERNESTO FLORES ZEPEDA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WYETH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KABUSHIKI KAISHA BARUDAN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NOVARTIS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EUGENE-GALLIA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PIERRE CARDIN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENKEL KOMMAN DETGELSELLSCHAF AUF AKTIEN ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HYDRIS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PRVNI BRNENSKA STROJIRNA,KONCERNOVY', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARRAH FAWCETT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C.H. BOERINGER SOHN.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MURJANI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MURJANI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DOMINGO ROIGT SOLA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ADAM OPEL AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RHOVYL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANIBAL HOLTHEUER HAUSDORF', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HITACHI MAKUSERU KABU KIKI KAISHA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANDREAS STIHL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KOH I NOOR', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SIGMA LUTIN, NARODNI PODNIK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LES PARFUMS JACQUES FATH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OTIS ELEVATOR', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GODECKE AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN-LOUIS SCHERRER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A D G-ANKER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHANN MARIA FARINA GEGENRIBERDEM JULICHS-PLATZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHN W. CARSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NIPPON GAKKI SEIZO KABUSHIKI KAISHA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GEBRUDER KLEINER G.M.B.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MITSUO IKEJIRI', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('USINES METALLURGIQUES DE VALLORBE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARL ZEISS', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALBERTO OSORIO GONZALES', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE F. SIWADY', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BAYE AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('E.MERK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DARMSTADT,FRANKFURTER STRABE.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHERING AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARFUMS ROCHAS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHIRANA -PRAKA (NARADNI PODNICK)', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONEYWELL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ABB ASEA BROWN BOVERI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ABB ASEA BROWN BOVERI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AB ASTRA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VEB JENAER GLASWEEK SCHOTT & GEN.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NOVO NORDISK A/S', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OSRAM GESELLSCHAFT MIT BESCHRANKTER HAFTUNG', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOSE ROBERTO LAPEZ FUNEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOCTOR JOSE ALEJANDRO CHAVEZ JIMENEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARL ZEIZZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENKEL KOMMANDITGELSELLSCHAFT AUF AKTIEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PIKENS THE FIRST AKTIENGESELLSCHAF', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PIERRE FABRE MEDICAMENT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNIPHARM DE GUATEMALA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TWENTIETH CENTURY FOX FILM', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('STENDHAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARFUMS JEAN DESPREZ,S,A', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIGA NACIONAL DE FUTBOLL NO AFICIONADO PRIMERA DIVISION', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HELKEL KOMMANDITGELSELLSCHAFT AUF AKTIEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BEECHM GROUP LTED', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PIKENS THE FIRST A AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PIKENS THE FIRST A AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MONSIEUR PAUL CHAUVIN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIPHA LYONNAISE INDUSTRIELE PHARMACEUTIQUE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SIEGFRIED AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UHU-WERKE H.U.M. FISCHER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MAUSER WERKE OBSERNDORF', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HANS SCHWARZ KOPF', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LOCKHEED AIRGRAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE STANLEY WORS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MISS WORLD JERSEY LTED', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LES PERFUMS DE MOLYNEUX', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AVELINO RAMOS LOPEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MORNY LTED.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OSRAM GESELLSCHAFT MITBESCHRANKTER HAFTUNG', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOCHEMIE GESELISCHAFT M. B. H.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX(' M. B. H.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REEMTSMA CIGARETTENFABRIKEN G.M. B. H.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROWENTA WERKE GESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NIHON MORANTE KABU SHIKIKAISHA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NIHON MARANTZ KABU SHIKI KAISHA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SKODA KONCENOVY PODUIK', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OLEC CASSINI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CENTRE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE SEELING', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JURID WERKE GESELLSCHUFT MIT BESCHRANKTER HAFTUNG', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MANUFACTURAS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHERING AK.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C.H.BOEHRINGER SOHN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A.W. FABER CASTELL UNTERVEHMENS VERWALTUNG G.MB.H', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PATRICK HENRY HANDAL BENDECK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LES PARFUMS DE MOLYNEUX', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERTO GOMEZ BOLAÑOS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OSRAM GESELLSCHAFT MIT BESCHRANKTERHAFTUNG', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WELA AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OSRAM GESELLSCHAFT MIH BESCHRANKTER HAFTUNG', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOAQUIN MEDINA OVIEDO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUAN GILBERTO MARIN QUINTERO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TAURUS GUMIIPARI VALLALAT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENKEL KOMMANDITGESELLSCHAFT AUF AKTIEN', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICHAR HUDNUT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SPLENDOR GLOEILAMPENFABRIEKEN.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOECHST AK.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FRANKILN GALLARDO GOMEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARL-ZEISS-STIFTUNG. Ó SCHOTT GLASWERKE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARL-ZEISS-STIFTUNG. Ó SCHOTT GLASWERKE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FRANKLIN GALLARDO CHAVEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERTO PANTING PROPETARIO DE INROPA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SIERRA SUCESORES', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERTO PANTING', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHVARZKOF GESELLSCHAFT MIT BESCHRANKTER HAFTOMG G.H.B.H.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MANUEL PEREIRA CALIX', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PENTEL KABUSHIKIKIKAISHA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GESFOR AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KABUSHIKI KAISHA TOCHIBA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE PROCTER & GAMBLE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PETER G. DORNAU Y ART SPECTOR', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNDERWRITERS LABORAYTORIES INNC.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LUIS GOMEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR JOSE ALEJANDRO CHAVEZ JIMENES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TAURUS  GUMIIPATI VALLALAT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHWARZ-PHARMA AK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('G.D.SEARLE & C.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LYRA ORLOW', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('E.I.DU PONT DE NEMEOURS AND C.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RELIGIOUS TECNOLOGY CENTER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RELIGIOUS TECNOLOGY CENTER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SMITH KLINE & FRENCH INTER-AMERICAN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GUERLAIN S. A.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. A.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUAN MIGUEL MARTINEZ PINTO.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOS-KINDERDORF', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUAN ANGEL  MARTINEZ PINTO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENKEL KOMMANDITGESELLSCHAFT AUF', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO ROBERTO MARTINEZ FONSECA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CENTROTEX.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE ROYAL BANK OF CANADA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX(' AKTIENGESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WERK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WERK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOSE CARMELO TORRESBIARTE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROPRIETARY', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MELCIADES ANTONIO LONGAS ZAPATA O TONY LOW(PROTON)', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHANN MARIA TARINA, GEGENUBERDEM JULICHS PLATS.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENKEL KOMMANDITGSELLSCHAFT AUF  AKTIEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENKEL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GBH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHILIPPE CHARRIOL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SRES. ANDRES HAMILTON JOSEPH Y OLIVE REGINALDO JOSEPH', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TOMAS RENE SCHULZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SONS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SONS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOHN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DOMINGO ROIG LOLA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AB TETRA PAK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AB', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SRA VIOLA ELEIDA PINEDA DE ALFONSO.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SPECIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERREL DOW PLENUACEUTICAL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RODRIGO WONG AREVALO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOLIDAY INN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BURBERRYS LTED', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LTED', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARFUMERIE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VEB KOMBINAT ROBOTRON', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CALVIN R. HEMPHILL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HEMPHILL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MONTEDISON.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CLARK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AKTIENGESELLESCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('STAEDTLER', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEÑOR ROBERTO CHANG PEÑA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SRES. ANDRES HAMILTON, JOSEPH Y CLIVE REGINALDO JOSEPH', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NASRY F. CANAHUATI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WERNER KRING Y FRITZ SCHMIDT,DE LIRA ORLOW.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DERRIA ANSTALT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FREDY ROBLES ROSEF UNDUSTRIAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOLVAY PHARMA.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHARMA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHERING', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TRITZ SCHENKER WINKLER.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TRITZ SCHENKER WINKLER.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIA VEREINIGTE PAPIEINUKE SCHIKEN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOESCHST AK.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FREDY ROBLES SEQUEIRA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANDRES HAMILTON JOSEPH Y CLIVE REGINALDO JOSEPH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BTICINO SP A', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROUSSEL-UCLAF', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARFUMS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE GENERAL MOTORS BUILDING 767', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GENERAL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TAUFICK SIMON ROMAN.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIMENTERIES C.B.R.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOECHST AK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE ASSOCIATED PORTLAND CEMENT MANUFACTURING', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CEMENT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANDRES CANO RODRIGUEZ.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAFAEL ALONSO SUARES.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WALTER RITTER', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ENRIQUE ALVARADO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HERMAN AUGUSTO HERBRUGER GARCIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROCTER & GAMBLE DE CENTRO AMERICA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAFAEL ALFONSO SUAREZ.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR. KARL HAHN GESELLSCHAFT MY BESCHRANKTIR HAFTUNY (GMB)', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FERTILIZANTES', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MIGUEL ANGEL FAJERDO FERNANDEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('A/S DUMES', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MIGUEL ANGEL FAJARDO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SKOEXPORT PODNIK ZAHARANISNCH.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IMPERIAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOCHEMIE GASELLSCHAFT BH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOCHEMIE GASELLSCHAFT BH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('YELLO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('USINES CHIMIQUES RHONE-PAULENC', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('USINES CHIMIQUES RHONE-PAULENC', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHIMIQUES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('E. DENKOHG', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARLOS ANTONIO REYES.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARLOS ANTONIO REYES.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INROPA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARLINY GALICIA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FUAD HASBUN TOUCHE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FUAD HASBUN TOUCHE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAUL CASTRO LINARES.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALUMINIOS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SKLOEXPORT AKCIOVA SPOLECNOST.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SPOLECNOST', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHWEIZ SERUM-UND IMPFINSTITUT ZUC ERFORSCHUG', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SPOLECNOST', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOFARMA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JORDAN AS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NINA RICCI DE PARIS.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARIS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARIS', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR JOSE LLADRO.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INSTITUT PASTEUR', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PASTEUR', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VERREIE ET CRISTALLARIE D ARQUES J.G.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMSTERDAM .L.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOOTS HEALTHCARE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOFORMA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEALTHCARE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NORDMARK WEIKE GESELLSCHAFT MIT BESCHANKER HAFTUNG', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HAFTUNG', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GESELLSCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WEIKE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO VALLE PICHINTE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR.FUAD J,ASFURA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GMB', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HANS SCHWARZKOF GMB', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HANS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SINERBE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEJANDRO JOSE CARRION MC.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AMADO PELEN CANTORAL.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HECTOR NAZARIO ORTIZ GARCIA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMEN  IRENE MEDINA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NORTH MEDICAMENTA, C.A', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NORTH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOEHRINGER MANNHEIN G.H.B.H', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MANNHEIN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOEHRINGER', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ARTURO BEZANILLA BRASS', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERTO GOMES BOLAÑOS.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SKLOEPORT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KOH-I-NOOR,SPOJENE KOVOPRUMYSLOVE ZAVODY NÁRODNÍ PODNIK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KOH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PODNIK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RECHERCHE ET PROPIETE INDUSTRIELLE.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RECHERCHE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PICCIOTTO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CANDY JAR', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALFREDO JOSE KATTAN.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALDERON PUBLICIDAD. ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PUBLICIDAD', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OLGA BESSY DOXONO ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('STANHOME', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCWEIZ SERUM UND IMPFINSTITUD UND INSTITU ZUR ERFORSCHUNG DER INFERKTI ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INSTITU', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INSTITU', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SERUM', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SMITHKLINE BEECHM', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SMITHKLINE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('R. ARAUZ (ROLANDO ARAUZ TURCIOS)', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALFREDO JOSE KATTA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO F.SIMAN', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. LUIS B. HANDAL Y CIA ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BENEFICIO DIECK', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YAN WING TSE LEE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARTHA SOFIA VALENZUELA MONCADA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR.FUAD J. ASFURA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASHONPLAFA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('E. MERCH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PIERREL S.P A', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DAVID VAUGHAN RACKLIN', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CHAUSSURES ANDRE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDUARDO YAFFAR CHEDRAUI', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROGELIO ADOLFO CASTILLO V.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BELIA MARIA PUERTO "PEPE BOUTIQUE"', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LEDERLE PIPERACILLIN', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. JAIME FARAY FRECH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMITALIA CARLO ERBA, S. R . L.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELIAS ANTONIO JARUFE JARUFE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA MARTINEZ.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THERAPLIX', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALFREDO M. JALIL S.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR CARMELO RIZZO ROSITO.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN CACHAREL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GLORIA DE ZUNIGA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KIRKBI A/S', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SERIGRAFIA DEL ORO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GIORGIO RENATO LORENESI FORNACIARI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROCTER GAMBLE INTERAMERICAN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INTERAMERICAN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHIMIC ET PTO MISTIQUE.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHIMIC', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HAROLDO OTONIEL MORALES ERAZO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NOVO-NORDISK, A/S', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NOVO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. ANTONIO GALLARDO CARRERA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HERSHE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HERSHE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('U C B ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('U C B ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HIELO REYNALDOS', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JAIME FARAY FRECH', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('R  ARAUZ T', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERTO CALDERON FERNANDES', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERTO CALDERON FERNANDEZ.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MD FOODS A.M.B.A.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARLOS ALFONSO RAMOS GUTIERREZ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO CALIX URTECHO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO FACUSSE HANDALL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LUIS B. HANDAL Y CIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNTEX PARMACEUTICALS INTERNACHONAL LMITED', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FUAD J. ASFURA ASFURA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LIPHIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PEARSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BAZAR CANTON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMITALIA CARLO ERBA SRL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SRL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HAROLD OTONIEL MORALES', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOSE ALEJANDRO CHAVEZ JIMENEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('P.M. ERNESTO FLORE ZEPEDA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RORER INT.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PREPARACIONES Y DISTRIBUCIONES EL TIGRE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DISTRIBUCIONES', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR AUGUST OETKER', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR.JULIO DE MORALES', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HECTOR NAZARIO ORTEZ GARCIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEJERISELSKSBET DAMMARK', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SCHWAIZHAUPT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEBASTIAN SOLORZANO MONCADA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NEW ZEALAND DAIRY BRARD', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ZEALAND', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DAIRY', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PFIZER  IC.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMITALIA CARLO ERBA S, R. L.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LUIS FERNANDO CUBILLAS MALDONADO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SRA. INGEBORG BISCHOP DE FISCHER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAIT MONT BLANC', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BLANCA DAYSI CARRANZA DE SILIEZAR', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BLANCA DAYSI DURAN CARRANZA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BLANCA DEYSI CARRANZA DE SILIEZAR', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BLANCA OFELIA WILLS QUIÑONEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MONT BLANC', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BLANCA PATRICIA ZERON ZELAYA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BLANCA PATRICIA ZERON ZELAYA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSWALDO GUZMAN PALAU, BLANCA REBECA MEJIA LOZANO', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BLANCA EMERITA FLORES CANTARERO', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOCHRINGER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SMITHIKLINE BEECHAM P L C', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SMITHKLIES BEECHAM RICA S,A', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OSTERREICHESCHE STICKSTOFFWERME', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LUND', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEÑOR JERONIMO ALFREDO BUEZO SMITH', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEÑOR JERONIMO ALFREDO BUEZO SMITH', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEÑOR JERONIMO ALFREDO SMITH', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEÑOR ALFREDO BUEZO SMITH', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INEXA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GIORGIO RENATO LORENNESI FORNACIARI .', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOHN DEKUYPER E SON DISTILLERIA LA MERDU NORD', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NIVI NORDISK A/S', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NOVA NORDISK A/S', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PERNORD RICARD', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NORDOX AS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PASCUAL BRUNI', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KALI-CHEMIE AKTIENGESELCHAFT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WILLIAMS OWEN OCAMPO.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GIUSEPPE DALLA VANIGLIA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GIUSEPPE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUN-MAID RAISIN GROWERS OF CALIFORNIA.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALIFORNIA.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BLUE DIAMOND GROWERS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NEWELL RUBBERMAID INN.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MD FOODS AMBA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMBA', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FOODS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MILKY WAY', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WAY', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROUSEEL UCLAF', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NATIONAL', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR JUAN ALSINA CALLIZO.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HECTOR RENE FONSECA LOPEZ.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUSTAVO ALDONSO LOPEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('U.C.B.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR. JOSE ALEJANDRO CHAVEZ MARTINEZ.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MFC SERVICE', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SERVICE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERTO CALDERON FERNANDEZ', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR. LUIS B. HANDAL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KNOLL G.H.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MALONE & HIDER PARK.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARK', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CN BEATRICE HUNT WESSON', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROC INT.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR MIGUEL CASTRO GOMEZ.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOCTOR ANTONIOF SIMAN', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROUSEL UCLAF', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BLANCHE KHALIL JADA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CIA WARNER LAMBERT', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WARNER', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PENOD RICARD ANONYME.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANONYME', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANSTALT FUER ZELLARSCHUNG', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANSTALT', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALBERTO CHAMORRO BERNARD', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('F HOFFMANN LA ROCHE E Y A,G', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOFFMANN', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TITO MARIO DI STEFANO CAPOCEFALO. O', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OREGON', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIO DORINDO ORELLANA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ARNULFO URRUTIA VALLADAREZ', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A/S DUMEX', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A/S', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDUARDO ENRIQUE BUSTAMENTE ROURK', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BENAR RAVLNAISKE ZARODY NAIRDNIRODNIK', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JERONIMO EDMUNDO ANDRES', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DOW ELANCS', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IRVEL,S. R.L.', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IRVEL', upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. R.L.', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOSE ENRIQUE BATARSE', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOSE ELIAS FAJER FARON Y RAFAEL FAJER GARCIA', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. FUAD B. SIKAFFY', upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUAN MIGUEL,JOSE CARMELO,CARLOS EMILIO ANTONIO,TORREBIARTE.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUAN MIGUEL, JOSE CARMELO, CARLOS EMILIO ANTONIO Y LUIS PEDRO TORREBIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SHU YONG CHENN WANG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR. FUAD J. ASFURA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARGARITA DE HERNANDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HERNANDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SIKAFFY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MIGUEL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FUAD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARLOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EMILIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LUIS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PEDRO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOSE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAFAEL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDUARDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARGARITA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANDRES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDMUNDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JERONIMO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ENRIQUE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERTO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUSTAVO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LOPEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RENE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HECTOR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAUL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALFREDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALFREDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ASFURA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('IVAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PATRICIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SOLORZANO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MONCADA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROGELIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JAIME',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HUNGAROTEX TEXTILKIVITELI VALLALAT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEFERINO INESTROZA LARIOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INVERSIONES DON CARLOS, S. DE R.L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('&',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BELIA MARIA PUERTO MARTINEZ "PEPE BOUTIQUE"',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANA MARIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA ESPERANZA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('XINIA MARIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIANO DE JESUS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEÑORA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('APLICACIONES QUIMICAS LAVARREDA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('QUIMICAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('APLICACIONES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEXANDER MORA DELGADO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RODERICK ALEXANDER SCHACHER KAFATI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RODERICK ALEXANDER SCHACHER KAFATI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BLOCKBUSTER VIDEO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LEDA CASTILLO DE GAITAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FORMULAS Y MARCAS, S. DE. R.L. FORMAR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FORMULAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MARCAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REFRIHOGAR,S, DE R.L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REFRIHOGAR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LOS BRODERS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JACK SCHWARTZ SHOES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JACK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VOEST-ALPINE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VOEST',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RENAN MALDONADO AYESTAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RENAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MALDONADO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PREDIO REPUESTOS MALDONADO, S.A.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LUIS FERNANDO CUBILLAS MALDONADO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LANTIMUNDO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEDICENTRO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SORAYA JALIL DE BENDECK',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SORAYA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NASRY C. BENDECK',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NASRY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASOCIATION PRO-SUPERACION JUVENIL ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REVILLON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MILLER BREWING VOMPANY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INNESOTA MINING AND MANUFACTURING ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INNESOTA MINING AND MANUFACTURING ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HERMANOS ESCUDEROS, S..A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HERMANOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALFERDO JALIL S',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EMBOTELLADORA EL SOL, DE R.L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EMBOTELLADORA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL SOL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOMINNGO ROIG SOLA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MILCIADES ANTONIO LONGAS ZAPATA O TONY LOW',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACEROS NACIONALES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RELIGIOUS  TECHNOLOGY CENTER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RELIGIOUS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TECHNOLOGY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CENTER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CENTER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR ROLANDO GODOY MORAZAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RICHTER GEDEON VEFGYESZETI BYAR R.T.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO PFAEFFLE MARIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO PFAEFFLE MARIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SHANGHAI YAH CHONG SEWING MACHINE MANUFACTORY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CALDERON  PUBLICIDAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEÑOR HORACIO BARRIOS DELFINO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HENRY KATTAN LARACH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARLSBERG S.S',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEINRICH MARK NACHF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEDIMPEX GYOGYSZERKULKERSKEDELMI VALLALAT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUMMY ROLAND MARQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEINEKEN BROUWERIJEN NEDERLAND N.L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEINEKEN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NEDERLAND',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LORD CARLVERT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR MANUEL VENEGAS WAI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO FACUSSE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FACUSSE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EGIS GYOGYOSZERGYAR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PIERRE CULLIFORD ALIAS PEYO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TWENTIETH CENTURY - FOX FILM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('E. MERC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RAPALA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DESTILERIA CASITA ROJA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DESTILERIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROSEF INTDUSTRIAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JACQUES JEAN LAMBERT VIOLET, SIMONE MARIE GERMAINE VIOLET',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LE PLESSIES ROBINSON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DAVIDE CAMPARI MILANO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EUFEMIANO FUENTES DIAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EUFEMIANO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JIMMY ROLANDO MARQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.T. DUPONT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHARNAINDUSTRIE.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEINRICH MARCK NACHF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NACHF',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROMUALDO BUESO PEÑALBA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MAISON GRAND EMPEREUR NAPOLEON RULLAUD LARRET ET GASQUETON FRERES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GRAND',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROTHMAN CIGARRETHE G M B H ]',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JIM SEAN BRANDS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BRANDS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RODOLFO LUGO PALMA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RODOLFO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LUGO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIA FIAT LUX DE FOSFOROS DE SEGURANCA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEÑOR ARMANDO RAMON VICENNTE.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MAX FURTS HEPBURN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MAX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALZADO PIX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALZADO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CITYBANK N.A.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROGER MARIN NEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('INGINIERO RAMON M CARDONA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOÑA LESLY YOLANDA GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LESLY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('T JORGE S. CHAIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL CALVARIO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A. AUGIS MEDAILLES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEDAILLES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. MARIO GUILLERMO GONZALES M.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KAPNOVIOMICHANIA ETHNOS-G.A. KERANIS AE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DIGITAL S. DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INNOVATIONS POUR L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POUR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BELS-AM-LAIM-STRASSE 129,800 MUNCHEN 80',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MUNCHEN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AURA ARGENTINA PAZ DE HERRERA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOÑA OLGA V. DE CANAHUATI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DRYCLEANING Y LAVANDERIA MAYA',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAVANDERIA',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHARMINDUSTRIE',upper(nombre))>0
GO   
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAMISERIA HAMILTON',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIUDAD DE HAMILTON,BERMUDA.',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAMISERIA',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('FREIJE S  DE R.L.',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('FUNDICIONN ESTRADA HEMANOS HUMBERTO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('OLGA BESSY DOXON',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('HELENO PLAST S-A-',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SKANDINAVISK HOLDING',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOLDING',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('MADAME  DUBARRY CLINICA DE BELLEZA S',upper(nombre))>0
GO   
update titular set tipo_perso = 'J' WHERE CHARINDEX('CLINICA',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA MERIENDA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('MODERNIC MUEBLES PARA OFICINA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OFICINA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('YOEL MUCHNIK ROSVASOWSKY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MICHEL E. FAYAD',upper(nombre))>0
GO     
update titular set tipo_perso = 'N' WHERE CHARINDEX('HENRY GRETHEL',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DIANE VON FURSTENBERG STUDIO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('STUDIO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('WALTER GERARDO FERNANDEZ ASTUA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ADOC DE GUATEMALA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DONN PATRICK HENRY HANDAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MIRKA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FACTORY',upper(nombre))>0
GO    
update titular set tipo_perso = 'J' WHERE CHARINDEX('M.F.G. DESINGN',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('VAN DE VELDE GEBROEDERS NAAMLOZE VENNOOTCHAP',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('NAAMLOZE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VIRGILIO UMANZOR GALLO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('E. J. GALLO WINERY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KENNY ROGERS PRODUCTIONS',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('MCGREGOR CROP',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RIGOBERTO STEFAN HODE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE R.L DE C.V',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA GRANJA, S. DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GRANJA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PLATENSE FOOTBALL CLUB',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CLUB',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('NAF NAF',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOEL MUCHIRIK',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('PUBLICACIONES ESPECILIZADAS',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('PUBLICACIONES',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA DOLLY HAYAS LUNA DE LOZANO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FORMIFT ROBERGINE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL PROVEEDOR INFANTIL',upper(nombre))>0
GO   
update titular set tipo_perso = 'J' WHERE CHARINDEX('POZUELO S,A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S,A.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('BLUE BELL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BELL',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('VITO RODRIGUEZ RODRIGUEZ',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('PATEUR MERIEUX SERMUS ET VACCINS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERIEUX',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('MYRIAM SOLANGE RODAS MARQUES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PIZZERIA DON CROLEONE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('PIZZERIA DON CROLEONE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICHID FAANZI MAALOUF',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('KAFIE DISTRIBUIDORES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MENA CIA.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GADALA MARIA DADA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CREACIONES ADOMALF',upper(nombre))>0
GO   
update titular set tipo_perso = 'J' WHERE CHARINDEX('CREACIONES',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPRESENTACIONES MOLINA SIERRA',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPRESENTACIONES',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPRESENTACIONES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WM. WRIMGLEY',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHINOIN GYOGYSZER ES VEGYESZETI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GYOGYSZER',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('VEGYESZETI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YAN WIG TSE LEE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNITED MARKETING',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MARKETING',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MANUEL MENDEZ ADAL',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('MANUEL',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ADMINISTRADORA DE BIENES RAICES',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('ADMINISTRADORA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIENES',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('NESTOR PLASENCIA FERNANDEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHOLL LATIN AMERICA LIMITE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('LATIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AMELIA DE MCLEAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. JOEL MUCHNIK R.',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA DE JESUS MEDINA P.-',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR KURY ZAIED',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DELICIAS DEL MAR',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DELICIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RUBEN NUÑEZ M.',upper(nombre))>0
GO   
update titular set tipo_perso = 'N' WHERE CHARINDEX('RUBEN',upper(nombre))>0
GO   
update titular set tipo_perso = 'N' WHERE CHARINDEX('FELIPE DIONISIO GARCIA JARQUIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE. R.L. DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MATERIAL SCHUTZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHUTZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALTA TECNOLOGIA S DE RL. DE C.V.',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('TECNOLOGIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IMPULSORA DE PROYECTOS  (IMPRO)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROYECTOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOECHST',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('HERMES GESTION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMERICAN CLASSIC',upper(nombre))>0
GO   
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMERICAN',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANDREA BIGAUX',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANDREA BIGAUX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RODI WIENENBERGER AKTIENGESELLS CHAF.',upper(nombre))>0
GO   
update titular set tipo_perso = 'J' WHERE CHARINDEX('AKTIENGESELLS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHAF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BUTTRESS B.V.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('B.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BEOERSDPRF ALTOEMG.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('BEOERSDPRF ALTOEMG.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RL.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HELENA RUBINSTEIN',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('HARRIET HUBBARD AYER',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMITALIA CARLO ERBA S.PA.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.PA.',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. ARTHUR MATNEY',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASTA PARMA AK.',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANIBAL HOLTHENIER HAUSDORF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE DOW CHEMICAL',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHEMICAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GLAXO GROUP.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GLAXO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('GROUP',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('RICHARDSON WICKS.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('RICHARDSON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEDILINE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WALTER FRIEDMANN',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('WALTER',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOTHERM',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SIGFRIDO BURGOS FLORES',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('BLENDAX GWBH',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('GIST BROCADES V.N.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('GIST',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEJANDRO VIDAL REYES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEJANDRO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VIDAL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO GALLARDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE GALLARDO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SH.B. FULLER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FULLER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GILDA ESPINOZA CHOCANO TSCHEN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GILDA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR. OSCAR',upper(nombre))>0
GO
update titular set tipo_perso = 'j' WHERE CHARINDEX('MERCK  KGAA',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX(' "IRBE"',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('GEBRUDER STEIDINGER K.G',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('GEBRUDER STEIDINGER K.G',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('"DULCES YANELY"',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('"IRBE"',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('"TARJETAS Y MAS"',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('(GOBA) GOMEZ BARAHONA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('(GOBA) GOMEZ BARAHONA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALBERTA ULC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('4-YOU S/A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('4LIFE RESEARCH LC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A JALIL Y CIA S DE R.L.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('RESEARCH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIA S DE R.L.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('GACI, L.L.C.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('L.L.C.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A. DIEDENHOFEN KG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KG',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('A. NATTERMANN Y CIC.AMBH.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A.A.A. HONNDURAS APPAREL MANUFACTURES.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MANUFACTURES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONNDURAS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('A.B. STILLE-WERNES',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('STILLE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A.N.G',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AATREX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACATEL',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACER OMCPRPRATED',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACER',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAUL ANTONIO MONCADA CACERES',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACHA-ORBEA EGAÑA Y CIA',upper(nombre))>0
GO   
update titular set tipo_perso = 'J' WHERE CHARINDEX('TORTILLAS CATRACHAS S DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TORTILLAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S DE R.L',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('NOEL ANTONIO EHRLER MACHADO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('RODACHA AUTO POLLOS AL CARBON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RODACHA',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('AUTO',upper(nombre))>0
GO    
update titular set tipo_perso = 'N' WHERE CHARINDEX('FAUTO ANTONIO LEONARDO ENRIQUEZ',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('POLLOS',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDUARDO CASTILLO FUENTES (ESTABLECIMIENTO POLLOS POPEYE´S)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARBON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACTEL',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACTIVA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACTS MISSIONS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ACUARELA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADA ALEJANDRINA OSORIO CALDERON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADALBERTO RODRIGUEZ RODAS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ADAM OPE CG.',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADAN RAMON ZELAYA ENAMORADO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ZELAYA',upper(nombre))>0
GO   
update titular set tipo_perso = 'J' WHERE CHARINDEX('INVERSIONES ZELAYA ZALDAÑA S. DE R.L. DE C.V. ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ZELAYA INDUSTRIA MADERERA PARA EXPORTACION S. DE R.L. DE C.V. (ZINMA EXPORT)',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADEL LARACH DE KAFFIE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADELA BUESO GUERRERO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADOLFO AUGUSTO PINEDA MENDOZA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADOLFO JOSUE PEREZ RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADOLFO SIERRA ROMERO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADRIAN VELEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ADRIANA SANCHEZ MANRIQUEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DOMS ADRIAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ADRIEN RECA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('AEGIS MEDIA FRANCE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('AFLAC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AHPSA DE S R.L.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AIDA ESPERANZA DOMINGUEZ BAQUEDANO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('AIDA MARIA ZAVALA BUESO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AIR PAK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALAIN AFFLELOU FRANCHISEUR',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('AIR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARLEN PATRICIA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALAMCEN LA ROSA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALBERTO DIAZ ALVARADO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALBERTO EDWIN ADAMS',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALBERTO MARTINEZ OBADIA',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALBERTO REINIERI LAITANO CASTRO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALBERTO ROMANO HADID',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALBERTO SATO HIRATA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALBET',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALDO KENTARIO FUJIWARA SALAZAR',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEX ANTONIO MURILLO VALLECILLO',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEX GEOVANY SANTOS ALFARO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEX JAVIER MUNGUIA HERRERA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEXANDER ANTONIO HERRERA CALLEJAS',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEXIS JAVIER REYES AMAYA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEXIS LAWSON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALEXIS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALFA WASSERMANN HUNGARY KFT.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('KFT',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALFONSO ANTONIO MARROQUIN MONROY',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('MARROQUIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALFRED ROTHENSTEINER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALIANZA POR LA FAMILIA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALICIA MARIA ANDINO MEJIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALIMENTIOS MARAVILLA S..A.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('S..A.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALISSI BRONTE, S. L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX(' S. L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALL STAR C.V.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('STAR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('STAR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALLAN GERARDO BERNARDEZ GARCIA',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALLAN MAURICIO APLICANO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALLERGAN PHAMACEUTICALS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALLIANZ SE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALLIANZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALMIDONES DEL ISTMO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALONSO ARMANDO VILLEDA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALPAYA DOGAL VE KOZMETIK URUNLERI SANAYI VE TICARET A.S',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('KOZMETIK',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('SANAYI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('A.S',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALSTOM',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALUMINIO DE CENTRO AMERICA S A. DE C.V.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ALUMINIO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CENTRO AMERICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMERICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CENTRO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALVAREZ CALLEJAS FAMILY',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('FAMILY',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ALVARO ALAMINA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('AMALIA MEJIA ROBLES',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('AMANDA ROSA MEJIA MEJIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AMELIA RAMIREZ GONZALEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMERISHAM HEALTH AS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMERISHAM HEALTH AS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEALTH',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMIN HAWA SAADI',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMOR Y ESPERANZA',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMSEC ENTERPRISES L.C.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AMSEC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ENTERPRISES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANA CECILIA BOGRAN MICHER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANA ELOISA DEL CARMEN ALFARO DE MARON',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELOISA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('MARON',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANA LOURDES FERRUFINO MEJIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FERRUFINO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROMAN ALVAREZ MEJIA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANA LUCIA FREIJE MURILLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANA LUCIA NARANJO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANA MARGARINA S.D E R.L.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANA MARGARINA S.D E R.L.',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANDINO NUÑEZ SANTOS EDILIA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANDONIE DENTAL',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('HEBERTO NUÑEZ MARTINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANDREA BATES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANDREA VICTORIA HANDAL CANAHUATI',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANGELA CANALES RAMOS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('FASHION',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('FASHION',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANGELA DEL CARMEN ROMERO LEMUS',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANGELA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANGELA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LEMUS',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANGIE DIAZ RAMIREZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANHEUSER-BUSCH INBEV',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANNA CALVINO V. DE BRUNI',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANNA MELISSA PAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANNA MELISSA PAZ',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANNA NERI',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANNE PALOMA RUIZ-PICASO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANNE PALOMA RUIZ-PICASSO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANSWER IT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANSWER IT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANTOGITOS MEXICANOS # 3',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEXICANOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIA PASTOR CAMPELLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONINOS APOLINARIO ORTIZ URBINA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANTONINOS PIZZA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('PIZZA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO BENDECK BENDECK S.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO BENDECK BENDECK S.',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('BENDECK S.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO CALDERON MORAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO CANAHUATI',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO CHI HAN',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO DAVID KATTAN LARACH',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO DE JESUS ROSAS TREVIÑO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO DI MARIANA Y CARINA DI MARIANA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO KAWAS ANATACIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO ROSELLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO SALVADOR HANDAL MOURRA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO SAN MARTIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO SIMAN',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO TAVEL OTERO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONIO VICENTE JIMENES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANTONNIO F SIMAN BENEDETTO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ANUAR AFIF BOADLA HANDAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('APC HOLBINGS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('APEX SILVER MINES LDC',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('APOLINAR RODRIGUEZ SALINAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('APPETITO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('AQUAVEGA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AQUI ME VISTO YO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('AQUI SOPAS SOPAS',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('AQUILES AVILA OSORIO',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ARACEKYS DE JESUS ALVARENGA ANDINO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARAUCARIA TRADING CHILE LIMITADA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TRADING',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARBI DONUTS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ARCADIO CANALES CALDERON',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARCELORMITTAL',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARES SERANO ANSTERDAM SUCURSALE CENEVE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ARIADNA SODI MIRANDA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ARIEL LEONARDO KADYSZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARKEMA FRANCE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FRANCE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ARMANDO MENA TORRES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ARMANDO MILLA RIOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ARNOLDO J. KAFIE KAFIE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AROY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARROCERA SAN ANTONIO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARS NOVA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARS NOVA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NOVA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARTEFLORA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARTES FLORALES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARTES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARTISTIC STONE (ARTE EN PIEDRA)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARTISTIC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('STONE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARTRINE MENTRASTO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ARYHS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASI BRAND',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BRAND',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASOCIACIÓN DE DESTILADOS GRIEGOS Y BEBIDAS ESPIRITUOSAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASOCIACIÓN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASOCIATIVA CAMPESINA DE PRODUCCION ALFA Y OMEGA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASOCIATIVA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PRODUCCION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASOSIACION DE MUNICIPIOS DEL LOGO DE YOJOA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASOSIACION DE PRODUCTORES SAMARITANOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASSOCIAZIONE RADIO MARIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASTONA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASTRA AKTIEBOLAC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASTRAZENECA  AKTIEBOLAC',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ASWALDO ANTONIO QUIROZ MIRANDA (ZAPATOS IMPORTADOS DANIELA )',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AUDELIA JANNETH MAHCHI HAWIT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AURELIO NEMBRINI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AURORA, C. POR A.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AVELINA JOVEL RODRIGUEZ- EL CANARIO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AVENITS (IRELAND) LIMTED',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AVENTIS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AVENTURA S. DE. R. L. DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AVENTURA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('AVI KREISEL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AVINA STIFTUNG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AXA RE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AXCAN LTEE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('AZUCENA,S.DE R..L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('B.V LIJEMPF LEEUVARDER I J.S',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('B.V',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BACCARAT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BAKER S',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BALTIKA BREWERIES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BALTIMORE DOMINICANA C,. POR A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DOMINICANA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BANANA REPUBLIC (ITM) INIC.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPUBLIC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INIC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BANCAHSA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BANDRADE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BARCLAYS BANK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BANK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BARDINET',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BARON DE LEY, SA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BARON DE LEY, SA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BARTOLO DE JESUS GUZMAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BASF FARBEN Y FASERIN A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BASF SE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BASSANI TICINO S.PA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.PA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BAYRON JONATHAN MONTOYA BAUTISTA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BAZAR MIRIAM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BAZAR NICHITA,S.DE R.L DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.DE R.L DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BAZAR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BCP S/A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S/A',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BECKY MANZANARES DIAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BELIAM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BELIAM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BENEFICIO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BERLUTI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BERMAD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BERTELSMAN A/G',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BERTELSMANN AKTIENGELLSCHASFT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BEST OF EUROP',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BHP STEEL (JLA PTY, LIMITES)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIMITES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIC GRAPHIC EUROPE SA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EUROPE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIELEFELDER ELEHTRONIK UND APPARASTEKAU G.M  B.H',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('B.H',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('G.M',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIFA  BISKUVI VE  GIDA SANAY1 ANONIM  SIRKETI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIFA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIFA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ANONIM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIGOS LA CASA DE LAS HAMBURGUESAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CASA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIJOUX ALTESSE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIJOUX ALTESSE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BILLY F JOYA AMENDOLA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOBASAL S.GF.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TGF MACAW SOFT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOCHEMIE GESELLS HAF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOGAIA A B',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIONORICA SE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOQUINSA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIORGANON SA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOSCREEN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIOTHER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BITHERM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BIZHAN FAZELI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BLESSING',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BLIMPIE ASSOCIATES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ASSOCIATES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BLOCKBUSTER ENTERTAINMENT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BLOGMUSIK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOCKHOLD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BODEGA DON MAURI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BODEGA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BOERTO GOMEZ BOLAÑOS.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOQUITAS  FIESTAS S.  DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOQUITAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BORIS EFRAIM BARAC BRODSKY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOSQUES ATLANTIDA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BOTICA LONDON BANTZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BRASSERIES KRONENBOURG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BREITLING  Y LOGOTIPO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNDICATED GOLD DEPOSITORY Y LOGOTIPO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNDICATED GOLD DEPOSITORY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GOLD EXPORT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EXPORT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('BRENDA MARIBEL CASTEJON DE KANNE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BRUDDEN EQUIPAMENTOS LIMITADA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIMITADA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BYD Y ETIQUETA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C M Y DISEÑO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DISEÑO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C.B.F ITALIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ITALIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ITALIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C.F.E.B. SISLEY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('C.F.E.B. SISLEY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CACAHUATE GARAPIÑADO CRISTAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CRISTAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ESTALVIS 1 PENSIONS DE BARCELONA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BARCELONA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAJA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAKE TO GO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CALDARELLI GIOVANNI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALL MEDICAL REFERENCE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEDICAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALVIN KEIN TRADEMARK TRUST',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALVIN KLEIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALVIN KEIN TRADERMARK TRUST',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALVIN KEIN TRADERMARK TRUST',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CALVIN KELIN TRADERMARK TRUST',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAMARA DE TURISMO DE LA CEIBA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAMARA TRINACIONAL DE TURISMO SOSTENIBLE DE LA REGION TRIFINIO (CTTS)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TURISMO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAMPINA B..V',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAMPINA MELKUNIE B..V',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CANADA WATERS C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CANADA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CANAL 69 ALFA Y OMEGA VISION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CANAL JIMMY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CANDY BOUQUET',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARIMAÑOLAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARL LEISS.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARLA FLORES GOMEZ FIALLOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARLO DOLLERO FIGUEROA Y ARMANDO ERNESTO DOLLERO FIGUEROA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMELO RIZZO PERALTA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMEN  HANDAL MOURRA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMEN BENDECK DE HANDAL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMEN LETICIA ZAVALA IRIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMEN MARIA DANZILO CANTERO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMEN MARIA MISELEM ROMERO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMEN MARIA ZUNIGA CASTRO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMEN MARISOL UMANZOR LAINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CARMEN YAMILETH DERAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARMOTO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARNES Y DERIVADOS DEL SUR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARNES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARNITAS EXPRESS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EXPRESS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CAROLINA HERRERA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CARVEN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CASSIO FERNANDO KROTH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CASTER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CASTROL LIMITRED',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CATALINA KAFATI KAFATY  DE HANDY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CATEGA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CATIMINI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CEASR A GONZALES.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CEK DE PANAMA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('PANAMA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CELEO F RAMOS',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('CELESTINA CASTELLANOS RODRIGUEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('CELINE DION',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CEMENNTERIES',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('CENFODES',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CERRADURAS Y CANDADOS PHILLIPS, S. A DE C.V.',upper(nombre))>0
GO   
update titular set tipo_perso = 'J' WHERE CHARINDEX('CERRADURAS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CERRADURAS',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. A DE C.V.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CERRUTI 1881',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CERRUTI 1881',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CFPO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('CHADI KOURY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHAMORRO´S RESTAURANT',upper(nombre))>0
GO    
update titular set tipo_perso = 'J' WHERE CHARINDEX('RESTAURANT',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHANTELLE',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('CHARLES DAVID OF CALIFORNIA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHARLES HJUORDAN S..A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S..A',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHARM INDUSTRIE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHCR S. DE R L.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CHENGHE WANG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHER, TENNESSEE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHESEBROUGH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHIE CHI PON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHILLI-OUT (TRANQUILIZARTE)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHIRON S.R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHIVAS BROTHERS PERNOD RICARD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CHRISTIAN BERNARD DIFFUSION',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CHRISTIAN CHILDREN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CHRISTIAN DAMIAN  FLORES FIALLOS',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('CHUCRY ANDONIE REYES',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHULETAS ELVIS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIA KNITTAX ARGENTINA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIA. HERING',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIDRERIES DU CALVADOS LA FERMIERE',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('CINTHIA JACQUELINE CARBAJAL AMAYA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CINTHYA MARISOL LANDA DUBON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CIRAD',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('CLAUDEL ROUSTANG GALAC',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('CLAUDIA CAROLINA GOMEZ BROOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CLAUDIA MELINA PINEDA CHAVARRIA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('CLAUDIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CLAUSE TEZIER',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CLAUSE, TEZIER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CLAVIN KLEIN,TRADEMARK TRUST',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CLOPTISON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CREDIMAS CREDITOS PRENDARIOS S DE R L',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('S DE R L',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CREMOLETTE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CRICKET',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('CRISTIAN ANTONIO RAMOS GOMEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('CRISTIAN DANIEL ORELLANA MARQUEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('CRISTO PITSIKALIS BOURIKI',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('CSL BEHRING L.L.C',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CYBERTECH WORLDWIDE',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('D/LORENS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DAISY ZALDIVAR DE ALVAREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DALTREY FUNDING LP',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DAMARY VALLADARES RODRIGUEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DAME JEANNE CHANTEREAU,EPOUSE GOBET',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DAME JEANNE CHANTEREAU,EPOUSE GOBET',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CHANTEREAU',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANIEL BRYCE KENT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANIEL CARRANZA MENDOZA',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANIEL CERRATO LAINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANIEL GERARDO GALEANO ORTIZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANIEL GERARDO GALEANO ORTIZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANIEL HECHTER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANIEL SHUCRI KAFATI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DANIELA´S DE C.V.´ ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANIELLA MICHELLE ROSENTHAL ROSENTHAL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANIELLE VALLEE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DANILO RODRIGUEZ RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DANONE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DAPHNE PEREZ RITTENHOUSE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DARIO HUMBERTO MONTES BELOT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DARREN HRENIUK',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DARWIN FERNANDO FLORES GALDAMEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DARWIN RONEY ARANA AMAYA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DATALINKIN S.DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DATEV EG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DAVID BECKHAM',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DAVID BERNARDO FIALLOS FERNANDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DAVID JUVENTINO BARAHONA BARAHONA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DAVID YANOVICH',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DAYSI LIZETH RAMIREZ SOTO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DAYSI MARIA SIERRA MARTINEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DBA LUX 1',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DE LA CRUZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DEBRA LEE BAKER DE OLIVA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DEBRA LEE DE OLIVA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DEL MORAL, VINOS MARGOTH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DELICIA',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('DELIKATESSEN AUMALIZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DELIO QUINTANILLA RODRIGUEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DELMER URBIZO MEZA',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('DELOITTE TOUCHE TOHMATSU',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DEMAHO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DENIS DAVID FLORES VALERIANO',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('DENISE CRISTINA FLORES GONZALEZ DE AYALA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DENIVALDO GONCALVES DA SILVA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DENNIS ADOLFO ALVAREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DERIVADOS DE PLATANO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DERLY IBETH',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DERYS ANTONIO TURCIOS PINEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DESCREMADORA LA VIRTUD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DESTOÑEROA CASITA ROJA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DF',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DIACUY MESQUITA DE BERMUDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DIANA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEÑORA JANETH DIANA GOUGH DE NUÑEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DIEGO LEONIDAS RIVERA SIMON',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DIEGO VADILLO ASTURIAS',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('DIFFUCAP CHEMOBRAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DIGICEL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DIGICEL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DIMAS ANTONIO CLAROS CARDONA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DINAMICA GLOBAL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DINORA FIDELINA ALEMAN PEREZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DINORA IVETTE CERRATO VASQUEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DIOCESIS DE TRUJILLO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DIONISIO GUTIERREZ GUTIERREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DIONISIO GUTIERREZ, GUTIERREZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DIVA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DMC',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOCTOR ANTONIO ORDOÑEZ MANCERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOCTOR PISCINAS',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DOLLAR STORE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DOLOXAN',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOMINGO ROOG SOLA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DON JALAPEÑO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DONALD J. TRUMP',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('DONAS ANITA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DORIS MIRIAM NANCY CHAJTUR DE FARAJ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DORIS STALIN LEEETS CASTILLO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('DORIS STALIN LEETS CASTILLO',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('DOROTEO ORDOÑEZ TREJO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DR. CELL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR. KAERL THOMAE GESSELL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('DR. KARL THOMASL',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DRAKE KARIOTAKIS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DRAKE KARIOTAKIS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DREOGUERIA NORMAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DRIGUERIA INSERFARMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DROGERIA GRIBER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('DUVATH',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('E MERCK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('E MERK',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('E TJELLESEN  A S',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('E. DENK O.H.G.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('DENK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('O.H.G.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('E.I DU PONT DE NEMOUS AND CITY.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMCITY ',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('EARL JENEVEIN ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EARTHRISE FARMS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EASTMAN IMPEX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EATON TALE',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('EB TECNICA MEXICANA',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ECPENIHEM POLIMEPI S. R L.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ECUADOR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDA ENELDA DUARTE MATUTE',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDBIN FREDDY FOLGAR RAMIREZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('EDENRED',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDGAR ALBERTO VARGAS DE LA TORRE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDGAR ALLAN RODRIGUEZ BUSTAMANTE',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDGAR GARRIDO JARAMILLO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDGAR ORLANDO MURCIA VILLANUEVA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDGARDO ANTONIO MEJIA RAMIREZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDGARDO EFRAIN VELASQUEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDGARDO MATOMOROS LACAYO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDGARDO RAMON LARACH',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDWARD ALBERTO ANDINO MORALES',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDWARD L. VON HOHN II',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDWIN ALONSO CASTRO IRAHETA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDWIN ALONSO CASTRO IRAHETA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EDWIN ARMANDO PINEDA MADRID',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('EFRAIN H. MATAMOROS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EFRANIN H. MATAMOROS',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL BUEN VESTIR',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL CAMINO RESOURCES',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL CANARIO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL INFOGRAFISTA',upper(nombre))>0
GO  
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL LECHON',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL RECREO',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('EL REY IAS -AMA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELDA ORFILIA MEJIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ELECTROLUX ARTIEBOLGET.',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ELEGANCE ROLF OFFERGELT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ELEKTRA S,.A DE C.V.',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELENA DEL CARMEN LARACH SIWADY',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELENA MEJIA ARITA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELENA PINEDA DE PAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ELF AQUITAINE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELIA HARARI LEVI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELIS MATEO HERRERA OYUELA',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELISEO FERNANDEZ MONTUFAR',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELKAN SHARIF NASSR KAWAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELMER FIDENCIO PEREZ BERNARD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELMER FIDENCIO PEREZ BERNARD',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('ELOCTRONICA MAFO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELOINA SUAZO SOTO',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELOY SOLANO PLACENCIA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELSIE MILIAN VEGA PINEDA',upper(nombre))>0
GO 
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELSIE MILIAN VEGA PINEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELSY VALERIO CASTILLO',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELUTERIO MORENO NUÑEZ',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELVIN TERUEL FERNANDEZ',upper(nombre))>0
GO  
update titular set tipo_perso = 'N' WHERE CHARINDEX('ELY MARIA PINA AVILEZ',upper(nombre))>0
GO 
update titular set tipo_perso = 'J' WHERE CHARINDEX('EMBLEMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EMBUTIDOS DON CHORI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LACTEOS Y EMBUTIDOS JER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EMELY LAITANO DE BALLETTA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EMERSON MAURICIO VELASQUEZ BAIDE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EMILIA CATALINA MAHOMAR SIMAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EMMA GUADALUPE OYUELA RIVERA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EMP. ASO. CAMPESINA DE PROD. NUESTRA AYUDA (WON HELPKA)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EMP. ASOC.CAMP. DE PROD.FUERZAS UNIDAS FE Y ESPERANZA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EMPANADA  XPRESS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EMPANADAS XPRESS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ENA CRISTINA AVILA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ENCURTIDOS EL TORO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ENMA ARGENTINA ESCALANTE ESPINAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ENTE TUTELA VINI DI TOSCANA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ENTIDAD DE GESTION DE DERECHOS DE LOS PRODUCTORES AUDIOVISUALES (EGEDA)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GESTION',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ERICH KRAUSE FINLAND OY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ERICH RUDOLF ERNST RENDEL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ERNESTO GUERRA GARZA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ESCUELA DE NATACION ARRECIFE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ESCUELA EL SEMBRADOR DONAL HAWK (ESDH)',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ESSY FANNY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ESTACION NACIONAL DE LLANTAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ESTACION NARANJA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ESTANCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ESTANISLAO MARTINEZ MARTINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ESTEBAN XAM-MAR MANGRANE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ESTHER RODRIGUEZ FERNANDEZ DE GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ESTILO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ESTUARDO ORELLANA RAMAZZINI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ETAM',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ETHEL ROSMINDA TURCIOS BORJAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ETHYPHARM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ETI EXPLOSIVES TECNLOGIES INTER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EUFEMIO FUENTES DIAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EUGENIA MARIA RIVERA ELVIR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EULOFIO RAMIRO AMADOR DURON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EULOGIO BARRIENTOS PALADA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EURO IMPORT AND BROCKERS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EURO IMPORT AND BROKERS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EURO RSCG WORLDWIDE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EURORENT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EVENTIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EVERSON SPICE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EXCLUSIVIDADES ANDI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EXCLUSIVIDADES LA FAYETTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EXELGYN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EXEQUIEL BAQUEDANO FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EXOTIC GARDEMS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EXOTIC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('EXPORPACK',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('EYMARD ARGUELLO MANCILLA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('F.W. WOOLWORTH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FACULTAD DE MEDICINA-UNAM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FAMADITILIET',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FANY GERALDINA NIETO VALLE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FANY GERALDINA VALLE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARINTER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMADITILIET',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMATHICA S DE R,L DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMATHICA S DE R,L DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FARMATHICA S DE R,L DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FATEXA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FAUSTO MILLA NUÑEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FAYA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FCI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FEDERACION NACIONAL DE LIMALAMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FEDERATION DES SYNDICATS DES PRODUCTEURS DE CHATEAUNEUF-DU PAPE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FELIP DIONICIO GARCIA JARKIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FELIPE GOMEZ FAJARDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FELIX ANTONIO GARCIA ORTIZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FERMIN CHONG WONG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FERNANDO ELVIR AYALA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FERNANDO ELVIR AYALA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FERNANDO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SAN FERNANDO AGRO- INDUSTRIAL, S.A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SAN FERNANDO AGRO INDUSTRIAL S.A. DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INMOBILIARIA SAN FERNANDO, S.A. DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FETZER VINEYARDS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FINDUKC S.R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FIORAVANTE CARNIATO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FIORUCCI S.P .A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FIRMA CUKIERNICZA SOLIDARNOSC - ROK ZALOZENIA 1952 SP. Z.O.O.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FISIOLAX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FLEDEC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FLICKER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FLORA Y FAUNA, S.DE R,L, DE C,V,',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FLORENTINO CALDERON REYES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FLUROBLASTIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FONDATION ONE DROP',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FONDO DE POBLACION DE LAS NACIONES UNIDAS ERWIN GUILLERMO ANDERSON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FONTANA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FORTAND DE FORCE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FRANCKLIN KELYN VALLE IRIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FRANK ALDO CARUSETTA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FRANK HOMANN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FRANKLIN LOUFRANI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FRANKLIN VALERIO Y CIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FRECUENTA MEXICANA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FREDEGMAN DE JESUS REYES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FREDI ROTHENSTEINER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('FREDY MEYER GOLLE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FREEMOVE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FRESENIUS SE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FRESENIUS SE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FRIJOLITOS LICUADOS KIMBERLY GISSEL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FRUIT OF THE LOOM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FRUTIJUGOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FUNDACIÓN RIO PLÁTANO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FUNDAPA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FUNERALES LA CAMA NACIONAL S. DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FURIO ROSSI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('FUSTERY CALZADA DE TLALPAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GADYS IRIS RAMIREZ LARA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GAETANO BOVE ESPOSITO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GAETANO BOVE ESPOSITO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GALERIA EL DORADO,S. DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S. DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GANO EXCEL SND BHD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GANO EXCEL SND BHD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GANZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GARDEN HOUSE DELICATESSEN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GARDEX',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GASY MAHOMAR MORZUCA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GAULME',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GENARO DE JESUS RIVERA DIAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GEOPOST.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GEORGETOWN UNIVERSITY.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNIVERSITY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERARDO ALBERTO SIMON YERRES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERARDO ANTONIO RODRIGUEZ PEREZ.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERARDO MAURICIO RODRIGUEZ RUBIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERARDO SIMON YERRES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERARDO SIMON YERRES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERD PETRIK',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERHARD MANN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERMAN  BACA RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERMAN BACA RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERMAN HOSTILIO RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERMAN ROLANDO TREJO NORIEGA Y MARTA OLIMPIA MEJIA DE  TREJO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERSON BANEGAS RAUDALES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERTRUD JOHANNA REGALADO WEISENBLUT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GERTY BAHR FUENTES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GIAN PADILLA SUAREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GIFITI FRANZUA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GIFT TO GO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GILBERTO ARTURO EWLL RAMIREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GILBERTO ARTURO RAMIREZ.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GILBERTO ARTURO WELL RAMIREZ.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GILBERTO LARACH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GILLETTE CZECH, S.R.O.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GILLETTE ZCECH S.R.O.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GINA LIZETH ZAMBRANO BAQUEDANO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GINA MARIA GONZALEZ DOMINGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GIOVANNA LUCRECIA DICUNTA SERVELLON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GLADIZ AURORA RODRIGUEZ CASTELLANOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GLADYS ORFILIA VILLATORO ORTIZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GLENDA XIOMARA ZAVALA VIEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GLOBAL EVENTS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GLORIA ELENA GARCIA MARTINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GLORIA EMERITA MENJIVAR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GLORIA MARIA SUAZO DAVID',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GM PFAFF H.G.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GRACE BENDECK DE MAHOMAR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GRANOS Y CEREALES DE HONURAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GREEN HOUSE HARVEST',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GREENHOUSE HARVERST',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GREENHOUSE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GMG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GREGORY LILIEN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GROTTO S. P. A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GRUNENTHAL ECUATORIANA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GRUPPO LEPETIT S. P.A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GS1',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('GSI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUADALUPE MIRANDA RUBIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUALTIERO CATTARENCH',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUALTIERO RINAUDO CATTARENICH',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUALTTERO RANAUDO CATTARENCH',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUIDO ERNESTO LINARES SCARCERIEAU',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUILLERMO ALBERTO GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUILLERMO DE ALBA DE ANDA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUILLERMO DURON ULLOA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUILLERMO HORACIO PINO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUILLERMO KORN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUILLERMO MORALES HERASO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('GUY E DIXON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('H.D. HUDSON MANUFACTURIING.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('H2O PLUS,PL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HACHETTE FILIPACCHI PRESSE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HAKOOK TIRE MFG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HAMID R. MOMAYEZ ZADEH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HAVAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEBERBIOTEC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEINRICH MACK NACH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HELADERIAS MICHOACANAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HELADOS BON, C. POR A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HELADOS Y GRANITAS GRANELLI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENIE FARMA S. DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HENIE FARMA, S. DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HENRRY GEOVANNY DIAZ VASQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HENRY LIZANDRO MORALES MEZA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HERICH MACK NACHP',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HERMAN ANTONIO RAMON RUIZ GAEKEL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HERMAN AUGUSTO GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HERNAN BAQUEDANO ESTRADA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HERO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HEWLETT PACKARD ENTERPRISE DEVELOPMENT LP',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HIDROPOZOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HIELO DIAMANTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HIELO MIMO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HILTI AKTIENGELLSCHFT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HINDURAS QUIMICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HM. CLAUSE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HO, HOI MING MICHAEL.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONDUFARMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONDUFAUNA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONDUFRUTOS JESUCRISTO ES EL SEÑOR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HONDULIT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOSPIPLAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HOTDOGRILL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HOWARD GOULD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HOWARD ROSENZWEIG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HU WEN RONG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HUBBARD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HUGO ANTONIO BRICENO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HUGO DAVID BOIX',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HUGO DAVID CASTAÑO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('HUGO RAMON ERAZO M.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HUMUYA INN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HURLEY PHANTOM C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LABORATORIOS LOPEZ, S.A. DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('HUSSEIN CHALAYAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('I.L.L.V.A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IBERIA LINEAS AEREAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ICS ADVENT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IGLESEIA CATOLICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IGLO OLA B V',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('IGNACIO JOSUE GIRON RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IGT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IGUANA PICTURES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ILUMINACIÓN-X',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IMPORTADORA DINAMICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IMPORTADORA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IN-N-OUT BURGERS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IN-N-OUT BURGERS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INFARMA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('INGENIERO CRISTOBAL IRIAS DAVILA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INMOBILIARIA MACHUPICHU',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INSTALE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INTECFA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INTERCARGO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('INTERCIONAL ASOCIADA (INTERAX)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IPONE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IPSOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('IRBE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('IRIS YANETH RAMOS SOTO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('IRMA ESPERANZA MUÑOZ DE YAFFAR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('IRMA YOLANDA VALLADARES RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ISIDORA FLORES ALVAREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ISIDRO BORDAS C. POR A',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ISIDRO BORDAS, C. POR A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ISLAND SPRING WATER AND ICE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ISMAR STHEVE RECINOS BARRERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ISMELDA ATILIANA PALMA ANDRADES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ISONTYN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ITAL FOOD EAD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('IVONNE EMILIA BERTOT DE NASSER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('J M REALTY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('J. URIACH Y CIA ,S .A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JM REALTY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JM REALTY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JAC VISION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VISION',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JACLYN MARIA CAROLL SMITH RIVERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JACQUELINE ROSEMARY ORELLANA DE LETONA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JACQUES BRITT GBR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JALA LA JARRA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JAMIL RASHID MALOFF DUAJE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JAMIL RASHID MALOFF DUAJE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JAVIER EFRAIN BU SOTO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JAVIER FERRON FERRI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JAVIER MONTOYA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JAVIER ZETTER CASILLAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JAWA NARRODNI PODNIX',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN DANIEL KADADIHI AZRAK',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN DICAULIS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN DICAULIS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN PATOU',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN,HENRI,LOUIS BRU',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN-CHARLES DE CASTELBAJAC',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN-JACQUES GOUPIL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN-PIERRE CHAMORRO FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEAN-PIERRE CHAMORRO FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JEANNE C. DEMUND',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JEANNE CHATEREAU GOBET',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JEHOVA NISSI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JEMELY´S DESIGNS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JENNY MARISOL VEGA AVILA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JENNY MARISOL VEGA AVILA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JENNY OBANDO CANALES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JENNY ZELENA BENNETT MC FIELD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JENS CHRISTIAN LUARCA SWOBODA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JERRY V. MAYEUX',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JESSICA MAURINEFLEFIL ZEPEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JESUS ALBERTO OLIVEROS GAVIDEA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JESUS ANTONIO PAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JESUS DIONISIO NAVARRO VAZQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JESUS FERNANDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JIMMY ALEXANDER MARTINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JIMMY BUFFETT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JIMMY BUFFETT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JIMMY DAVID MASSO MASSO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JIMMY DAVID MASSO MASSU',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JIRI MASKA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOANNIS KEFALAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOAQUIN BRINQUIS LAHOZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOAQUIN TORRES CARCAMO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOH. A. BENCKISER.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOH. A. BENCKISERSE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHANN A. WULFING',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHN ALEXANDER RODGERS MACKAY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHN BEDOYA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHN GEORGE EDWARDS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHN KIEBITZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHN SOLOMON Y PAMELA SOLOMON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHN W REHILL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHN WALLACE REHILL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOHNNY MITRI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JONATHAN ANATOLY MOLEA MERLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JONATHAN ANATOLY MOLEA MERLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE ALBERTO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('CAFE IMPERIAL PROPIEDAD DE JORGE ALBERTO TORRES ORDOÑES.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JORGE ANTONIO BUENO GONZALEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE ANTONIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE ARMANDO MONTOYA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE ARTURO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE AUGUSTO TEJADA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE EDMUNDU MORALES DAVILA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE EMIIIO JAAR CHAIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE FIDEL DURON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE GONZALEZ OLVERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE IXBAL GUERRERO MEJIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE KAFATI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE MARIO VALENZUELA MORADEL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE MAURICIO DIAZ FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE OLANDO AÑAÑOS JERI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE RAMON VARELA AMADOR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JORGE ROLANDO AÑAÑOS JERI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOSÉ VALLDEPERAS-MORELL,',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOSUE DANIEL REYES SERRANO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOSUE DAVID ALVARENGA LANZA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JOSUE DAVID FUENTES DEL CID',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JOYAS CHARLY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JUGUERA VALLE DE ANGELES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROXANA DE LOS ANGELES CARREÑO DE FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULI PUJOL ARNAU',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIA ORTIZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIAN IMAZ VILLAR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIETTE RICA SEBBAH, VIUDA DE MR. PAUL BAUDECROUX',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIO ALBERTO MEDRANO ORELLANA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIO ALBERTO RIVERA ECHEVERRIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIO BANDY ATUAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIO PAU  NERIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIO PAU NERIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIO ROBHERTO FARRACH GALADA MARIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JULIUS CYRIL BARBER MORENO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUN CUI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUNA GILBERTO MARIN QUINTERO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUSTA EDUVIGES VARELA AMADOR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('JUSTIN PAUL CLEAVELAND GUZMAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('JUVENTUD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KAESER KOMPRESSOREN SE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KARIM ADAN FARACH NARVAEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KARIM FARACH NARVAEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KARL HERMAN BERBERRICH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KAY DACUMIT IN.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KEKKILA OY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KENLLY MAURICIO GUEVARA BARRERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KEOPS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KERACARE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KEREN JEMIMA VALLEJO ALVARENGA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KEREN JEMIMA VALLEJO ALVARENGA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KEYLA YARITZA ARGUETA FAJARDO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KILANG MAKANAN MAMEE SDN BHD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KLINGSPOR AC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PEMEX REFINACION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KLLM,NC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KLONAL S R L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KLONAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KLOSTERFRARR G M B H',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KLUTZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KODAK-PATHE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KONE OY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('KRISPY CREME',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KRIST MICHELE BERTRAND BARRIENTOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KRITER BRUT DE BRUT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KUO-SHU CHENG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('KUO-SHUO CHENG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('L REAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('L. F. MORENO HIJO Y CIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('L´ÖREAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA CASITA DEL ANTEOJO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA CATRACHITA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA GACELA, S.DER L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA GACELAS.DE R. L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA GOTA FRESCA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA PEQUEÑA JESSIE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA PIMENTERA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA PROTEINA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LA PURISSIMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LACTEOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LACTOES LAS MARIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LACTOES LAS MARIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAFARGE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAJANDRO SKOKING',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAJANDRO SKOKING',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAMB-WESTOM/MEIJER V.O.F.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAMINADOS EIRL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAND ROVER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LANIFICIO ERMEGILDO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAQBORATORIOS ROWE, C POR A.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LAREDANA PROTTI PAVODANI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LARRY DOUGLAS HAYLOCK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAS AURORAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAVAMATIC CEIBEÑO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LAVAZUL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LEATHEM S. STEARN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LEDA ALEJANDRA GONZALEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LEIRAS OY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LEONARDA BONILLA VELASQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LEONARDO BUCK IDIAQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LESBIA LETICIA MORALES DE GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LESLI DIAZ AYALA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LEVI STRAUSS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LEVI S',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LIAO YONG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIBRE EXPRESION',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LIC. BORIS BARAC',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LIC. LYSIA DIDI PAVON DE VILLAFRANCA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LIDIA RAQUEL BONILLA ATENCIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LILIA DE JESUS FAJARDO GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LILIA ILEANA CARLOTA BUSTAMANTE SINIBALDI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LILIA ILEANA CARLOTA BUSTAMANTE SINIBLADI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LINDA CAROLINA MELGHEM ARGUETA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LINDA F. POWERS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LING JUN KONG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIPHATECH',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LIRIDA JIMENEZ GUZMAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LIZATURY Y RESOLA,S .A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S .A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LLANTA BAJA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LLAO LLAO, S.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LLAO LLAO, S.L',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LLIYA PETAR ZOGOVICH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LLMC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LOBUX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('BREAD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LOREM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LOS CARRETOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LOS SUREÑOS S. DE R-L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LOTIFICADORA LAS LOMAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('LOUIS VUITTON MALLETIER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LOURDES SUYAPA MUÑOZ GUERRERO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LUCIO PAZ FERNANDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LUIGI DI GIROLAMO MALDERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('LUZ VEGA NUÑEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('M. CHRISTIAN BRETON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MACAO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MACARELA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MACK DONIE MEDINA GALLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MADAME MICHELE SYLVIE BOUCARD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MALLEN C. POR A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MANE Y CIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MANOLO BLAHNIK',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MANUAL JOSÉ LIS-ARIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MANUAL OCTAVIO SUAZO URQUIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MANUFACTURE DE CAOUTCHOUC MICHELIM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MAPED',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARAMBIO CASTAÑO,PAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARC BOHBOT Y MICHELE BOHBOT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MARCA FIGURATIVA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARCEL GIUDICELLI PIÑERES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARCELA BEATRIZ ARANCIBIA BARRIOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARCELA DIAZ PEREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARCELA LOBO MARTINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARCELO BAEZ ALBAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARCELO FIGUEROA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MARCH OF DIMES FOUNDATION',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARCUS MARTIN DE PAZJAENIKE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARCUS MARTIN DE PAZJAENIKE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA   AUXILIADORA   GIRON MOYA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA ANA DE JESUS MEJIA OSORIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA ANDONIE BENDECK .',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA AURORA GUERRA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA BENIGNA ALVARADO VILLANUEVA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA BOIX GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA CRISTINA CHANDIAS GALE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA DE JESUS MARTINEZ RIOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA DE JESUS MEDINA P.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA DEL CARMEN PINEDA JUAREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA DEL TRANSITO FERNANDEZ CRUZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA ELENA SUAZO MATUTE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA EUGENIA RUIZ BURGOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA EVA CARRANZA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA INES MORETT ASCENCIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA LAURA GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA LEONOR DE KAWAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA LIZETH RUIZ PAVON DE CRUZ "MARIANA`S"',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA LUCRECIA RAMOS DIAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA MARCELA DOX VELASQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA MARTHA GOMEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA PIA SYLVIE SELVA ANDRIEUX',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIA VICTORIA LLISO ROIG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIANA CELENA RAMIRES DE FERRER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIBEL CASTRO DE REICHLE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIBEL LIEBERMAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARICRUZ PAREDES MEJIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARINA RAMOS ALVAREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MARINOS´S PESCADERIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO ANTONIO CALIX ORELLANA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO ANTONIO ROBLES CANAHUI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO CALIX  ORELLANA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO CALIX ORELLANA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO DAVID ANTONIO GARCIA VELASQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO DAVID GARCIA VELASQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO DE JESUS PINEDA MENCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO GODOY TOLEDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO LEONEL RAMOS MENDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO LEONEL VASQUEZ GONZALES.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO PFAEFFKE MARIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARIO PFAEFFLE MARI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARLEN TUCHE BENDECK',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARLON DAVID OCHOA MARTINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARLON EDGARDO MONTES MOLINA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARLON NOEL NUÑEZ GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARRIO GUILLERMO BELOT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARTA GONZALEZ JIMENEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MARTELL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARTHA ANTONIA SUAZO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARTHA CANAHUATI LARACH',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARTHA LORENA BONILLA DUBON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARTIN ARNOLDO CRUZ FAJARDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARTIN EDGER SOLIS STANLEY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARTIN GIOVANI MEJIA PAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARTIN QUAN RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARVIN JOEL RIVAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARVIN SILVA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARVIN THE MARTIAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MARY MURZANSKI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MAST-JÄGERMEISTER SE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MATER DEI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MATER DEL DE MEDICINA INTEGRAL PARA LA MUJER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MATHEW  KODATH.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MAURICIO INTERIANO ORELLANA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MAURICIO RODEZNO FUENTES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MAURICIO VARGAS FIGUEROA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MAVIN AQUILES RODRIGUEZ MARTINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MAYDAY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MAYO FOUNDATION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MECAIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MECCANO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MEDARDO EFRAIN RIVERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MEDARDO EFRAIN RIVERA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEDIFARMA C POR A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEDITEC',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MEI-TING LEE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MEIJI SEIKA KAISHA, TD.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MELROSE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MELVIN J. HINDS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MENA Y CIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MENARINI,S A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNIPHARM,S A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNIPHARM,S A.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MENDES Y REYES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MENDES Y REYES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCADITO LA UNION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCADITO LA UNION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCADITO LOMAS DEL SUR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCADITO RAYMAND',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCADO Y MONEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCADO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MERCEDES BEATRIS RAUDALES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MERCEDES SUYAPA AYALA ALVARENGA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCUR S / A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERCUR S / A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MERIAL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MERLIN YANETH ERAZO ORELLANA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MERLIN YANETH ERAZO ORELLANA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MHCS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MI ESPERANZA LINEA DE LUJO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MICHAEL L. TEITELBAUM',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MICHAEL WITTRY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MICHELLE GIURDANELLA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MICROSYS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MICROWAREHOUSE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MIEL PAVAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MIELES LA OBRERITA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MIELES LA OBRERITA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MIKHAIL BARYSHNIKOV',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MINA F. MAHOMAR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MINIMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MINISTERIO UN NUEVO AMANECER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MIRIAM ESTHER GARCIA MORALES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MIRIAM JEANNETTE FLORES MORALES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MIRIAN MARTINEZ DE ANDARA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MIRIMONDE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MIRNA BELINDA MIDENCE GALDAMEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MIRNA JULIETTE ANDINO VILLATORO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MIROSLAV CUCULIZA ORNA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MISION DE LA ORDEN DEL AQUARIUS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MISS EDNA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MODESTO EDILBERTO ERAZO BARDALES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MODESTO UBREU PEÑA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MODESTO URREA PEÑA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MOGENS ERICKSEN JENSEN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MOHAMED ALI YASSIN YASSIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MOISES ALVARENGA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MOISES GARZON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MOISES RODRIGUEZ FERNANDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MOKHTAR MRASSLI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MOLINO ROJO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MOLINOS VALLE DEL CIBAO, C. POR A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MOM',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MONICA RAQUEL PEDEMONTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MONTECATINI EDISON S,P.A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MOPITOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MORGAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MOTHERS POLISHES WAXES CLEANERS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MOTO TECNICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MOTOKAR S, DE R, L,',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MOZILLA FOUNDATION',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MR. RANDOLPH LEONARD SPENCER CHURCHILL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MR. STÉFHANE CREMIEUX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MUEBLES DEL GLOBO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MULTI THEMATIQUES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MULTISERVICIO M.S.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MUNDIPLASTIC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MUNDO DENTAL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('MUNIR EDDY CHAHIN YACAMAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('MUSEO DEL JAMON S. A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('N. V. ORGANON.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NANCY MARITZA MACHEDO DERAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NAOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NAPOLEON MONTES MATUTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NASHVILLE SCHOOL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NATALIA BORDA BUENO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NATAN MADRID MOREL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NATIVIDAD MAYA HERRERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NATIVIDAD MOYA HERRARA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NATIVIDAD MOYA HERRERA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NBA PROPERTIES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NEFTALI ORDOÑEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NEKTAR THERAPEUTICS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NELLY ARGENTINA GODOY BARAHONA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NELSON YOVANI MEDINA PUERTO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NELSON ZACARIAS BENDECK ACEVEDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NEPTALI MEDINA CRUZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NEPTUNE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NESTLE WATERS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NESTOR JESUS PLASENCIA FERNANDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NESTOR PLASENCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NESTOR PLASENCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NETHERBY LIMITE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NETO WALDIR RANGEL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NEWMAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NEXANS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NG AH CHOON NAC DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NICHOLAS SHEA CAREY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NIGHT SPICE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NILO GENARO PONCE GUEVARA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NINA RICCI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NOCSIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NOE OMAR ANDERSON OLIVA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NOE ORLANDO GONZALES REYES Y JAVIER ANTONIO REVELO OLMEDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NOE ORLANDO GONZALEZ REYES Y JAVIER ANTONIO REVELO OLMEDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NOEL J. VILLAFRANCA M.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NOHEMI ARGUIJO RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NOLVIA ESPERANZA GUIFARRO FINO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NOREVA LED',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NORIT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NORIT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NORMA IRMA PRADO DE RIVERA (VER REVERSO)',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NORMA ONDINA HERNADEZ DE LEIZELAR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NORMAN BRIDWLL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NORMAN VLADIMIR RODRIGUEZ PAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('NOUR DANIELA KAFATI M',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NUEVA ESPERANZA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('NUKLEO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OAO "TMK"',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ODALYS MARINA CRUZ GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ODIN ALBERTO GUILLEN LEIVA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OFFICE HOME',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OGUL JOYERIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OLD BRIDGE CELLARS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OLGA GEORGINA PAVON ERAZO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OLMAN RIMOLA CASTILLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OMAR ALBERTO RODRIGUEZ CUELLAR (GTE MUNDO VIRTUAL)',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OMAR CLAROS CARIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OMAR ORLANDO ORTEZ RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OMER TUZLACI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OMNI PHARM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ONDULINE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OPTICA DEL AHORRO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OPTICA ELEGANCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OPTICA LUX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OPUS ONE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ORDEN CRISTO REY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ORFEVRERIE CHRISTOFLE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ORFILIA FLORES ANDINO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ORFILIA FLORES ANDINO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ORGANIZACION ALTEX S.C.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ORGANIZACION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ORGANIZACION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ORION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ORO Y METALES PRECIOSOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR ARMANDO DUBON VARGAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR ARTURO ZIRI ZUNIGA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR DARILLO VALLE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR DARIO VALLE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR MONTEALEGRE ZEPEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR PERALTA NAVARRETE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR PORTILLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR ROLANDO ULLOA REYES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR VILLA ROJAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSCAR WILFREDO DIAZ CRUZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSEAS VALLADARES FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('OST-DEVELOPPEMENT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('OSWALDO ANTONIO QUIROZ MIRANDA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('P T MASPION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('P. FERRERO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('P.N.GEROLYMATOS AEBE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('P.T. SELAMAT SEMPURNA, TBK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('P.T. WINGS SURYA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PA PA CHACALIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PA-PA CHACALIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PACIFIC CREATION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PAL NARDNI PRDNIK.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PANDA PATUCA POWER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PANES Y MAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PANES Y MAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PANIFICADORA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PAOLO DICUNTA BERLIOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PAPA DOG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PAPA DOG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PAPELERIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARFUMES CHRISTIAN DIOR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARGUMS JEAN DESPREZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARMIN INDUSTRIE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PARRILLAS Y BOMPERS NUEVA YORK, S. DE R Y C V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PASTELERIA MIRIAM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PASTIFICIO HONDUREÑO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PATRICK KHAYAT',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PAUL NAPOLEON BAERLOCHER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PAUL O. LAWTON Y CIA S DE R. L',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PAULA BORDIGONI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PAULINA MONCKEBERG BRUNER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PAYLESS SHOESOURCE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PEMEX-REFINACION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PENCLAN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PEPINILLO Y JALAPEÑO ERICK´S',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PER  K. REICHBORN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PERFECT ENGLISH SCHOOL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PERMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PERNOD RICARD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PERSIS MIROSLAVA SEVILLA BARAHONA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PEST SHOP PETLAND',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PETARHO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PETER JOSHUA JURKA WOLFE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PETIT BATEAU',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PETROGAS.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PETROLIAM NASIONAL BERHAD (PETRONAS)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PFIZER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHARAMVIT RT.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PHARMOCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PHILIPPE GERARD CANDOLFI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PICK SZEGED SZALAMIGYAR ES HUSUZEM ZRT.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PIERE CARDIN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PIERRE ANDRE SENIZERGUES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PIERRE CULIFORD ALIAS PELLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PIERRE CULLIFORDE DE ALIAS PELLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PIERRE D. MITRI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PIERRE-CULIFORD ALLIED PELLO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PISOS Y TECHADOS TORGINOL C. POR A .',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PISOS Y TECHADOS TORGINOL, C. POR A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PIVNI BNENSKA STROJIRNA ZAVODY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PLANTA DE TRATAMIENTO DE MADERA BUFALO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PLANTA PURIFICADORA Y EMBOTRLLADORA DIECK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POLLO " GOOL "',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POLLO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POLMOS ZYRARDOW SP. ZO. O.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POLY TUBO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POMMERY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PONTIFICIA UNIVERSIDAD CATOLICA DE CHILE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PONTIFICIA UNIVERSIDAD CATOLICA DE CHILE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POPEYE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PORON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('POWER ZONE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PREFERRED GUEST, ING',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PRICE CHARITIES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PRIMAVERA MANUFACTORING',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PRISCA DALILA ORALES RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('PRISCA DALILA ORALES RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PRODESOYA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROFESIONALES EN ACCION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROFESSIONALS-GYM FITNESS (PRO-GYM FITNESS)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROLIRA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROMOD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PROYECTO ALDEA GLOBAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PT. INDUSTRI KARET DELI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PT. YUPI INDO JELLY GUM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PURATOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PURIFICADORA AQUA SUR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PURIFICADORA FUENTES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PURIFICADORA FUENTES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PURIFICADORA FUENTES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PWC BUSINES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PWC BUSINNESS TRUS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('PWC BUSSINESS TRUST',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('QUALFON S.C.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('QUESERA CHAVEZ-VALLE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('QUESOS CATACAMAS NUMERO DOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('QUESOS CATACAMAS NUMERO DOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('QUIMICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RACHID MAALOUF MAALOUF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RADIO ORIENTAL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAFEL HERNAN LOZANO URQUIJO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RAFFY SOULAHIAN',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAKESH PRAVICHANDRA PATEL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAMIN TOVFIGH RAFII',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAMON ARIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAMON ARMENGOL VILA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAMON ARNALDO VALENZUELA DUARTE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAMÓN ARNALDO VALENZUELA DUARTE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAMON ERASMO ORELLANA PAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAMON ERNESTO GONZALEZ GINER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAMON GERARDO BENAVIDES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAUFF ANTONIO HANDAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RAVINTORAISIO OY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RAYMOND F. MAALOUF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RAZON DIMINS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RBC MINISTRIES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RECICLAJE EL DIAMAMNTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RECICLAJE EL DIAMAMNTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RECKITT BENCKISER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RED DE EBANISTAS DEL VALLE DE SENSENTI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REDUCDYN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REEMTSMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REFRIGERACAO PARANA S-A-',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REFRIGERACAO PARANA S-A-',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('REGINA LIZETH RAMOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('REGINALDO PANTING PEÑATE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPRENTACIONES LUNIVER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPRESENTACIONNES HANNDAL S DE RL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPUBICA DE CUBA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPUESTOS ESPRWESOS, IDENTIFICADOS POR LAS SIGLAS "REX"',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('REPUESTOS EXPRESOS IDENTIFICADO POR LA SIGLA REX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RESERVOIR TEAM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RETO FITNESS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('REYNA YAMILETH ROMERO FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('REYNA LILIANA DOMINGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('REYNALDO DAVID PINEDA MIDENCE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('REYNALDO DAVID PINEDA MIDENCE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RHODIA OPERATIONS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RHONE-POULENC CHIMIE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RHONE-POULENC NUTITION ANIMALE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RICA AREPA C.A .',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICARDO  ERNESTO WAUTHION JIMENEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICARDO ADAN BONILLA REYES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICARDO ANTONIO ALVAREZ ARIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICARDO ARTURO FUENTES MEDINA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICARDO ARTURO OCHOA MADRID',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICARDO ARTURO OCHOA MADRID',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICARDO GANDARELA MARTINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICARDO JORGE JAAR LARACH',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICARDO VALENCIA DEL TORO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RICHARD FRANCIS ROBERTS GOMEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RICHTER GEDEON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RIGAM',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RIGOBERTO DUARTE RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RIGOBERTO MURILLO RIVERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RINA CALLEJAS DE GUILLEN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RIO SUR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('RIVERA Y CIA.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROAL OY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERT GROENEVELD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERT JAN VAN DER WEG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERT MILLARD ROWE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERT SUNG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROBERT VAN DER WEG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RODRIGO GARCIA CASTAÑEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROGER ANTONIO CRUZ RUBIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROGER ANTONIO OSORTO MARTINEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROGER OMAR ESCALANTE HERRERA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROLANDO ARAUZ TURCIOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROLANDO JAVIER MAHOMAR JACIR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROMMY CRISTINA MIDENCE VILLALOBOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROMULO VALERIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RONALD BALMORE PEÑA PORTILLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RONALDO ALBERTO GODOY MONTES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RONNY YUSHAN MURILLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RONY ARIEL GOMEZ CASTILLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RONY DAVID VALLE RAUSCHER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RONY EFRAIN PORTILLO BANEGAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROOSTER BURGER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROOSTER S DE RL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROOSTER S. DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROQUE JACINTO PINEDA BONILLA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROSEL HYLTON CHAVARRIA CASTELLANOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROSINDA DE BAIDE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROSQUI - MAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROSQUILLAS ANGELICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROSQUILLAS DE ORIENTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROSQUILLAS MARIA   (MARIA NATIVIDAD GODOY VASQUEZ)',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROSY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROUSSEEL UCLAF',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROXANA CAROLINA TORRES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROY ARTURO PADGETT MAYR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ROY GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ROYAL BUSINESS MACHINES, IND.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RUDY ANTONIO MAZA APARICIO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RUDY OMAR CHAVEZ ARIAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RUSSELL G. WEINER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RUTILIO ORTEZ FUENTES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('RUTILIO ORTIZ FUENTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S.C.M. CROPORATION.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCANIA AKTIEBOLOG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCANIA AKTIEBOLOG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SCARLETH WALESKA NUÑEZ ORDOÑEZ O IMPRESION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHERRER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHULIM DICKERMAN KRAUNIK',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCHULZ  S / A',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCIOS IN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SCRATCH DESIGNS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEDD IBRAHIM MANSOUR HAMMAD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEDD IBRAHIN MANNSOUR HAMMAD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEDD IBRAHIN MANSOUR HAMMAD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SEED IBRAHIN MANSOUR HAMMAD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEIDENSTICKER GBR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEMILAS DE PAPALOTLA S. A . DE C. V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SENOFI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEÑOR TENEDOR Y LOGO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEPHORA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SERAFIN SERRANO PORTILLO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SERGE STEVENS Y JANE MAUGENDRE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SERGIO ALBERTO HANDAL FARAJ.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SERGIO ERICK GUEVARA PINTO  (PERSONA NATURAL)',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SERGIO LOVBO GRANADOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SERGIO PLATONOFF MANZANARES Y CATALINA PLATONOFF MANZANARES DE MENDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SERGIO RAUDALES NAVARRO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SERGIO RICARDO DIAZ FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SERGIO RICARDO DIAZ FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SERVI-FOOD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SERVI-FOOD',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SERVIMED',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SERVIMUNDO INTL.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SETECMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEVEN ELEVEN MARKET',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEVEN ELEVEN Ó 7 ELEVEN MARKET',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEVEN FOR ALL MANKIND',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEXY GIRL S .R. L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SEXY GIRL S .R. L.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SHANGAI FOREVER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SHANTHA BIOTECHNICS LIMETED (ORGANIZADA BAJO LAS LEYES DE INDIA)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SHARO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SHINGKAK KANG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SHIRLEY IVONNE TERCERO FERNANDEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SIC SE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SIEMPRE UNIDOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SILVIA CAROLINA BECERRA CRUZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SILVIA CAROLINA BECERRA CRUZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SILVIA DINORA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SILVIA DINORA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SIVIA DINORA VERDIAL DE MUNGUIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SKYBEEP',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SLY PURE GLACIAL WATER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SM - MAID GROWERS OF CALIFORNIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOBRANCELHAS DESIGN PARTICIPAÇÕES EIRELI - ME',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SODIAAL INDUSTRIE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SODILAC',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SOFIA VERGARA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOL  VIVIENTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOL VIVIENTE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOLUCION LOGICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOLUCIONES INTEGRALES PARA EDIFICIOS E INTERIORES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOLUXURY HMC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOLVAY DUPHAR B V',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOLVAY DUPHAR B,V.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SONIA DEL CARMEN RODRIGUEZ PONCE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SONIA IVETTE HASBUN BASIL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOS KINDERDORF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SONOFI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SOS KINDEROLORP',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SPBI',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SPONTEX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SPRINGMEASURE AND INSTALL L.P',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR ELVIRO ROSORI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR GUY PETIBON Y LA SRA YVONE SIEBER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR JAMIL RASHCHID MALOFF DUAJE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR REYNALDO BORJAS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR RONALD E LANTZER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. ANTONIO RIVERO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. GIAN PIETRO MORANDINI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. GIAN PIETRO MORANDINI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. GUY MAYER',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. JORGE F. SIRRWADY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. OMAR FAJARDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SR. REYNALDO BORJAS S.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SRA SOFIA GUILLEN ESPINAL DE LIZANO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SRA, ADELA MOLOFF DUAJE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('STEPHANE CREMIEUX',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('STEVE ZALAC',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('STICHTING BDO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('STICHTING DE WAAL FOUNDATION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('STIFTELSEN REACH FOR CHANGE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('STOKELY-VAN CAMP',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUAVILAX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUN CERAMICAS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUN MAID GROWERS OF CALIFORNIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUN MAID RAISING GROWERS OF CALIFORNIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUN MARK (GULF) JLT.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUPER JUGOS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUPER MARKET JUNIOR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SURTIDORA DE VIVERES LA PREFERIDA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SURTIDORA LEMPIRA S. E RL DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUYAPA VASQUEZ Y RUDY TOMAS FLORES.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SUYAPA VASQUEZ Y RUDY TOMAS FLORES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SWEETS CAKE SHOPPE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('SYBIL ANEY LEON ENAMORADO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNDICAT DE DEFENSE DE  1´AOC POMMARD ET POMMARD 1 ER CRU',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNDICAT DES BOURGOGNES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNDICAT DES PRODUCTEURS DE CALVADOS ET D´EAU-DE-VIE DE CIDRE DE NORMANDINE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNDICAT DES VINS DE PAYS DU VAL DE LOIRE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNDICAT INTERPROFESSIONNEL DE DEFENSE DU BRIE DE MEAUX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('SYNDICAT INTERPROFESSIONNEL DU REBLOCHON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TALENTS MODELS" S DE R. L. DE C. V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TALENTS MODELS" S DE R. L. DE C. V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TALETS MODELS" S DE R. L. DE C. V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TALLERES PALMA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TAMAÑO RELLENO Y FIGURA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TAQUERIA EBENEZER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TAQUERIA MI CASITA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TATRA, A. S.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TAURUS GUMÜPARI VALLALAT',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TBS PRODUCT.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TECNIFORMS, S. DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TED LAPIDUS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TEFAL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TELGUA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TELMA ARELI RODRIGUEZ PINEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TENESSE GAS PIPELINE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TEODOSIO CARDENAS FUNEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE BULL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE EDUCATION STATION, S, DE R,L. DE C.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE FOUNDATION FOR BETTER LIFE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE GOODYEAR TIRE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE GRILL MARKET',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE LINUX FOUNDATION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE ONE CAMPAIGN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE QUAKER DATS CAMPANY.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE SINGER MANUFACTURING',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE STATE ACADEMIC BOLSHOI  THEATRE OF RUSSIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THE TINKEN ROLLER BEARING C.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THERMOS L.L.C',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THF EQUITIES, LP',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('THOMAS C. WHITTAKER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THOMSON REUTERS  GLOBAL RESOURCES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THOMSON-CSF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THOMSON-SCF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('THOMSON-SCF',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TIENDA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TIFFANY PAMELA MINERA BEJARANO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TIRZA MIREYA PINEDA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TITO ESTRADA AMADOR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TITO MARIO DI STEFANO CAPOCEFALO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TITULAR DE PRUEBA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TODD SEAN MURRAY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TOMAS ANTONIO RAMIREZ MARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TOMMASO VALLUNGA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TORRES FIALLOS Y CIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TORTILLA DE HARINA CHINACLA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TORTILLA DE HARINA CHINACLA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TORTILLERIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TRES FAMILIA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TRINITY BILINGUAL SCHOOL',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TROPICAL DE-LITE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TROPILECHE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TROY ANTHONY RAMOS GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TUGENTMAN LIPSZYC, DANIEL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('TULIO ARNALDO BUESO JACQUIER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TURS OPERADOR EL MANA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TWENTHIETH CENTURY FOX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TWENTIETH CENTURU FOX FILM',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('TWISTER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UGLESIA CATOLICA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ULTRAPURA S. DE R.L DEC.V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNIMER',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNION Y EFUERZO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNIVAR N..V.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNIVELER.N.U.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNIVERSIDAD TECNOLOGICA (UNITEC ),',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('UNIVERSIDAD TECNOLOGICA (UNITED)',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('URANTIA FOUNDATION',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('URBANIZACIONES GUIFARRO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('USINES METALURGIQUES DE VALLOBE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('USINES METALURGIQUES DE VALLOBE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VALERIE KESTENBAUM PAREDES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VALLE REDONDO S, A, DE C, V,',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VALLE REDONDO S, A, DE C, V,',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VARIEDADES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VARLEPIC PARTICIPATIONS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VEGAS LEASING',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VELIA JANET ALEMAN ARGUELLES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VENTAS MULTIPLES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VERALON',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VIA VENETO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VIC - MARZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICENTE MEJIA RODEZNO - CARIBEAN NONI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICENTE POLICARPO GARCIA BUCHAR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR HUGO AVILA RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR HUGO FUNEZ VASQUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR JAVIER GALO RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR KURI ZAIED',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR KURY Y ZAIED',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR KURY ZAID',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR KURY ZAIGO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR MANNUEL VENEGAS WAI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR MARTIN YUJA BARJUM',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VICTOR VENEGAS WAI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('S BOUTIQUE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('S SECRET',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VIDEO FILMS, C. POR A.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VILLA  DI  ORO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VILLA ELY',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VILLA MARE S. DE R.L',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VILLAS DEL VALLE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VILMA CANAHUATI DE LARACH',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VILMORIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VINOS DOÑA TANCHO',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VINOS OPALACA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VINOTECA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VIRGILIO UMANZOR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VITECFA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VITTORIO OLIVIERI B.',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('VIVENDI',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('VIVIAN MARIA GUZMAN QUIROA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WACKER NEUSON SE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WAIMIN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WAL-MART STORES ICN.',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WALESKA SUYAPA SERRANO TORRES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WEBZERO S. DE R,L,',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WEIDE TANG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WELLA AKTIEGESELLS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WEST POINT PEPPERELL',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WILFREDO CASTRO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WILFREDO EDGARDO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WILFREDO IRIAS CASTELLANOS',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WILLIAM DE JESUS VELEZ SIERRA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WILLIAM DONALD DOWNING',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WILLIAM HERBERT KIVETT WILSON',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WILLIAN FLORES TORRES',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WILLY',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WINSTON EURIPIDES PORTILLO VARELA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('WOLFRAN GILBERTO MEJIA PAZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WPP PROPERTIES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('WWF-WORLD WIDE FUND FOR NATURE (FORMERLY WORLD  WILDLIFE FUND)',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('XIOMARA JASSMIN MOLINA RODRIGUEZ',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('XNEAR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('Y.E.S. YOUR ENGLISH SCHOOL (TU ESCUELA DE INGLES)',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YA-NING CHENG',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YAMIL ALBERTO ATALA GUZMAR',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YAMILETH ARELY MARTINEZ MELARA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YAU KAM WAH',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YEAD MANSOUR HAMMAD',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YESELIA YAMILETH SUAZO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YOEL LORENZO GARCIA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YONI LINAREZ BAQUIS',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('YOPLAIT MARQUES',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('YOUNG LIFE',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('YSL BEAUTE',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('YUAN ZHONG HUANG',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ZAPF CREATIÓN',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ZENECA LOMITED',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ZENECA LOMITED',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ZENEYDA  EUDOMILIA  TORRES TEJEDA DE MEZA',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ZENEYDA TORRES TEJEDA DE MEZA',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ZIP EL PORVENIR',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('ZITRO IP, S.ÀR.L',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ZOU JI HAO',upper(nombre))>0
GO
update titular set tipo_perso = 'N' WHERE CHARINDEX('ZOU JI HAO',upper(nombre))>0
GO
update titular
set nombre='Sin nombre'
where nombre='KKKKKKKKKKKKKKKK'
GO
update titular
set nombre='Sin nombre'
where nombre=''
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('Sin nombre',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('XXXX',upper(nombre))>0
GO
update titular set tipo_perso = 'J' WHERE CHARINDEX('XXX',upper(nombre))>0
GO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- CORRECCION DEL CAMPO FECHA DE LA TABLA PRIORIDA
--select nro_solici,fecha from priorida
--where DAY(fecha)>31 or MONTH(fecha)>12 or YEAR (fecha)>9999 or YEAR(fecha)<1752
--GO
UPDATE priorida
SET fecha='1961-02-21'
WHERE nro_solici='2000005796' AND fecha='1661-02-21'
GO
UPDATE priorida
SET fecha='1962-12-10'
WHERE nro_solici='2007014671' AND fecha='0062-12-10'
GO
UPDATE priorida
SET fecha='2000-09-15'
WHERE nro_solici='2010001955' AND fecha='0200-09-15'
GO
UPDATE priorida
SET fecha='2001-07-27'
WHERE nro_solici='2011003074' AND fecha='0201-07-27'
GO
UPDATE priorida
SET fecha='2001-12-16'
WHERE nro_solici='2012020368' AND fecha='0201-12-16'
GO
UPDATE priorida
SET fecha='2001-03-30'
WHERE nro_solici='2012034005' AND fecha='0201-03-30'
GO
UPDATE priorida
SET fecha='2013-03-15'
WHERE nro_solici='2013017869' AND fecha='1320-03-15'
GO
UPDATE priorida
SET fecha='2013-03-15'
WHERE nro_solici='2013017869' AND fecha='1320-03-15'
GO
UPDATE priorida
SET fecha='2001-08-28'
WHERE nro_solici='2015007757' AND fecha='0201-08-28'
GO
UPDATE priorida
SET fecha='2015-08-28'
WHERE nro_solici='2015044857' AND fecha='0215-05-28'
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--UPDATE DEL CAMPO HORA EN LA TABLA MOVIMI

--SELECT nro_solici,hora,SUBSTRING(hora, 1, 2)+':'+SUBSTRING(hora, 3,
  --2)+':'+ SUBSTRING(hora, 5, 2) 
  --FROM movimi
  --WHERE SUBSTRING(hora, 1, 2)>24 OR SUBSTRING(hora, 3,2)>60 OR SUBSTRING(hora, 5, 2)>60 
  --GO
  
  UPDATE movimi
  SET hora=REPLACE(hora,'030799','150730')
  Where hora= '030799'and nro_solici='1900047838'   
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'160168','160138')
  Where hora= '160168'and nro_solici='1900029142'   
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'160168','160138')
  Where hora= '160168'and nro_solici='1900024366'   
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'124765','124752')
  Where hora= '124765'and nro_solici='1900013639' 
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'014265','134230')
  Where hora= '014265'and nro_solici='1900013976' 
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'011075','131040')
  Where hora= '011075'and nro_solici='1900023851' 
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125465','125410')
  Where hora= '125465'and nro_solici='1900014114' 
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'011565','131612')
  Where hora= '011565'and nro_solici='1900013953' 
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125565','125512')
  Where hora= '125565'and nro_solici='1900014116' 
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 92297','092230')
  Where hora= ' 92297'and nro_solici='1900016658' 
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125565','125530')
  Where hora= '125565'and nro_solici='1900014117' 
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031099','151021')
  Where hora= '031099'and nro_solici='1900023714' 
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'115561','115520')
  Where hora= '115561'and nro_solici='1900026649'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'115561','115520')
  Where hora= '115561'and nro_solici='1900026649'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 22197','142130')
  Where hora= ' 22197'and nro_solici='1900049374'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 13697','133630')
  Where hora= ' 13697'and nro_solici='1992003277'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'123861','123815')
  Where hora= '123861'and nro_solici='1900023100'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'114574','114520')
  Where hora= '114574'and nro_solici='1900015070'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125190','125132')
  Where hora= '125190'and nro_solici='1900025145'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125190','125132')
  Where hora= '125190'and nro_solici='1900025145'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125190','125132')
  Where hora= '125190'and nro_solici='1900025145'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'014096','134030')
  Where hora= '014096'and nro_solici='1900044113'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 13497','131412')
  Where hora= ' 13497'and nro_solici='1900048434'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 103365','103345')
  Where hora= '103365'and nro_solici='1900047423'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'103365','103345')
  Where hora= '103365'and nro_solici='1900047423'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'103775','103728')
  Where hora= '103775'and nro_solici='1900047923'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'030699','150610')
  Where hora= '030699'and nro_solici='1900047297'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031475','151420')
  Where hora= '031475'and nro_solici='1900048435'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'015865','135841')
  Where hora= '015865'and nro_solici='1900023590'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125365','125310')
  Where hora= '125365'and nro_solici='1900013971'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'040065','160152')
  Where hora= '040065'and nro_solici='1900047538'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'082628','082614')
  Where hora= '082628'and nro_solici='1900053067'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'140790','140725')
  Where hora= '140790'and nro_solici='1900019409'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031299','151241')
  Where hora= '031299'and nro_solici='1900047843'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'030499','150412')
  Where hora= '030499'and nro_solici='1900047298'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031475','031452')
  Where hora= '031475'and nro_solici='1900048428'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031475','151445')
  Where hora= '031475'and nro_solici='1900048427'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'015599','135541')
  Where hora= '015599'and nro_solici='1900047851'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'040065','140141')
  Where hora= '040065'and nro_solici='1900013945'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'110661','110651')
  Where hora= '110661'and nro_solici='1900049362'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125565','125530')
  Where hora= '125565'and nro_solici='1900014122'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'110561','110530')
  Where hora= '110561'and nro_solici='1900053415'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'014096','134025')
  Where hora= '014096'and nro_solici='1900043727'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'015265','135210')
  Where hora= '015265'and nro_solici='1900014059'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'122997','122930')
  Where hora= '122997'and nro_solici='1900023342'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'030799','150712')
  Where hora= '030799'and nro_solici='1900047839'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'030799','150712')
  Where hora= '030799'and nro_solici='1900047839'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031099','151025')
  Where hora= '031099'and nro_solici='1900023715'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 25597','145512')
  Where hora= ' 25597'and nro_solici='1900046930'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'150990','150910')
  Where hora= '150990'and nro_solici='1900047155'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'014265','134231')
  Where hora= '014265'and nro_solici='1900013883'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 15597','135534')
  Where hora= ' 15597'and nro_solici='1900047955'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'105961','105910')
  Where hora= '105961'and nro_solici='1900048932'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'113597','113551')
  Where hora= '113597'and nro_solici='1900026207'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 82397','082351')
  Where hora= ' 82397'and nro_solici='1900048445'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'014096','134025')
  Where hora= '014096'and nro_solici='1900044114'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'040099','040130')
  Where hora= '040099'and nro_solici='1900048608'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 13597','133510')
  Where hora= ' 13597'and nro_solici='1900048505'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'023396','143314')
  Where hora= '023396'and nro_solici='1900026506'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031075','151052')
  Where hora= '031075'and nro_solici='1900048404'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'123497','123541')
  Where hora= '123497'and nro_solici='1900051704'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'030699','150612')
  Where hora= '030699'and nro_solici='1900047844 '
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 85097','080914')
  Where hora= ' 85097'and nro_solici='1900048444'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'121090','121030')
  Where hora= '121090'and nro_solici='1900045864'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031099','151032')
  Where hora= '031099'and nro_solici='1900023459'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'102199','102114')
  Where hora= '102199'and nro_solici='1900047405'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'101797','101712')
  Where hora= '101797'and nro_solici='1900030339'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'100582','100521')
  Where hora= '100582'and nro_solici='1900013434'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031099','151032')
  Where hora= '031099'and nro_solici='1900023460'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 13097','133021')
  Where hora= ' 13097'and nro_solici='1900048382'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031099','151041')
  Where hora= '031099'and nro_solici='1900047846'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'030775','150712')
  Where hora= '030775'and nro_solici='1900059437'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'040065','160114')
  Where hora= '040065'and nro_solici='1900023581'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'102199','102115')
  Where hora= '102199'and nro_solici='1900047425'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031299','151241')
  Where hora= '031299'and nro_solici='1900047842'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'123861','123841')
  Where hora= '123861'and nro_solici='1900045888'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031099','151010')
  Where hora= '031099'and nro_solici='1900047845'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031299','151415')
  Where hora= '031299'and nro_solici='1900047840'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 93197','093114')
  Where hora= ' 93197'and nro_solici='1900050647'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 20697','140614')
  Where hora= ' 20697'and nro_solici='1900048539'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125190','125111')
  Where hora= '125190'and nro_solici='1900046697'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'133190','133141')
  Where hora= '133190'and nro_solici='1901000561'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'030775','150715')
  Where hora= '030775'and nro_solici='1992007937'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'040065','160441')
  Where hora= '040065'and nro_solici='1901000525'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'111165','111141')
  Where hora= '111165'and nro_solici='1900013610'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'040065','160451')
  Where hora= '040065'and nro_solici='1900013995'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'135190','135110')
  Where hora= '135190'and nro_solici='1900013779'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'020065','140134')
  Where hora= '020065'and nro_solici='1900014058'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031175','151125')
  Where hora= '031175'and nro_solici='1900048413'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'040065','151125')
  Where hora= '040065'and nro_solici='1900013784'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'011075','151054')
  Where hora= '011075'and nro_solici='1900023704'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'111261','111242')
  Where hora= '111261'and nro_solici='1900048929'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'111661','111640')
  Where hora= '111661'and nro_solici='1900048928'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'105961','105941')
  Where hora= '105961'and nro_solici='1900048930'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125190','125114')
  Where hora= '125190'and nro_solici='1900046678'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031175','151151')
  Where hora= '031175'and nro_solici='1900048420'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125190','125120')
  Where hora= '125190'and nro_solici='1900046695'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031075','151052')
  Where hora= '031075'and nro_solici='1900048412'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'105761','105714')
  Where hora= '105761'and nro_solici='1900049363'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'023196','143154')
  Where hora= '023196'and nro_solici='1900028881'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'105097','105014')
  Where hora= '105097'and nro_solici='1900015416'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'124897','124841')
  Where hora= '124897'and nro_solici='1900041233'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'040065','160154')
  Where hora= '040065'and nro_solici='1900013723'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'101597','101514')
  Where hora= '101597'and nro_solici='1901001609'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'615559','165559')
  Where hora= '615559'and nro_solici='1994002191'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'605711','165711')
  Where hora= '605711'and nro_solici='1994002276'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'123697','123647')
  Where hora= '123697'and nro_solici='1909000000'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 22197','142145')
  Where hora= ' 22197'and nro_solici='1994003567'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'025765','145741')
  Where hora= '025765'and nro_solici='1994004294 '
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 35697','155647')
  Where hora= ' 35697'and nro_solici='1994005292'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'095871','095845')
  Where hora= '095871'and nro_solici='1995000643'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'031475','151445')
  Where hora= '031475'and nro_solici='1900060739'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'115575','115541')
  Where hora= '115575'and nro_solici='1995001360'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'280519','140619')
  Where hora= '280519'and nro_solici='1995002584'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'012995','132945')
  Where hora= '012995'and nro_solici='1900003737'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1995005209'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1995005209'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132941')
  Where hora= '125190'and nro_solici='1900046675'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'125190','125142')
  Where hora= '125190'and nro_solici='1900046675'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'112890','112841')
  Where hora= '112890'and nro_solici='1900046320'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'110161','110141')
  Where hora= '110161'and nro_solici='1996002990'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'110961','110941')
  Where hora= '110961'and nro_solici='1996002994'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1996003429'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'040099','160145')
  Where hora= '040099'and nro_solici='1900048613'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'103197','103145')
  Where hora= '103197'and nro_solici='1996004267'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'150990','150914')
  Where hora= '150990'and nro_solici='1900051772'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'105497','105436')
  Where hora= '105497'and nro_solici='1996004610'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'105597','105547')
  Where hora= '105597'and nro_solici='1996004999'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 23397','143347')
  Where hora= ' 23397'and nro_solici='1996000655'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 22697','142649')
  Where hora= ' 22697'and nro_solici='1996000659'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 32697','152647')
  Where hora= ' 32697'and nro_solici='1900058931'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 15997','131548')
  Where hora= ' 15997'and nro_solici='1900058362'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'400052','162151')
  Where hora= '400052'and nro_solici='1996010974'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'400052','162154')
  Where hora= '400052'and nro_solici='1996010975'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'400052','162154')
  Where hora= '400052'and nro_solici='1996010976'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'013661','133647')
  Where hora= '013661'and nro_solici='1996008567'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'111161','111141')
  Where hora= '111161'and nro_solici='1901000436'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'120761','120745')
  Where hora= '120761'and nro_solici='1996008633'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'114574','114525')
  Where hora= '114574'and nro_solici='1900029617'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'013661','133645')
  Where hora= '013661'and nro_solici='1900046703'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1996009006'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'015894','135841')
  Where hora= '015894'and nro_solici='1996009811'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'110365','110324')
  Where hora= '110365'and nro_solici='1996010107'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 10697','130647')
  Where hora= ' 10697'and nro_solici='1996010197'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'011365','131341')
  Where hora= '011365'and nro_solici='1997000021'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'112097','112045')
  Where hora= '112097'and nro_solici='1997002318'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 14280','134245')
  Where hora= ' 14280'and nro_solici='1997002558'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1997004232'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 35097','130941')
  Where hora= ' 35097'and nro_solici='1997005233'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 40097','145145')
  Where hora= ' 40097'and nro_solici='1997005281'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1996013382'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1997008043'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1997009071'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 22480','142436')
  Where hora= ' 22480'and nro_solici='1997009239'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'604714','084715')
  Where hora= '604714'and nro_solici='1997010869'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1997006620'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1997013010'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1997012892'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1998000959'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 23997','143947')
  Where hora= ' 23997'and nro_solici='1997007115'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 34997','154947')
  Where hora= ' 34997'and nro_solici='1997007112'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,' 13997','133941')
  Where hora= ' 13997'and nro_solici='1997007858'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1998003183'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1998005298'
  GO
  
  UPDATE movimi
  SET hora=REPLACE(hora,'116416','112116')
  Where hora= '116416'and nro_solici='1998006914'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'116416','112116')
  Where hora= '116416'and nro_solici='1998008954'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998008619'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998009837'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998009956'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998010128'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998010903'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1998002325'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1998003280'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1998011179'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998011844'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'116416','114616')
  Where hora= '116416'and nro_solici='1998012449'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1998012835'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1998012834'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998012736'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998013306'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998013438'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1998013436'
  GO
   UPDATE movimi
  SET hora=REPLACE(hora,'128303','123803')
  Where hora= '128303'and nro_solici='1998013419'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998013607'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'and nro_solici='1998013996'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999001273'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999001272'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999001270'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'128303','123803')
  Where hora= '128303'and nro_solici='1999001264'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'128303','123803')
  Where hora= '128303'and nro_solici='1999001250'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'128303','123803')
  Where hora= '128303'and nro_solici='1999001249'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'128303','123803')
  Where hora= '128303'and nro_solici='1999001689'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999001864'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999001863'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999001862'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999001861'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999001859'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999002252' ----- se pueden cambiar la fecha 31-29-17 por 13-29-17 en una sola consulta
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'and nro_solici='1999002248'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'312917','132917')
  Where hora= '312917'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'314817','134817')
  Where hora= '314817'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'199018','190818')
  Where hora= '199018'and nro_solici='1999009049'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'199716','190816')
  Where hora= '199716'and nro_solici='1997015356'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'199047','190947')
  Where hora= '199047'and nro_solici='1999013863'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'199732','193232')
  Where hora= '199732'and nro_solici='1998007497'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'291012','081012')
  Where hora= '291012'and nro_solici='1998010037'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'291004','081004')
  Where hora= '291004'and nro_solici='1998015018'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'230062','080126')
  Where hora= '230062'and nro_solici='2005028588'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'280201','080201')
  Where hora= '280201'and nro_solici='2006008873'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'133775','133745')
  Where hora= '133775'and nro_solici='1900002247'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'133662','133626')
  Where hora= '133662'and nro_solici='1900064792'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'101964','101945')
  Where hora= '101964'and nro_solici='2005023019'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'140662','140626')
  Where hora= '140662'and nro_solici='2000002637'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'011074','131047')
  Where hora= '011074'and nro_solici='2004005262'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'151390','151309')
  Where hora= '151390'and nro_solici='1996003507'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'104373','104353')
  Where hora= '104373'and nro_solici='1996003830'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'131480','131408')
  Where hora= '131480'and nro_solici='1995011427'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'112772','112724')
  Where hora= '112772'and nro_solici='1994007910'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'150663','150636')
  Where hora= '150663'and nro_solici='2006020020'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'113583','113538')
  Where hora= '113583'and nro_solici='1995008640'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'290505','080505')
  Where hora= '290505'and nro_solici='2006020030'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'142291','142219')
  Where hora= '142291'and nro_solici='1995002305'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'101185','101158')
  Where hora= '101185'and nro_solici='2006017702'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'280637','150637')
  Where hora= '280637'and nro_solici='2006023974'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'103083','103038')
  Where hora= '103083'and nro_solici='2004008479'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'105074','105047')
  Where hora= '105074'and nro_solici='1900022828'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'150692','150629')
  Where hora= '150692'and nro_solici='1995009894'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'114573','114537')
  Where hora= '114573'and nro_solici='1900064552'
  GO
   UPDATE movimi
  SET hora=REPLACE(hora,'113293','113239')
  Where hora= '113293'and nro_solici='1995009539'
  GO
   UPDATE movimi
  SET hora=REPLACE(hora,'110390','110309')
  Where hora= '110390'and nro_solici='1996001899'
  GO
   UPDATE movimi
  SET hora=REPLACE(hora,'575991','085931')
  Where hora= '575991'and nro_solici='2009002911'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'758770','081215')
  Where hora= '758770'and nro_solici='2010013434'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'326320','153620')
  Where hora= '326320'and nro_solici='2011026046'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'326320','153620')
  Where hora= '326320'and nro_solici='2013023166'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'332383','153235')
  Where hora= '332383'and nro_solici='2013023166'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'335735','155735')
  Where hora= '335735'and nro_solici='2014033135'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'098273','092837')
  Where hora= '098273'and nro_solici='2015001658 '
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'160168','160138')
  Where hora= '160168'and nro_solici='1900040563'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'160168','160138')
  Where hora= '160168'and nro_solici='1900040563'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'160168','160138')
  Where hora= '160168'and nro_solici='1900014255'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'160168','160138')
  Where hora= '160168'and nro_solici='1900018912'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'160162','160126')
  Where hora= '160162'and nro_solici='1996010498'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'160169','160126')
  Where hora= '160169'and nro_solici='1999013812'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'171171','171117')
  Where hora= '171171'and nro_solici='1900010450'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'172179','172129')
  Where hora= '172179'and nro_solici='2006010913'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'164168','164128')
  Where hora= '164168'and nro_solici='2006000673'
  GO
   UPDATE movimi
  SET hora=REPLACE(hora,'163166','163126')
  Where hora= '163166'and nro_solici='2005031708'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'163166','163126')
  Where hora= '163166'and nro_solici='2005031708'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'170170','170126')
  Where hora= '170170'and nro_solici='1995001499'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'162163','162136')
  Where hora= '162163'and nro_solici='2006019258'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'171170','171107')
  Where hora= '171170'and nro_solici='2006023895'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'163165','163126')
  Where hora= '163165'and nro_solici='2006013244'
  GO
  UPDATE movimi
  SET hora=REPLACE(hora,'174174','174147')
  Where hora= '174174'and nro_solici='2009008253'
  GO
--  SELECT nro_solici,hora,SUBSTRING(hora, 1, 2)+':'+SUBSTRING(hora, 3,
--  2)+':'+ SUBSTRING(hora, 5, 2) 
--  FROM movimi
--  WHERE SUBSTRING(hora, 1, 2)>24 OR SUBSTRING(hora, 3,2)>60 OR SUBSTRING(hora, 5, 2)>60 
--GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  
--select nro_solici, hora from movimi
--WHERE LEN(LTRIM(RTRIM(hora)))<6
GO
UPDATE movimi
SET hora=REPLACE(hora,' 30700', '150701')
WHERE hora=' 30700' AND nro_solici='1900047838' 
GO
UPDATE movimi
SET hora=REPLACE(hora,' 83100', '083101')
WHERE hora=' 83100' AND nro_solici='1900047838' 
GO
UPDATE movimi
SET hora=REPLACE(hora,' 24000', '080112')
WHERE hora=' 24000' AND nro_solici='1900047838'
GO
UPDATE movimi
SET hora=REPLACE(hora,' 40000', '140102')
WHERE hora=' 40000' AND nro_solici='1992001395'
GO
UPDATE movimi
set hora=REPLACE(hora,' 23000','143001')
where hora=' 23000' and nro_solici='1992001395' 
GO
UPDATE movimi
set hora=REPLACE(hora,' 40000','140103')
where hora=' 40000' and nro_solici='1900029791' 
GO
UPDATE movimi
set hora=REPLACE(hora,' 33500','153501')
where hora=' 33500' and nro_solici='1900043049' 
GO
UPDATE movimi
set hora=REPLACE(hora,' 40000','140103')
where hora=' 40000' and nro_solici='1987049096' 
GO
UPDATE movimi
set hora=REPLACE(hora,' 14400','134401')
where hora=' 14400' and nro_solici='1900050653'
GO
UPDATE movimi
set hora=REPLACE(hora,' 13500','133501')
where hora=' 13500' and nro_solici='1900050653'
GO
UPDATE movimi
set hora=REPLACE(hora,' 13500','133501')
where hora='13500' and nro_solici='1900050653'
GO
UPDATE movimi
set hora=REPLACE(hora,' 33400','153401')
where hora=' 33400' and nro_solici='1900049614'
GO
UPDATE movimi
set hora=REPLACE(hora,' 10000','130102')
where hora=' 10000' and nro_solici='1900018040'
GO
UPDATE movimi
set hora=REPLACE(hora,' 14400','134401')
where hora=' 14400' and nro_solici='1991001862'
GO
UPDATE movimi
set hora=REPLACE(hora,' 90000','090103')
where hora=' 90000' and nro_solici='1900043078'
GO
UPDATE movimi
set hora=REPLACE(hora,' 34100','154120')
where hora=' 34100' and nro_solici='1900046439'
GO
UPDATE movimi
set hora=REPLACE(hora,' 85000','085001')
where hora=' 85000' and nro_solici='1900025796'
GO
UPDATE movimi
set hora=REPLACE(hora,' 82200','082230')
where hora=' 82200' and nro_solici='1900025802'
GO
UPDATE movimi
set hora=REPLACE(hora,' 85000','085035')
where hora=' 85000' and nro_solici='1900025794'
GO
UPDATE movimi
set hora=REPLACE(hora,' 23000','143001')
where hora=' 23000' and nro_solici='1900014649'
GO
UPDATE movimi
set hora=REPLACE(hora,' 25200','145201')
where hora=' 25200' and nro_solici='1900047654'
GO
UPDATE movimi
set hora=REPLACE(hora,' 14600','134601')
where hora=' 14600' and nro_solici='1900049261'
GO
UPDATE movimi
set hora=REPLACE(hora,' 12500','132501')
where hora=' 12500' and nro_solici='1900049261'
GO
UPDATE movimi
set hora=REPLACE(hora,' 40000','140503')
where hora=' 40000' and nro_solici='1900047447'
GO
UPDATE movimi
set hora=REPLACE(hora,' 15000','135011')
where hora=' 15000' and nro_solici='1900042209'
GO
UPDATE movimi
set hora=REPLACE(hora,' 30000','153014')
where hora=' 30000' and nro_solici='1900042209'
GO
UPDATE movimi
set hora=REPLACE(hora,' 24500','144501')
where hora=' 24500' and nro_solici='1900021790'
GO
UPDATE movimi
set hora=REPLACE(hora,' 24500','144501')
where hora=' 24500' and nro_solici='1900021790'
GO
UPDATE movimi
set hora=REPLACE(hora,' 24500','144501')
where hora=' 24500' and nro_solici='1900050698'
GO
UPDATE movimi
set hora=REPLACE(hora,' 84000','084001')
where hora=' 84000' and nro_solici='1900050698'
GO
UPDATE movimi
set hora=REPLACE(hora,' 45900','165901')
where hora=' 45900' and nro_solici='1900011894'
GO
UPDATE movimi
set hora=REPLACE(hora,' 90100','090123')
where hora=' 90100' and nro_solici='1900016816'
GO
UPDATE movimi
set hora=REPLACE(hora,' 25000','145035')
where hora=' 25000' and nro_solici='1900053540'
GO
UPDATE movimi
set hora=REPLACE(hora,' 10000','130121')
where hora=' 10000' and nro_solici='1990006035'
GO
UPDATE movimi
set hora=REPLACE(hora,' 31000','151000')
where hora=' 31000' and nro_solici='1900052590'
GO
UPDATE movimi
set hora=REPLACE(hora,' 20500','140501')
where hora=' 20500' and nro_solici='1900002428'
GO
UPDATE movimi
set hora=REPLACE(hora,' 21100','141100')
where hora=' 21100' and nro_solici='1900002313'
GO
UPDATE movimi
set hora=REPLACE(hora,' 30000','150204')
where hora=' 30000' and nro_solici='1900040286'
GO
UPDATE movimi
set hora=REPLACE(hora,' 15700','135704')
where hora=' 15700' and nro_solici='1900045212'
GO
UPDATE movimi
set hora=REPLACE(hora,' 15800','135801')
where hora=' 15800' and nro_solici='1900045212'
GO
UPDATE movimi
set hora=REPLACE(hora,' 95400','095401')
where hora=' 95400' and nro_solici='1900045212'
GO
UPDATE movimi
set hora=REPLACE(hora,' 90800','090801')
where hora=' 90800' and nro_solici='1987048142'
GO
UPDATE movimi
set hora=REPLACE(hora,' 30000','150101')
where hora=' 30000' and nro_solici='1900048301'
GO
UPDATE movimi
set hora=REPLACE(hora,' 30000','150101')
where hora=' 30000' and nro_solici='1900029525'
GO
UPDATE movimi
set hora=REPLACE(hora,' 30000','150101')
where hora=' 30000' and nro_solici='1900029525'
GO
UPDATE movimi
set hora=REPLACE(hora,' 14200','134201')
where hora=' 14200' and nro_solici='1900013976'
GO
UPDATE movimi
set hora=REPLACE(hora,'0300  ','150100')
where hora='0300  ' and nro_solici='1900046007'
GO
UPDATE movimi
set hora=REPLACE(hora,' 34500','154501')
where hora=' 34500' and nro_solici='1900014158'
GO
UPDATE movimi
set hora=REPLACE(hora,' 23000','143001')
where hora=' 23000' and nro_solici='1900043917'
GO
UPDATE movimi
set hora=REPLACE(hora,' 15600','135601')
where hora=' 15600' and nro_solici='1900003835'
GO
UPDATE movimi
set hora=REPLACE(hora,' 34500','154501')
where hora=' 34500' and nro_solici='1900005828'
GO
UPDATE movimi
set hora=REPLACE(hora,' 21700','141700')
where hora=' 21700' and nro_solici='1990007278'
GO
UPDATE movimi
set hora=REPLACE(hora,' 23600','143601')
where hora=' 23600' and nro_solici='1990007278'
GO
UPDATE movimi
set hora=REPLACE(hora,' 20700','140701')
where hora=' 20700' and nro_solici='1992004041'
GO
UPDATE movimi
set hora=REPLACE(hora,' 10000','100102')
where hora=' 10000' and nro_solici='1900046110'
GO
UPDATE movimi
set hora=REPLACE(hora,' 23200','143201')
where hora='20000 ' and nro_solici='1900022738'
GO
UPDATE movimi
set hora=REPLACE(hora,' 23100','143100')
where hora=' 23100' and nro_solici='1900023587'
GO
UPDATE movimi
set hora=REPLACE(hora,' 23100','143100')
where hora=' 23100' and nro_solici='1900023587'
GO
UPDATE movimi
set hora=REPLACE(hora,'  40000','140102')
where hora=' 40000' and nro_solici='1900022845'
GO
UPDATE movimi
set hora=REPLACE(hora,' 40000','140102')
where hora=' 40000' and nro_solici='1900022845'
GO
UPDATE movimi
set hora=REPLACE(hora,' 13500','133501')
where hora=' 13500' and nro_solici='1900022845'
GO
UPDATE movimi
set hora=REPLACE(hora,' 13500','133521')
where hora=' 31200' and nro_solici='1900025679'
GO
UPDATE movimi
set hora=REPLACE(hora,' 31200','151201')
where hora=' 31200' and nro_solici='1900025679'
GO
UPDATE movimi
set hora=REPLACE(hora,' 14000','134001')
where hora=' 14000' and nro_solici='1987048166'
GO
UPDATE movimi
set hora=REPLACE(hora,' 20800','140825')
where hora=' 20800' and nro_solici='1900044497'
GO
UPDATE movimi
set hora=REPLACE(hora,' 22500','142501')
where hora=' 22500' and nro_solici='1984048116'
GO
UPDATE movimi
set hora=REPLACE(hora,' 25400','145410')
where hora=' 25400' and nro_solici='1900050443'
GO
UPDATE movimi
set hora=REPLACE(hora,' 25400','145401')
where hora=' 25400' and nro_solici='1900049819'
GO
UPDATE movimi
set hora=REPLACE(hora,' 40000','140132')
where hora=' 40000' and nro_solici='1900051602'
GO
UPDATE movimi
set hora=REPLACE(hora,' 11300','131301')
where hora=' 11300' and nro_solici='1900051602'
GO
UPDATE movimi
set hora=REPLACE(hora,' 94500','094501')
where hora=' 94500' and nro_solici='1900014983'
GO
UPDATE movimi
set hora=REPLACE(hora,' 95600','095601')
where hora=' 95600' and nro_solici='1900014983'
GO
UPDATE movimi
set hora=REPLACE(hora,' 11200','131201')
where hora=' 11200' and nro_solici='1986047209'
GO
UPDATE movimi
set hora=REPLACE(hora,' 25400','145401')
where hora=' 25400' and nro_solici='1900049818'
GO
UPDATE movimi
set hora=REPLACE(hora,' 30100','150101')
where hora='30100' and nro_solici='1900024721'
GO
UPDATE movimi
set hora=REPLACE(hora,' 22600','122601')
where hora=' 22600' and nro_solici='1900024721'
GO
UPDATE movimi
set hora=REPLACE(hora,' 32800','152801')
where hora=' 32800' and nro_solici='1900025004'
GO
UPDATE movimi
set hora=REPLACE(hora,' 21600','121600')
where hora=' 21600' and nro_solici='1900047797'
GO
UPDATE movimi
set hora=REPLACE(hora,' 30500','150501')
where hora=' 30500' and nro_solici='1990053131'
GO
UPDATE movimi
set hora=REPLACE(hora,' 35400','155401')
where hora=' 35400' and nro_solici='1990053131'
GO
UPDATE movimi
set hora=REPLACE(hora,' 20100','140102')
where hora=' 20100' and nro_solici='1987049543'
GO
UPDATE movimi
set hora=REPLACE(hora,'116416','114616')
where hora='116416'
GO
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select nro_solici, hora from movimi
--WHERE LEN(LTRIM(RTRIM(hora)))<6
GO
UPDATE movimi
set hora=REPLACE(hora,' 23200','123200')
where hora=' 23200' and nro_solici='1900022738'
GO
UPDATE movimi
set hora=REPLACE(hora,' 30100','150101')
where hora=' 30100' and nro_solici='1900024721'
GO
UPDATE movimi
set hora=REPLACE(hora,' 10000','130103')
where hora=' 10000' and nro_solici='1900050331'
GO
UPDATE movimi
set hora=REPLACE(hora,' 11000','131001')
where hora=' 11000' and nro_solici='1991006549'
GO
UPDATE movimi
set hora=REPLACE(hora,' 40000','140101')
where hora=' 40000' and nro_solici='1991006549'
GO
UPDATE movimi
set hora=REPLACE(hora,' 40000','140101')
where hora=' 10100' and nro_solici='1991006549'
GO
UPDATE movimi
set hora=REPLACE(hora,' 30100','140101')
where hora=' 30100' and nro_solici='1992005775'
GO
UPDATE movimi
set hora=REPLACE(hora,'0     ','140101')
where hora='0     ' and nro_solici='1987048013'
GO
UPDATE movimi
SET hora= REPLACE(HORA,SPACE(6),SPACE(0))
WHERE hora= ''  
GO

--IF EXISTS (SELECT hora FROM movimi WHERE hora ='      ')

UPDATE movimi SET hora='080102' WHERE hora ='   '

--ELSE (SELECT hora FROM movimi WHERE LEN(LTRIM(RTRIM(hora)))<6)

UPDATE movimi
SET hora= LEFT('0' + CAST( LTRIM(RTRIM(hora)) as varchar(5)),5)+RIGHT('0' + CAST( LTRIM(RTRIM(hora)) as varchar(5)),1)
WHERE LEN(LTRIM(RTRIM(hora)))<6
--select nro_solici, hora from movimi
--WHERE LEN(LTRIM(RTRIM(hora)))<6 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
GO
--select substring(hora, 1,2) as HORA_INCORRECTA, hora, nro_solici from movimi where hora between '00:00:00' and '06:59:59' order by hora
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'12') 
where SUBSTRING(hora,1,2)='00'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'13') 
where SUBSTRING(hora,1,2)='01'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'13') 
where SUBSTRING(hora,1,2)='01'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'14') 
where SUBSTRING(hora,1,2)='02'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'15') 
where SUBSTRING(hora,1,2)='03'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'16') 
where SUBSTRING(hora,1,2)='04'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'17') 
where SUBSTRING(hora,1,2)='05'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'12') 
where SUBSTRING(hora,1,2)='0'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'16') 
where SUBSTRING(hora,1,2)='4'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'15') 
where SUBSTRING(hora,1,2)='3'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'14') 
where SUBSTRING(hora,1,2)='2'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'13') 
where SUBSTRING(hora,1,2)='1'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'09') 
where SUBSTRING(hora,1,2)='9'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'07') 
where SUBSTRING(hora,1,2)='7'
GO
update movimi
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'08') 
where SUBSTRING(hora,1,2)='24'
GO


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--CORRECCION DEL CAMPO F_EVENTO DE LA TABLA MOVIMI

--select nro_solici,f_evento from movimi
--where DAY(f_evento)>31 or MONTH(f_evento)>12 or YEAR (f_evento)>9999 or YEAR(f_evento)<1753

--select nro_solici,f_evento from movimi
--where DAY(f_evento)<1 or MONTH(f_evento)<1 or YEAR (f_evento)>9999 or YEAR(f_evento)<1753

UPDATE movimi
SET f_evento='1996-12-24'
WHERE f_evento='1196-12-24' and nro_solici='1900046218'
GO
UPDATE movimi
SET f_evento='2000-04-14'
WHERE f_evento='0200-04-14' and nro_solici='1997005236'
GO
UPDATE movimi
SET f_evento='2000-03-31'
WHERE f_evento='0200-03-31' and nro_solici='1999007827'
GO
UPDATE movimi
SET f_evento='2000-04-24'
WHERE f_evento='0200-04-24' and nro_solici='1999008195'
GO
UPDATE movimi
SET f_evento='2000-06-12'
WHERE f_evento='0200-06-12' and nro_solici='2000002839'
GO
UPDATE movimi
SET f_evento='2000-04-14'
WHERE f_evento='0200-04-14' and nro_solici='1998004390'
GO
UPDATE movimi
SET f_evento='2000-05-10'
WHERE f_evento='0200-05-10' and nro_solici='1998008026'
GO
UPDATE movimi
SET f_evento='2000-06-12'
WHERE f_evento='0200-06-12' and nro_solici='1999009120'
GO
UPDATE movimi
SET f_evento='2000-06-29'
WHERE f_evento='0200-06-29' and nro_solici='1999010589'
GO
UPDATE movimi
SET f_evento='2000-08-07'
WHERE f_evento='0200-08-07' and nro_solici='2000001622'
GO
UPDATE movimi
SET f_evento='2000-09-29'
WHERE f_evento='0200-09-29' and nro_solici='1999005610'
GO
UPDATE movimi
SET f_evento='2000-12-11'
WHERE f_evento='0200-12-11' and nro_solici='2000010779'
GO
UPDATE movimi
SET f_evento='2000-10-19'
WHERE f_evento='0200-10-19' and nro_solici='1999017304'
GO
UPDATE movimi
SET f_evento='2000-03-22'
WHERE f_evento='0200-03-22' and nro_solici='1999013475'
GO
UPDATE movimi
SET f_evento='2001-04-23'
WHERE f_evento='0201-04-23' and nro_solici='2000013651'
GO
UPDATE movimi
SET f_evento='2000-07-18'
WHERE f_evento='0200-07-18' and nro_solici='1999012408'
GO
UPDATE movimi
SET f_evento='2000-12-27'
WHERE f_evento='0200-12-27' and nro_solici='2000001440'
GO
UPDATE movimi
SET f_evento='2001-05-08'
WHERE f_evento='0201-05-08' and nro_solici='2000009333'
GO
UPDATE movimi
SET f_evento='2001-11-28'
WHERE f_evento='0001-11-28' and nro_solici='1994008284'
GO
UPDATE movimi
SET f_evento='2001-12-04'
WHERE f_evento='0001-12-04' and nro_solici='2001001711'
GO
UPDATE movimi
SET f_evento='2001-12-24'
WHERE f_evento='0001-12-24' and nro_solici='2000013862'
GO
UPDATE movimi
SET f_evento='2001-12-05'
WHERE f_evento='0001-12-05' and nro_solici='2001001767'
GO
UPDATE movimi
SET f_evento='2001-12-05'
WHERE f_evento='0001-12-05' and nro_solici='2001002937'
GO
UPDATE movimi
SET f_evento='2001-12-24'
WHERE f_evento='0001-12-24' and nro_solici='2000016798'
GO
UPDATE movimi
SET f_evento='2001-12-15'
WHERE f_evento='0001-12-15' and nro_solici='1996009806'
GO
UPDATE movimi
SET f_evento='2001-12-05'
WHERE f_evento='0001-12-05' and nro_solici='2001002939'
GO
UPDATE movimi
SET f_evento='2001-12-18'
WHERE f_evento='0001-12-18' and nro_solici='1997010001'
GO
UPDATE movimi
SET f_evento='2002-01-29'
WHERE f_evento='0202-01-29' and nro_solici='2001001998'
GO
UPDATE movimi
SET f_evento='2002-12-10'
WHERE f_evento='0002-12-10' and nro_solici='2001000799'
GO
UPDATE movimi
SET f_evento='2002-07-02'
WHERE f_evento='0202-07-02' and nro_solici='2001003880'
GO
UPDATE movimi
SET f_evento='2002-07-02'
WHERE f_evento='0202-07-02' and nro_solici='2001003880'
GO
UPDATE movimi
SET f_evento='2002-02-13'
WHERE f_evento='0200-02-13' and nro_solici='2001002537'
GO
UPDATE movimi
SET f_evento='2002-09-09'
WHERE f_evento='0202-09-09' and nro_solici='2000009823'
GO
UPDATE movimi
SET f_evento='2002-08-20'
WHERE f_evento='0202-08-20' and nro_solici='2002005701'
GO
UPDATE movimi
SET f_evento='2002-12-12'
WHERE f_evento='0202-12-12' and nro_solici='2002010110'
GO
UPDATE movimi
SET f_evento='2003-01-28'
WHERE f_evento='1203-01-28' and nro_solici='2002001001'
GO
UPDATE movimi
SET f_evento='2000-03-24'
WHERE f_evento='0200-03-24' and nro_solici='2001003385'
GO
UPDATE movimi
SET f_evento='2003-04-08'
WHERE f_evento='0203-04-08' and nro_solici='2002017922'
GO
UPDATE movimi
SET f_evento='2003-03-24'
WHERE f_evento='0023-03-24' and nro_solici='2002010037'
GO
UPDATE movimi
SET f_evento='2003-04-28'
WHERE f_evento='0203-04-28' and nro_solici='2002016161'
GO
UPDATE movimi
SET f_evento='2000-05-15'
WHERE f_evento='0200-05-15' and nro_solici='2003001492'
GO
UPDATE movimi
SET f_evento='2000-05-15'
WHERE f_evento='0200-05-15' and nro_solici='2002010211'
GO
UPDATE movimi
SET f_evento='2000-08-13'
WHERE f_evento='0200-08-13' and nro_solici='2003009694'
GO
UPDATE movimi
SET f_evento='2003-08-11'
WHERE f_evento='0203-08-11' and nro_solici='2001005089'
GO
UPDATE movimi
SET f_evento='2000-08-29'
WHERE f_evento='0200-08-29' and nro_solici='2002008974'
GO
UPDATE movimi
SET f_evento='2003-10-01'
WHERE f_evento='0203-10-01' and nro_solici='2002016644'
GO
UPDATE movimi
SET f_evento='2003-12-17'
WHERE f_evento='0003-12-17' and nro_solici='2003000783'
GO
UPDATE movimi
SET f_evento='2003-12-22'
WHERE f_evento='0203-12-22' and nro_solici='2000000854'
GO
UPDATE movimi
SET f_evento='2003-12-22'
WHERE f_evento='0203-12-22' and nro_solici='2003007928'
GO
UPDATE movimi
SET f_evento='2003-10-01'
WHERE f_evento='1203-10-01' and nro_solici='1993058539'
GO
UPDATE movimi
SET f_evento='1999-12-16'
WHERE f_evento='0199-12-16' and nro_solici='1999005653'
GO
UPDATE movimi
SET f_evento='2005-02-24'
WHERE f_evento='0005-02-24' and nro_solici='2005003706'
GO
UPDATE movimi
SET f_evento='2005-07-15'
WHERE f_evento='0005-07-15' and nro_solici='2005002886'
GO
UPDATE movimi
SET f_evento='2005-03-30'
WHERE f_evento='0005-03-30' and nro_solici='1900012822'
GO
UPDATE movimi
SET f_evento='2004-03-30'
WHERE f_evento='1004-03-30' and nro_solici='1965012821'
GO
UPDATE movimi
SET f_evento='2003-08-26'
WHERE f_evento='0320-08-26' and nro_solici='1900042028'
GO
UPDATE movimi
SET f_evento='2005-08-15'
WHERE f_evento='0005-08-15' and nro_solici='1998001553'
GO
UPDATE movimi
SET f_evento='2005-08-15'
WHERE f_evento='0005-08-15' and nro_solici='1998001840'
GO
UPDATE movimi
SET f_evento='2005-08-05'
WHERE f_evento='0005-08-05' and nro_solici='2002007744'
GO
UPDATE movimi
SET f_evento='2005-08-05'
WHERE f_evento='0005-08-05' and nro_solici='1919000009'
GO
UPDATE movimi
SET f_evento='2005-08-05'
WHERE f_evento='0005-08-05' and nro_solici='1998004826'
GO
UPDATE movimi
SET f_evento='2005-09-08'
WHERE f_evento='0005-09-08' and nro_solici='1900044950'
GO
UPDATE movimi
SET f_evento='2000-09-22'
WHERE f_evento='0200-09-22' and nro_solici='2001001015'
GO
UPDATE movimi
SET f_evento='2000-09-22'
WHERE f_evento='0200-09-22' and nro_solici='2000011865'
GO
UPDATE movimi
SET f_evento='2000-11-10'
WHERE f_evento='0200-11-10' and nro_solici='2005027744'
GO
UPDATE movimi
SET f_evento='2005-01-07'
WHERE f_evento='0005-01-07' and nro_solici='2003006955'
GO
UPDATE movimi
SET f_evento='2005-01-07'
WHERE f_evento='0205-01-07' and nro_solici='1995002581'
GO
UPDATE movimi
SET f_evento='2004-06-04'
WHERE f_evento='0204-06-04' and nro_solici='1901001068'
GO
UPDATE movimi
SET f_evento='2004-06-04'
WHERE f_evento='0204-06-04' and nro_solici='2002011475'
GO
UPDATE movimi
SET f_evento='2004-05-18'
WHERE f_evento='0004-05-18' and nro_solici='1900048737'
GO
UPDATE movimi
SET f_evento='2007-04-17'
WHERE f_evento='0720-04-17' and nro_solici='1900045239'
GO
UPDATE movimi
SET f_evento='2007-06-12'
WHERE f_evento='0720-06-12' and nro_solici='2006030408'
GO
UPDATE movimi
SET f_evento='2007-06-18'
WHERE f_evento='0207-06-18' and nro_solici='2007013356'
GO
UPDATE movimi
SET f_evento='2007-07-06'
WHERE f_evento='0207-07-06' and nro_solici='2007016842'
GO
UPDATE movimi
SET f_evento='2007-06-26'
WHERE f_evento='0720-06-26' and nro_solici='2006014502'
GO
UPDATE movimi
SET f_evento='2007-07-09'
WHERE f_evento='0007-07-09' and nro_solici='2006023584'
GO
UPDATE movimi
SET f_evento='2007-07-20'
WHERE f_evento='1307-07-20' and nro_solici='2004024022'
GO
UPDATE movimi
SET f_evento='2006-10-01'
WHERE f_evento='1206-10-01' and nro_solici='1992001911'
GO
UPDATE movimi
SET f_evento='2007-08-16'
WHERE f_evento='0202-08-16' and nro_solici='2007023083'
GO
UPDATE movimi
SET f_evento='2007-08-02'
WHERE f_evento='0207-08-02' and nro_solici='2007025405'
GO
UPDATE movimi
SET f_evento='2007-07-20'
WHERE f_evento='0294-07-20' and nro_solici='2005000618'
GO
UPDATE movimi
SET f_evento='2007-09-11'
WHERE f_evento='0720-09-11' and nro_solici='2007007053'
GO
UPDATE movimi
SET f_evento='2007-11-23'
WHERE f_evento='0107-11-23' and nro_solici='2007010813'
GO
UPDATE movimi
SET f_evento='2007-11-23'
WHERE f_evento='0107-11-23' and nro_solici='2007010813'
GO
UPDATE movimi
SET f_evento='2007-12-20'
WHERE f_evento='0027-12-20' and nro_solici='2006002137'
GO
UPDATE movimi
SET f_evento='2008-03-14'
WHERE f_evento='0008-03-14' and nro_solici='2007027499'
GO
UPDATE movimi
SET f_evento='2008-08-20'
WHERE f_evento='1698-08-20' and nro_solici='2008009556'
GO
UPDATE movimi
SET f_evento='2008-09-16'
WHERE f_evento='0089-09-16' and nro_solici='2008015181'
GO
UPDATE movimi
SET f_evento='2008-11-14'
WHERE f_evento='0108-11-14' and nro_solici='2008023582'
GO
UPDATE movimi
SET f_evento='2008-11-25'
WHERE f_evento='0108-11-25' and nro_solici='2008017624'
GO
UPDATE movimi
SET f_evento='2009-01-22'
WHERE f_evento='0209-01-22' and nro_solici='2008012588'
GO
UPDATE movimi
SET f_evento='2009-02-11'
WHERE f_evento='0209-02-11' and nro_solici='1900008688'
GO
UPDATE movimi
SET f_evento='2009-02-16'
WHERE f_evento='0099-02-16' and nro_solici='2004008060'
GO
UPDATE movimi
SET f_evento='2000-01-11'
WHERE f_evento='0200-01-11' and nro_solici='2008038130'
GO
UPDATE movimi
SET f_evento='2009-05-11'
WHERE f_evento='0009-05-11' and nro_solici='2007024200'
GO
UPDATE movimi
SET f_evento='2009-04-15'
WHERE f_evento='1420-04-15' and nro_solici='2009004324'
GO
UPDATE movimi
SET f_evento='2000-07-28'
WHERE f_evento='0200-07-28' and nro_solici='2008038769'
GO
UPDATE movimi
SET f_evento='2009-07-28'
WHERE f_evento='0200-07-28' and nro_solici='2008038769'
GO
UPDATE movimi
SET f_evento='2009-07-28'
WHERE f_evento='0200-07-28' and nro_solici='2009000949'
GO
UPDATE movimi
SET f_evento='2009-08-05'
WHERE f_evento='0220-08-05' and nro_solici='2009007921'
GO
UPDATE movimi
SET f_evento='2009-08-05'
WHERE f_evento='0220-08-05' and nro_solici='2009007921'
GO
UPDATE movimi
SET f_evento='2009-09-07'
WHERE f_evento='0009-09-07' and nro_solici='1998016018'
GO
UPDATE movimi
SET f_evento='2009-09-07'
WHERE f_evento='0009-09-07' and nro_solici='1998016026'
GO
UPDATE movimi
SET f_evento='2009-09-14'
WHERE f_evento='0009-09-14' and nro_solici='1998001487'
GO
UPDATE movimi
SET f_evento='2009-09-17'
WHERE f_evento='0009-09-17' and nro_solici='2004006459'
GO
UPDATE movimi
SET f_evento='2009-09-14'
WHERE f_evento='0209-09-14' and nro_solici='1901000378'
GO
UPDATE movimi
SET f_evento='2000-11-30'
WHERE f_evento='0200-11-30' and nro_solici='1999015234'
GO
UPDATE movimi
SET f_evento='2009-12-02'
WHERE f_evento='0009-12-02' and nro_solici='2007042053'
GO
UPDATE movimi
SET f_evento='2009-11-23'
WHERE f_evento='0200-11-23' and nro_solici='2006012262'
GO
UPDATE movimi
SET f_evento='2009-12-09'
WHERE f_evento='0009-12-09' and nro_solici='2009009711'
GO
UPDATE movimi
SET f_evento='2009-12-15'
WHERE f_evento='0920-12-15' and nro_solici='2008032716'
GO
UPDATE movimi
SET f_evento='2010-01-04'
WHERE f_evento='0201-01-04' and nro_solici='1999015458'
GO
UPDATE movimi
SET f_evento='2009-06-17'
WHERE f_evento='0009-06-17' and nro_solici='1998012470'
GO
UPDATE movimi
SET f_evento='2010-02-23'
WHERE f_evento='1020-02-23' and nro_solici='2004002160'
GO
UPDATE movimi
SET f_evento='2010-07-21'
WHERE f_evento='0200-07-21' and nro_solici='2009028415'
GO
UPDATE movimi
SET f_evento='2010-07-16'
WHERE f_evento='0200-07-16' and nro_solici='2006001153'
GO
UPDATE movimi
SET f_evento='2010-07-27'
WHERE f_evento='0210-07-27' and nro_solici='2009035855'
GO
UPDATE movimi
SET f_evento='2010-12-06'
WHERE f_evento='0200-12-06' and nro_solici='2010022083'
GO
UPDATE movimi
SET f_evento='2010-12-06'
WHERE f_evento='0210-12-06' and nro_solici='2010003225'
GO
UPDATE movimi
SET f_evento='2003-01-20'
WHERE f_evento='0203-01-20' and nro_solici='1997005854'
GO
UPDATE movimi
SET f_evento='2011-02-15'
WHERE f_evento='0011-02-15' and nro_solici='2010027337'
GO
UPDATE movimi
SET f_evento='2011-02-15'
WHERE f_evento='0011-02-15' and nro_solici='2010027157'
GO
UPDATE movimi
SET f_evento='2011-02-23'
WHERE f_evento='0201-02-23' and nro_solici='2000011804'
GO
UPDATE movimi
SET f_evento='2011-08-05'
WHERE f_evento='0111-08-05' and nro_solici='2011009290'
GO
UPDATE movimi
SET f_evento='2011-08-11'
WHERE f_evento='0201-08-11' and nro_solici='1900054300'
GO
UPDATE movimi
SET f_evento='2011-08-31'
WHERE f_evento='0201-08-31' and nro_solici='2011029321'
GO
UPDATE movimi
SET f_evento='2011-10-11'
WHERE f_evento='0111-10-11' and nro_solici='2011018728'
GO
UPDATE movimi
SET f_evento='2011-10-11'
WHERE f_evento='0111-10-11' and nro_solici='2011022998'
GO
UPDATE movimi
SET f_evento='2011-11-14'
WHERE f_evento='0111-11-14' and nro_solici='2011022998'
GO
UPDATE movimi
SET f_evento='2011-12-28'
WHERE f_evento='0011-12-28' and nro_solici='2010032799'
GO
UPDATE movimi
SET f_evento='2012-02-01'
WHERE f_evento='0012-02-01' and nro_solici='2010026651'
GO
UPDATE movimi
SET f_evento='2011-12-28'
WHERE f_evento='0011-12-28' and nro_solici='2001000951'
GO
UPDATE movimi
SET f_evento='2012-08-07'
WHERE f_evento='0121-08-07' and nro_solici='2011041320'
GO
UPDATE movimi
SET f_evento='2012-02-17'
WHERE f_evento='0012-02-17' and nro_solici='2010034692'
GO
UPDATE movimi
SET f_evento='2012-12-01'
WHERE f_evento='0012-12-01' and nro_solici='2012021095'
GO
UPDATE movimi
SET f_evento='2012-11-08'
WHERE f_evento='0201-11-08' and nro_solici='2012020033'
GO
UPDATE movimi
SET f_evento='2012-12-06'
WHERE f_evento='0012-12-06' and nro_solici='2011031751'
GO
UPDATE movimi
SET f_evento='2012-12-06'
WHERE f_evento='0012-12-06' and nro_solici='2012028461'
GO
UPDATE movimi
SET f_evento='2012-12-13'
WHERE f_evento='0012-12-13' and nro_solici='2011020267'
GO
UPDATE movimi
SET f_evento='2013-01-24'
WHERE f_evento='0201-01-24' and nro_solici='2012016845'
GO
UPDATE movimi
SET f_evento='2013-02-19'
WHERE f_evento='0013-02-19' and nro_solici='2011035488'
GO
UPDATE movimi
SET f_evento='2013-02-08'
WHERE f_evento='0202-02-08' and nro_solici='2011040874'
GO
UPDATE movimi
SET f_evento='2013-07-23'
WHERE f_evento='0203-07-23' and nro_solici='2013011874'
GO
UPDATE movimi
SET f_evento='2014-03-11'
WHERE f_evento='0214-03-11' and nro_solici='2013026888'
GO
UPDATE movimi
SET f_evento='2009-07-15'
WHERE f_evento='0200-07-15' and nro_solici='2009006390'
GO
UPDATE movimi
SET f_evento='2014-06-19'
WHERE f_evento='0201-06-19' and nro_solici='2013044233'
GO
UPDATE movimi
SET f_evento='2015-01-20'
WHERE f_evento='0115-01-20' and nro_solici='2014017591'
GO
UPDATE movimi
SET f_evento='2015-02-04'
WHERE f_evento='0015-02-04' and nro_solici='2013034307'
GO
UPDATE movimi
SET f_evento='2015-05-20'
WHERE f_evento='0015-05-20' and nro_solici='2014041106'
GO
UPDATE movimi
SET f_evento='2015-08-12'
WHERE f_evento='0201-08-12' and nro_solici='2013029476'
GO
UPDATE movimi
SET f_evento='2015-08-13'
WHERE f_evento='0205-08-13' and nro_solici='1998006315'
GO
UPDATE movimi
SET f_evento='2016-01-29'
WHERE f_evento='0201-01-29' and nro_solici='2006010216'
GO
UPDATE movimi
SET f_evento='2016-02-11'
WHERE f_evento='0206-02-11' and nro_solici='2015033441'
GO
UPDATE movimi
SET f_evento='2016-02-26'
WHERE f_evento='0216-02-26' and nro_solici='2015028399'
GO
UPDATE movimi
SET f_evento='2007-02-27'
WHERE f_evento='1505-02-27' and nro_solici='2000011764'
GO
UPDATE movimi
SET f_evento='2008-08-20'
WHERE f_evento='1502-08-20' and nro_solici='2008003503'
GO
UPDATE movimi
SET f_evento='2005-02-15'
WHERE f_evento='0005-02-15' and nro_solici='1998009242'
GO
UPDATE movimi
SET f_evento='2005-11-05'
WHERE f_evento='0200-11-05' and nro_solici='2005012176'
GO
UPDATE movimi
SET f_evento='2004-11-05'
WHERE f_evento='0004-02-16' and nro_solici='1900044857'
GO
UPDATE movimi
SET f_evento='2005-12-29'
WHERE f_evento='0205-12-29' and nro_solici='2004013585 '
GO
UPDATE movimi
SET f_evento='2005-06-28'
WHERE f_evento='0205-06-28' and nro_solici='1994003577'
GO
UPDATE movimi
SET f_evento='2005-06-28'
WHERE f_evento='0205-06-28' and nro_solici='1994003577'
GO
UPDATE movimi
SET f_evento='2006-01-16'
WHERE f_evento='0206-01-16' and nro_solici='1998008979'
GO
UPDATE movimi
SET f_evento='2006-01-31'
WHERE f_evento='0206-01-31' and nro_solici='2003005308'
GO
UPDATE movimi
SET f_evento='2006-02-02'
WHERE f_evento='0006-02-02' and nro_solici='1995008693'
GO
UPDATE movimi
SET f_evento='2006-02-06'
WHERE f_evento='0006-02-06' and nro_solici='1996005669'
GO
UPDATE movimi
SET f_evento='2006-02-21'
WHERE f_evento='0006-02-21' and nro_solici='2006003194'
GO
UPDATE movimi
SET f_evento='2006-03-02'
WHERE f_evento='0006-03-02' and nro_solici='1997005702'
GO
UPDATE movimi
SET f_evento='2006-03-14'
WHERE f_evento='0006-03-14' and nro_solici='1997005702'
GO
UPDATE movimi
SET f_evento='2006-05-25'
WHERE f_evento='0006-05-25' and nro_solici='1997015159'
GO
UPDATE movimi
SET f_evento='2005-07-28'
WHERE f_evento='0205-07-28' and nro_solici='1901001146'
GO
UPDATE movimi
SET f_evento='2006-06-16'
WHERE f_evento='0006-06-16' and nro_solici='1997015159'
GO
UPDATE movimi
SET f_evento='2006-05-26'
WHERE f_evento='0006-05-26' and nro_solici='1996002798'
GO
UPDATE movimi
SET f_evento='2006-05-26'
WHERE f_evento='0006-05-26' and nro_solici='1996002829'
GO
UPDATE movimi
SET f_evento='2006-05-19'
WHERE f_evento='0006-05-19' and nro_solici='1995005656'
GO
UPDATE movimi
SET f_evento='2006-05-26'
WHERE f_evento='0006-05-26' and nro_solici='1995010597'
GO
UPDATE movimi
SET f_evento='2006-05-25'
WHERE f_evento='0006-05-25' and nro_solici='1900046054'
GO
UPDATE movimi
SET f_evento='2005-12-30'
WHERE f_evento='0005-12-30' and nro_solici='1900045816'
GO
UPDATE movimi
SET f_evento='2006-08-10'
WHERE f_evento='0006-08-10' and nro_solici='2003017606'
GO
UPDATE movimi
SET f_evento='2006-01-13'
WHERE f_evento='0006-01-13' and nro_solici='1996000246'
GO
UPDATE movimi
SET f_evento='2006-08-24'
WHERE f_evento='0200-08-24' and nro_solici='1900046770'
GO
UPDATE movimi
SET f_evento='2006-08-24'
WHERE f_evento='0200-08-24' and nro_solici='1900046770'
GO
UPDATE movimi
SET f_evento='2006-12-07'
WHERE f_evento='0006-12-07' and nro_solici='2006024120'
GO
UPDATE movimi
SET f_evento='2006-08-10'
WHERE f_evento='0006-08-10' and nro_solici='1994007716'
GO
UPDATE movimi
SET f_evento='2007-02-01'
WHERE f_evento='0007-02-01' and nro_solici='2006023864'
GO
UPDATE movimi
SET f_evento='2007-02-01'
WHERE f_evento='0007-02-01' and nro_solici='2004010298'
GO
UPDATE movimi
SET f_evento='2007-02-01'
WHERE f_evento='0007-02-01' and nro_solici='2006032208'
GO
UPDATE movimi
SET f_evento='2007-02-01'
WHERE f_evento='0007-02-01' and nro_solici='2006028642'
GO
UPDATE movimi
SET f_evento='2007-02-01'
WHERE f_evento='0007-02-01' and nro_solici='2006020968'
GO
UPDATE movimi
SET f_evento='2007-02-01'
WHERE f_evento='0007-02-01' and nro_solici='2006027704'
GO
UPDATE movimi
SET f_evento='2007-02-05'
WHERE f_evento='0007-02-05' and nro_solici='2004006380'
GO
UPDATE movimi
SET f_evento='2007-02-01'
WHERE f_evento='0200-02-01' and nro_solici='2007001372'
GO
UPDATE movimi
SET f_evento='2007-02-06'
WHERE f_evento='0072-02-06' and nro_solici='2006037330'
GO
UPDATE movimi
SET f_evento='2007-04-10'
WHERE f_evento='0107-04-10' and nro_solici='2007011853'
GO
UPDATE movimi
SET f_evento='2006-06-23'
WHERE f_evento='0206-06-23' and nro_solici='1900047025'
GO
UPDATE movimi
SET f_evento='2013-01-30'
WHERE f_evento='0013-01-30' and nro_solici='2013004145'
GO
UPDATE movimi
SET f_evento='2008-02-28'
WHERE f_evento='2080-02-28' and nro_solici='1900051379'
GO

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--CORRECION DEL CAMPO FECHA F_VENCIM DE LA TABLA MOVIMI
--select nro_solici,f_vencim from movimi
--where DAY(f_vencim)>31 or MONTH(f_vencim)>12 or YEAR (f_vencim)>9999 or YEAR(f_vencim)<1752

UPDATE movimi
SET f_vencim='2010-03-31'
WHERE f_vencim='0210-03-31' and nro_solici='1999007827'
GO
UPDATE movimi
SET f_vencim='2010-04-24'
WHERE f_vencim='0210-04-24' and nro_solici='1999008195'
GO
UPDATE movimi
SET f_vencim='2010-06-12'
WHERE f_vencim='0210-06-12' and nro_solici='2000002839'
GO
UPDATE movimi
SET f_vencim='2010-04-14'
WHERE f_vencim='0210-04-14' and nro_solici='1998004390'
GO
UPDATE movimi
SET f_vencim='2010-05-10'
WHERE f_vencim='0210-05-10' and nro_solici='1998008026'
GO
UPDATE movimi
SET f_vencim='2010-06-29'
WHERE f_vencim='0210-06-29' and nro_solici='1999010589'
GO
UPDATE movimi
SET f_vencim='2020-08-07'
WHERE f_vencim='0210-08-07' and nro_solici='2000001622'
GO
UPDATE movimi
SET f_vencim='2010-09-29'
WHERE f_vencim='0210-09-29' and nro_solici='1999005610'
GO
UPDATE movimi
SET f_vencim='2010-10-19'
WHERE f_vencim='0210-10-19' and nro_solici='1999017304'
GO
UPDATE movimi
SET f_vencim='2010-03-22'
WHERE f_vencim='0210-03-22' and nro_solici='1999013475'
GO
UPDATE movimi
SET f_vencim='2011-04-23'
WHERE f_vencim='0211-04-23' and nro_solici='2000013651'
GO
UPDATE movimi
SET f_vencim='2010-12-27'
WHERE f_vencim='0210-12-27' and nro_solici='2000001440'
GO
UPDATE movimi
SET f_vencim='2011-05-08'
WHERE f_vencim='0211-05-08' and nro_solici='2000009333'
GO
UPDATE movimi
SET f_vencim='2011-05-08'
WHERE f_vencim='0211-05-08' and nro_solici='2000009333'
GO
UPDATE movimi
SET f_vencim='2012-01-29'
WHERE f_vencim='0212-01-29' and nro_solici='2001001998'
GO
UPDATE movimi
SET f_vencim='2022-07-02'
WHERE f_vencim='0212-07-02' and nro_solici='2001003880'
GO
UPDATE movimi
SET f_vencim='2012-02-13'
WHERE f_vencim='0210-02-13' and nro_solici='2001002537'
GO
UPDATE movimi
SET f_vencim='2022-09-09'
WHERE f_vencim='0212-09-09' and nro_solici='2000009823'
GO
UPDATE movimi
SET f_vencim='2022-08-20'
WHERE f_vencim='0212-08-20' and nro_solici='2002005701'
GO
UPDATE movimi
SET f_vencim='2012-12-12'
WHERE f_vencim='0212-12-12' and nro_solici='2002010110'
GO
UPDATE movimi
SET f_vencim='2013-01-28'
WHERE f_vencim='1213-01-28' and nro_solici='2002001001'
GO
UPDATE movimi
SET f_vencim='2023-03-24'
WHERE f_vencim='0210-03-24' and nro_solici='2001003385'
GO
UPDATE movimi
SET f_vencim='2013-04-08'
WHERE f_vencim='0213-04-08' and nro_solici='2002017922'
GO
UPDATE movimi
SET f_vencim='2013-04-28'
WHERE f_vencim='0213-04-28' and nro_solici='2002016161'
GO
UPDATE movimi
SET f_vencim='2013-04-28'
WHERE f_vencim='0213-04-28' and nro_solici='2002016161'
GO
UPDATE movimi
SET f_vencim='2013-05-15'
WHERE f_vencim='0210-05-15' and nro_solici='2003001492'
GO
UPDATE movimi
SET f_vencim='2023-05-15'
WHERE f_vencim='0210-05-15' and nro_solici='2002010211'
GO
UPDATE movimi
SET f_vencim='2023-08-13'
WHERE f_vencim='0210-08-13' and nro_solici='2003009694'
GO
UPDATE movimi
SET f_vencim='2013-08-11'
WHERE f_vencim='0213-08-11' and nro_solici='2001005089'
GO
UPDATE movimi
SET f_vencim='2013-10-01'
WHERE f_vencim='0213-10-01' and nro_solici='2002016644'
GO
UPDATE movimi
SET f_vencim='2013-12-22'
WHERE f_vencim='0213-12-22' and nro_solici='2000000854'
GO
UPDATE movimi
SET f_vencim='2013-12-22'
WHERE f_vencim='0213-12-22' and nro_solici='2003007928'
GO
UPDATE movimi
SET f_vencim='2009-12-16'
WHERE f_vencim='0209-12-16' and nro_solici='1999005653'
GO
UPDATE movimi
SET f_vencim='2010-08-29'
WHERE f_vencim='0210-08-29' and nro_solici='2002008974'
GO
UPDATE movimi
SET f_vencim='2027-06-12'
WHERE f_vencim='0730-06-12' and nro_solici='2006030408'
GO
UPDATE movimi
SET f_vencim='2017-11-23'
WHERE f_vencim='0117-11-23' and nro_solici='2007010813'
GO
UPDATE movimi
SET f_vencim='2018-11-14'
WHERE f_vencim='0118-11-14' and nro_solici='2008023582'
GO
UPDATE movimi
SET f_vencim='2018-11-25'
WHERE f_vencim='0118-11-25' and nro_solici='2008017624'
GO
UPDATE movimi
SET f_vencim='2010-07-28'
WHERE f_vencim='0210-07-28' and nro_solici='2008038769'
GO
UPDATE movimi
SET f_vencim='2010-07-28'
WHERE f_vencim='0210-07-28' and nro_solici='2009000949'
GO
UPDATE movimi
SET f_vencim='2019-08-05'
WHERE f_vencim='0230-08-05' and nro_solici='2009007921'
GO
UPDATE movimi
SET f_vencim='2010-07-21'
WHERE f_vencim='0210-07-21' and nro_solici='2009028415'
GO
UPDATE movimi
SET f_vencim='2010-07-16'
WHERE f_vencim='0210-07-16' and nro_solici='2006001153'
GO
UPDATE movimi
SET f_vencim='2020-07-27'
WHERE f_vencim='0220-07-27' and nro_solici='2009035855'
GO
UPDATE movimi
SET f_vencim='2010-12-06'
WHERE f_vencim='0210-12-06' and nro_solici='2010022083'
GO
UPDATE movimi
SET f_vencim='2020-12-06'
WHERE f_vencim='0220-12-06' and nro_solici='2010003225'
GO
UPDATE movimi
SET f_vencim='2021-08-05'
WHERE f_vencim='0121-08-05' and nro_solici='2011009290'
GO
UPDATE movimi
SET f_vencim='2021-10-11'
WHERE f_vencim='0121-10-11' and nro_solici='2011018728'
GO
UPDATE movimi
SET f_vencim='2021-11-14'
WHERE f_vencim='0121-11-14' and nro_solici='2011022998'
GO
UPDATE movimi
SET f_vencim='2022-08-07'
WHERE f_vencim='0131-08-07' and nro_solici='2011041320'
GO
UPDATE movimi
SET f_vencim='2022-11-08'
WHERE f_vencim='0211-11-08' and nro_solici='2012020033'
GO
UPDATE movimi
SET f_vencim='2023-01-10'
WHERE f_vencim='0211-01-24' and nro_solici='2012016845'
GO
UPDATE movimi
SET f_vencim='2023-07-23'
WHERE f_vencim='0213-07-23' and nro_solici='2013011874'
GO
UPDATE movimi
SET f_vencim='2024-03-11'
WHERE f_vencim='0224-03-11' and nro_solici='2013026888'
GO
UPDATE movimi
SET f_vencim='2025-01-20'
WHERE f_vencim='0125-01-20' and nro_solici='2014017591'
GO
UPDATE movimi
SET f_vencim='2026-02-11'
WHERE f_vencim='0216-02-11' and nro_solici='2015033441'
GO
UPDATE movimi
SET f_vencim='2026-02-26'
WHERE f_vencim='0226-02-26' and nro_solici='2015028399'
GO
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---CORRECCION DEL CAMPO FECHA F_TRANS DE LA TABLA MOVIMI

--select nro_solici,f_trans from movimi
--where DAY(f_trans)>31 or MONTH(f_trans)>12 or YEAR (f_trans)>9999 or YEAR(f_trans)<1752

UPDATE movimi
SET f_trans='1996-12-24'
WHERE f_trans='1196-12-24' and nro_solici='1900046218'
GO
UPDATE movimi
SET f_trans='2005-09-22'
WHERE f_trans='0200-09-22' and nro_solici='2004011438'
GO
UPDATE movimi
SET f_trans='2005-11-01'
WHERE f_trans='0005-11-01' and nro_solici='2005014986'
GO
UPDATE movimi
SET f_trans='2009-01-27'
WHERE f_trans='0209-01-27' and nro_solici='2008024023'
GO
UPDATE movimi
SET f_trans='2006-11-29'
WHERE f_trans='0201-11-29' and nro_solici='2004017137'
GO
UPDATE movimi
SET f_trans='2011-10-20'
WHERE f_trans='1163-10-20' and nro_solici='1900013641'
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--CONSULTA PARA ENCONTRAR LOS AGENTES QUE NO ESTAN SIENDO UTILIZADOS  EN LA TABLA MARCAS
--SELECT  * FROM agentes WHERE agente NOT IN (SELECT agente  FROM marca)

-- CONSULTA PARA ELIMINAR LOS AGENTES QUE NO ESTAN SIENDO UTILIZADOS EN LA TABLA MARCA 
DELETE FROM agentes 
WHERE agente NOT IN (SELECT agente FROM dbo.vw_origin_marca)
GO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---select rtrim(ltrim(code_user)), cod_usuario from users
---order by code_user  


--update movimi
--set usuario= REPLACE(usuario,space(1),space(0))
--where usuario='EDITH REGI'
--GO
--update movimi
--set usuario='OWON'
--where usuario='' 
--GO
--update movimi 
--set cod_usuario='183'
--where cod_usuario is null and usuario='OWON' 
--GO 
-- ALTERACION DE LA TABLA MOVIMI PARA AGREGAR EL CAMPO CODIGO DE USUARIO

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--CORRECCION DEL CAMPO FECHA SOLICITADA DE LA  TABLA PETICION

--select num_serie,solicitada from peticion
--where DAY(solicitada)>31 or MONTH(solicitada)>12 or YEAR (solicitada)>9999 or YEAR(solicitada)<1752
--GO
--select num_serie,solicitada from peticion
--where DAY(solicitada)<1 or MONTH(solicitada)<1 or YEAR (solicitada)>9999 or YEAR(solicitada)<1752
--GO
UPDATE peticion
SET solicitada='2000-07-18'
WHERE solicitada='0200-07-18' and num_serie='2001006322'
GO
UPDATE peticion
SET solicitada='2003-10-01'
WHERE solicitada='1203-10-01' and num_serie='2003025116'
GO
UPDATE peticion
SET solicitada='2005-03-30'
WHERE solicitada='0005-03-30' and num_serie='2005005683'
GO
UPDATE peticion
SET solicitada='2004-03-30'
WHERE solicitada='1004-03-30' and num_serie='2005005687'
GO
UPDATE peticion
SET solicitada='2006-03-02'
WHERE solicitada='0006-03-02' and num_serie='2006009146'
GO
UPDATE peticion
SET solicitada='2005-02-15'
WHERE solicitada='0005-02-15' and num_serie='2005002920'
GO
UPDATE peticion
SET solicitada='2006-05-25'
WHERE solicitada='0006-05-25' and num_serie='2006019113'
GO
UPDATE peticion
SET solicitada='2006-05-26'
WHERE solicitada='0006-05-26' and num_serie='2006019360'
GO
UPDATE peticion
SET solicitada='2006-05-26'
WHERE solicitada='0006-05-26' and num_serie='2006028539'
GO
UPDATE peticion
SET solicitada='2006-05-19'
WHERE solicitada='0006-05-19' and num_serie='2006018796'
GO
UPDATE peticion
SET solicitada='2006-05-26'
WHERE solicitada='0006-05-26' and num_serie='2006019260'
GO
UPDATE peticion
SET solicitada='2006-05-25'
WHERE solicitada='0006-05-25' and num_serie='2006019109'
GO
UPDATE peticion
SET solicitada='2005-07-28'
WHERE solicitada='0205-07-28' and num_serie='2005018506'
GO
UPDATE peticion
SET solicitada='2005-12-30'
WHERE solicitada='0005-12-30' and num_serie='2005037216'
GO
UPDATE peticion
SET solicitada='2006-08-10'
WHERE solicitada='0006-08-10' and num_serie='2006004015'
GO
UPDATE peticion
SET solicitada='2006-01-13'
WHERE solicitada='0006-01-13' and num_serie='2006001762'
GO
UPDATE peticion
SET solicitada='2006-06-23'
WHERE solicitada='0206-06-23' and num_serie='2006023143'
GO
UPDATE peticion
SET solicitada='2006-10-01'
WHERE solicitada='1206-10-01' and num_serie='2006001359'
GO
UPDATE peticion
SET solicitada='2009-02-11'
WHERE solicitada='0209-02-11' and num_serie='2009004826'
GO
UPDATE peticion
SET solicitada='2009-02-16'
WHERE solicitada='0099-02-16' and num_serie='2009052661'
GO
UPDATE peticion
SET solicitada='2009-09-14'
WHERE solicitada='0209-09-14' and num_serie='2009026973'
GO
UPDATE peticion
SET solicitada='2009-11-26'
WHERE solicitada='1209-11-26' and num_serie='2009030749'
GO
UPDATE peticion
SET solicitada='2010-01-04'
WHERE solicitada='0201-01-04' and num_serie='2010000051'
GO
UPDATE peticion
SET solicitada='2009-06-17'
WHERE solicitada='0009-06-17' and num_serie='2009017898'
GO
UPDATE peticion
SET solicitada='2010-02-23'
WHERE solicitada='1020-02-23' and num_serie='2010005693'
GO
UPDATE peticion
SET solicitada='2010-08-11'
WHERE solicitada='0201-08-11' and num_serie='2011026858'
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--CORRECCION DE LA FECHA STAT_DESDE DE LA TABLA PETICION 

--select num_serie,stat_desde from peticion
--where DAY(stat_desde)>31 or MONTH(stat_desde)>12 or YEAR (stat_desde)>9999 or YEAR(stat_desde)<1752
--GO

UPDATE peticion
SET stat_desde='2004-06-28'
WHERE stat_desde='0204-06-28' and num_serie='2004002147'
GO
UPDATE peticion
SET stat_desde='2006-03-14'
WHERE stat_desde='0006-03-14' and num_serie='2006009146'
GO
UPDATE peticion
SET stat_desde='2006-03-14'
WHERE stat_desde='0006-03-14' and num_serie='2006009146'
GO
UPDATE peticion
SET stat_desde='2005-02-15'
WHERE stat_desde='0005-02-15' and num_serie='2005002920'
GO
UPDATE peticion
SET stat_desde='2006-06-16'
WHERE stat_desde='0006-06-16' and num_serie='2006019113'
GO
UPDATE peticion
SET stat_desde='2006-05-26'
WHERE stat_desde='0006-05-26' and num_serie='2006028539'
GO
UPDATE peticion
SET stat_desde='2006-05-19'
WHERE stat_desde='0006-05-19' and num_serie='2006018796'
GO
UPDATE peticion
SET stat_desde='2006-05-26'
WHERE stat_desde='0006-05-26' and num_serie='2006019260'
GO
UPDATE peticion
SET stat_desde='2006-05-25'
WHERE stat_desde='0006-05-25' and num_serie='2006019109'
GO
UPDATE peticion
SET stat_desde='2005-07-28'
WHERE stat_desde='0205-07-28' and num_serie='2005018506'
GO
UPDATE peticion
SET stat_desde='2005-12-30'
WHERE stat_desde='0005-12-30' and num_serie='2005037216'
GO
UPDATE peticion
SET stat_desde='2006-08-10'
WHERE stat_desde='0006-08-10' and num_serie='2006004015'
GO
UPDATE peticion
SET stat_desde='2006-01-13'
WHERE stat_desde='0006-01-13' and num_serie='2006001762'
GO
UPDATE peticion
SET stat_desde='2006-06-23'
WHERE stat_desde='0206-06-23' and num_serie='2006023143'
GO
UPDATE peticion
SET stat_desde='2009-02-11'
WHERE stat_desde='0209-02-11' and num_serie='2009004826'
GO
UPDATE peticion
SET stat_desde='2009-02-16'
WHERE stat_desde='0099-02-16' and num_serie='2009052661'
GO
UPDATE peticion
SET stat_desde='2009-09-14'
WHERE stat_desde='0209-09-14' and num_serie='2009026973'
GO
UPDATE peticion
SET stat_desde='2009-11-26'
WHERE stat_desde='1209-11-26' and num_serie='2009030749'
GO
UPDATE peticion
SET stat_desde='2010-02-04'
WHERE stat_desde='0010-02-04' and num_serie='2005025262'
GO
UPDATE peticion
SET stat_desde='2009-06-17'
WHERE stat_desde='0009-06-17' and num_serie='2009017898'
GO
UPDATE peticion
SET stat_desde='2010-08-11'
WHERE stat_desde='0201-08-11' and num_serie='2011026858'
GO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--CORRECCION DEL CAMPO HORA EN LA TABLA DE PETICION 

--SELECT num_serie,hora,SUBSTRING(hora, 1, 2)+':'+SUBSTRING(hora, 3,
--  2)+':'+ SUBSTRING(hora, 5, 2) 
--  FROM peticion
--  WHERE SUBSTRING(hora, 1, 2)>24 OR SUBSTRING(hora, 3,2)>60 OR SUBSTRING(hora, 5, 2)>60 
--  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'131480','134808')
  Where hora= '131480'and num_serie='2006015178'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'112772','112727')
  Where hora= '112772'and num_serie='2006015597'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'151390','151309')
  Where hora= '151390'and num_serie='2006017432'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'142291','142219')
  Where hora= '142291'and num_serie='2006019138'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'113583','113538')
  Where hora= '113583'and num_serie='2006022587'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'105074','105047')
  Where hora= '105074'and num_serie='2005034123'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'114573','114537')
  Where hora= '114573'and num_serie='2006023071'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'113293','113239')
  Where hora= '113293'and num_serie='2005033166'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'110390','110309')
  Where hora= '110390'and num_serie='2005029439'   
  GO
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   --select num_serie, hora from peticion
   ---WHERE LEN(LTRIM(RTRIM(hora)))<6
   --GO
  UPDATE peticion
  SET hora=REPLACE(hora,'1337  ','133712')
  Where hora= '1337  'and num_serie='2006008567'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'1357  ','133712')
  Where hora= '1357  'and num_serie='2006014750'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'1425  ','142512')
  Where hora= '1425  'and num_serie='2006019144'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'14237 ','142337')
  Where hora= '14237 'and num_serie='2006019140'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'11314 ','113114')
  Where hora= '11314 'and num_serie='2006019081'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'1121  ','112102')
  Where hora= '1121  'and num_serie='2006015426'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,'  1415','081415')
  Where hora= '  1415'and num_serie='2007019524'   
  GO
  UPDATE peticion
  SET hora=REPLACE(hora,' 12404','124040')
  Where hora= ' 12404'and num_serie='2009014828'   
  GO
  DELETE from peticion  where num_serie='' and hora=''
  GO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select substring(hora, 1,2) as HORA_INCORRECTA, hora, num_serie from peticion where hora between '00:00:00' and '06:59:59' order by hora    
update peticion 
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'12') 
where SUBSTRING(hora,1,2)='00'
GO
update peticion 
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'13') 
where SUBSTRING(hora,1,2)='01'
GO
update peticion 
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'14') 
where SUBSTRING(hora,1,2)='02'
GO
update peticion 
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'15') 
where SUBSTRING(hora,1,2)='03'
GO
update peticion 
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'16') 
where SUBSTRING(hora,1,2)='04'
GO
update peticion 
set hora= REPLACE(hora,SUBSTRING(hora,1,2),'17') 
where SUBSTRING(hora,1,2)='05'
GO
--===========================================================================================================================================================================================================================================================================================================================================

--DELETE PARA ELIMINAR NUMERO ENTRADA NO VALIDOS
DELETE FROM MOVIMI
WHERE n_entrada='    0    0 ' and evento='PU'

DELETE FROM MOVIMI
WHERE n_entrada='    0    0 ' and evento='DP'

DELETE FROM MOVIMI
WHERE n_entrada='    0    0 ' and evento='DS'

DELETE FROM MOVIMI
WHERE n_entrada='    0    0 ' and evento='OT'

DELETE FROM MOVIMI
WHERE n_entrada='    0    0 ' and evento='AI'

DELETE FROM MOVIMI
WHERE n_entrada='    0    0 ' and evento='ST'

DELETE FROM MOVIMI
WHERE n_entrada='    0    0 ' and evento='US'



                                                                                                                                                                                        




