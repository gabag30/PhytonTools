import pyodbc

cnxn = pyodbc.connect(conn_str, autocommit=True)
crsr = cnxn.cursor()
crsr.execute("TRUNCATE TABLE fast_executemany_test")

crsr.fast_executemany = True  # new in pyodbc 4.0.19

sql = "INSERT INTO fast_executemany_test (txtcol) VALUES (?)"
params = [(f'txt{i:06d}',) for i in range(1000)]
t0 = time.time()
crsr.executemany(sql, params)
print(f'{time.time() - t0:.1f} seconds')