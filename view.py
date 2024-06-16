import mysql.connector

conexao = mysql.connector.connect(
    host='localhost',
    user='root',
    password='master',
    database='trabalho_3',
)


################ADVOCACIA##################

### CREATE
def inserir_info(valores, nome_tabela, lista_colunas):
    cursor = conexao.cursor()
    print(valores)

    # Excluindo a primeira coluna e o primeiro valor
    colunas = ', '.join(lista_colunas[1:])
    placeholders = ', '.join(['%s'] * (len(lista_colunas) - 1))

    comando = f'INSERT INTO {nome_tabela} ({colunas}) VALUES ({placeholders})'
    print(comando)

    cursor.execute(comando, valores)
    conexao.commit()  # Commit das alterações no banco de dados

### READ
def mostrar_info(nome):
    cursor = conexao.cursor()
    lista = []
    comando = f'Select * from ' + nome
    cursor.execute(comando)
    info = cursor.fetchall()

    for i in info:
        lista.append(i)
    return lista

### UPDATE
def atualizar_info(nome_tabela, i, lista):
    cursor = conexao.cursor()
    colunas = '=%s, '.join(lista[1:])
    colunas = colunas + '=%s'
    comando = f'update {nome_tabela} set {colunas} where id = %s'
    cursor.execute(comando, i)
    conexao.commit()  # edita banco de dados

### Delete
def deletar_info(nome_tabela, i):
    cursor = conexao.cursor()
    comando = f'delete from {nome_tabela} where id = %s'
    cursor.execute(comando, i)
    conexao.commit()  # edita banco de dados


#######################################################
