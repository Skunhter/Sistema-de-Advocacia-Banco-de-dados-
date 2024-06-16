import tkinter
from tkinter import *
from tkinter import ttk
from view import *
from tkinter import messagebox
from tkcalendar import Calendar, DateEntry

################# cores ###############
co0 = "#f0f3f5"  # Preta
co1 = "#feffff"  # branca
co2 = "#4fa882"  # verde
co3 = "#38576b"  # valor
co4 = "#403d3d"   # letra
co5 = "#e06636"   # - profit
co6 = "#038cfc"   # azul
co7 = "#ef5350"   # vermelha
co8 = "#263238"   # + verde
co9 = "#e9edf5"   # sky blue

def on_select(value):
    messagebox.showinfo("Tabela", f'Selecionado a tabela {value}')
    if value == "Advogado":
        advogado()
    elif value == "Advocacia":
        advocacia()
    elif value == "Advocacia_Endereço":
        advocacia_endereco()
    elif value == "Atendimento":
        atendimento()
    elif value == "Caso":
        caso()
    elif value == "Cliente":
        cliente()
    elif value == "Endereço_Advogado":
        endereco_advogado()
    elif value == "Endereço_Cliente":
        endereco_cliente()
    elif value == "Especialidade_Advogado":
        especialidade_advogado()
    else: messagebox.showinfo("Tabela", f'Tabela {value} invalido')

def janela(lista, nome_tabela, hd, h):

    janela = Tk()

    janela.title('Banco de dados ') + nome_tabela
    janela.geometry('1300x600')
    janela.configure(background=co9)
    janela.resizable(width=False, height=False)

    #######################Divindo a Janela##########################################

    frame_cima = Frame(janela, width=350, height=50, bg=co2, relief='flat')
    frame_cima.grid(column=0, row=0)

    frame_baixo = Frame(janela, width=350, height=550, bg=co1, relief='flat')
    frame_baixo.grid(column=0, row=1, sticky=NSEW, padx=0, pady=1)

    frame_direita = Frame(janela, width=588, height=600, bg=co1, relief='flat')
    frame_direita.grid(column=1, row=0, rowspan=2, padx=1, pady=0,sticky=NSEW)


    ########################Label Cima##############################################

    app_nome = Label(frame_cima, text='Formulário de ' + nome_tabela, anchor=NW, font=('Ivy 11 bold'), bg=co2, fg=co1, relief='flat')
    app_nome.place(x=10, y=20)

    def abrir_nova_janela(value):
        valor = value
        selected_value.set('')
        on_select(valor)

    selected_value = StringVar()

    opcoes = ['Advogado', 'Advocacia', 'Advocacia_Endereço', 'Atendimento', 'Caso', 'Cliente',
              'Endereço_Advogado', 'Endereço_Cliente', 'Especialidade_Advogado']

    dropdown = OptionMenu(janela, selected_value, *opcoes, command=abrir_nova_janela)
    dropdown.configure(font=('Ivy 8 bold'), bg=co2, fg=co1, relief='flat')
    dropdown.place(x=300, y=12)



    global tree

    # funcao inserir
    def inserir():

        lista_insert = []
        for i in lista_valor:
            lista_insert.append(i.get())

        status = 1
        for i in lista_insert:
            if i == '':
                status = 0
        if status == 0:
            messagebox.showerror('Erro', 'Todos os campos precisam estar preenchidos.')
        else:
            inserir_info(lista_insert, nome_tabela, lista)
            messagebox.showinfo('Info', 'Inserir cadastrado com sucesso!')

        for i in lista_valor:
            i.delete(0, END)

        for widget in frame_direita.winfo_children():
            widget.destroy()

        mostrar(nome_tabela)

    # funcao atualizar

    def atualizar():
        try:
            treev_dados = tree.focus()
            treev_dicionario = tree.item(treev_dados)
            tree_lista = treev_dicionario['values']

            valor_id = tree_lista[0]

            idx = 0

            for i in lista_valor:
                i.delete(0, END)
            for i in tree_lista:
                if idx != 0:
                    lista_valor[idx-1].insert(idx-1, i)
                idx += 1


            def update():

                lista_insert = []
                for i in lista_valor:
                    lista_insert.append(i.get())

                lista_update = lista_insert
                lista_update.append(valor_id)
                if lista_insert[1] == '':
                    messagebox.showerror('Erro', 'Nome não pode estar vazio.')
                else:
                    atualizar_info(nome_tabela, lista_update, lista)
                    messagebox.showinfo('Info', 'Informações atualizadas com sucesso!')

                for i in lista_valor:
                    i.delete(0, END)

                for widget in frame_direita.winfo_children():
                    widget.destroy()
                mostrar(nome_tabela)

                b_confirmar.destroy()

            b_confirmar = Button(frame_baixo, command=update,text='Confirmar', width=10, anchor=NW, font=('Ivy 7 bold'), bg=co2, fg=co1,
                                     relief='raised', overrelief='ridge')
            b_confirmar.place(x=110, y=520)

        except IndexError:
            messagebox.showerror('Erro', 'Selecione um dos dados na tabela')

    # Função Deletar
    def deletar():
        try:
            treev_dados = tree.focus()
            treev_dicionario = tree.item(treev_dados)
            tree_lista = treev_dicionario['values']

            valor_id = [tree_lista[0]]

            deletar_info(nome_tabela, valor_id)
            messagebox.showinfo('Info', 'Informação deletada da tabela com sucesso!')

            for widget in frame_direita.winfo_children():
                widget.destroy()
            mostrar(nome_tabela)

        except IndexError:
            messagebox.showerror('Erro', 'Selecione um dos dados na tabela')


    ########################Configurando frame de baixo##############################################

    ############Nome####################
    lista_categoria = []
    lista_valor = []
    y = 10
    ver = 0
    for idx, i in enumerate(lista):
        if idx != 0:
            lista_categoria.append(Label(frame_baixo, text=i + ' *', anchor=NW, font=('Ivy 10 bold'), bg=co1, fg=co4,
                                          relief='flat'))
            lista_categoria[ver].place(x=10, y=y)
            y += 30
            if nome_tabela != 'Atendimento':
                lista_valor.append(Entry(frame_baixo, width=45, justify="left", relief='solid'))
                lista_valor[ver].place(x=15, y=y)
            elif idx != 4:
                lista_valor.append(Entry(frame_baixo, width=45, justify="left", relief='solid'))
                lista_valor[ver].place(x=15, y=y)
            else:
                lista_valor.append(DateEntry(frame_baixo, width=35, background='darkblue', foreground='white', borderwidth='2', date_pattern='yyyy-MM-dd'))
                lista_valor[ver].place(x=15, y=y)

            y += 30
            ver = ver + 1



    ############Botão Inferior##########
    b_inserir = Button(frame_baixo, command=inserir,text='Inserir', width=10, anchor=NW, font=('Ivy 9 bold'), bg=co6, fg=co1, relief='raised', overrelief='ridge')
    b_inserir.place(x=15, y=490)

    b_atualizar = Button(frame_baixo, command=atualizar,text='Atualizar', width=10, anchor=NW, font=('Ivy 9 bold'), bg=co2, fg=co1, relief='raised', overrelief='ridge')
    b_atualizar.place(x=110, y=490)

    b_deletar = Button(frame_baixo, command=deletar,text='Deletar', width=10, anchor=NW, font=('Ivy 9 bold'), bg=co7, fg=co1, relief='raised', overrelief='ridge')
    b_deletar.place(x=205, y=490)


    ########################Frame tree######################################

    def mostrar(nome):
        global tree
        global mostrar_tabela

        lista_info = mostrar_info(nome)

        df_lista = lista_info

        tree = ttk.Treeview(frame_direita, selectmode="extended",
                            columns=lista, show='headings')
        #Scroller Vertical
        vsb = ttk.Scrollbar(frame_direita, orient="vertical", command=tree.yview)

        #Scroller Horizontal
        hsb = ttk.Scrollbar(frame_direita, orient="horizontal", command=tree.xview)

        tree.configure(yscrollcommand=vsb.set, xscrollcommand=hsb.set)

        tree.grid(column=0, row=0, sticky='nsew')
        vsb.grid(column=1, row=0, sticky='ns')
        hsb.grid(column=0, row=1, sticky='ew')
        frame_direita.grid_rowconfigure(0, weight=12)


        n = 0

        for col in lista:
            tree.heading(col, text=col.title(), anchor=CENTER)

            tree.column(col, width=h[n], anchor=hd[n])

            n+=1

        for item in df_lista:
            tree.insert('', 'end', values=item)


    # chamando a função mostrar
    mostrar(nome_tabela)

    janela.mainloop()

def advogado():
    lista = ['ID', 'Id_Advocacia', 'Id_Especialidade','Nome','Cpf', 'Telefone']
    nome_tabela = 'Advogado'
    hd = ['center', 'center', 'center', 'nw', 'center', 'center']
    h = [30, 100, 100, 200, 100, 100]
    janela(lista, nome_tabela, hd, h)


def advocacia():
    lista = ['ID', 'Nome', 'Telefone']
    nome_tabela = 'Advocacia'
    hd = ['center', 'nw', 'nw']
    h = [30, 150, 300]
    janela(lista, nome_tabela, hd, h)

def advocacia_endereco():
    lista = ['ID','Id_Advocacia', 'Rua', 'Municipio', 'Cidade', 'Estado', 'Cep', 'Numero']
    nome_tabela = 'Advocacia_Endereco'
    hd = ['center', 'center', 'nw', 'nw', 'nw', 'nw', 'center', 'center']
    h = [30, 100, 100, 100, 100, 100, 100, 100]
    janela(lista, nome_tabela, hd, h)

def atendimento():
    lista = ['ID', 'Id_Caso', 'Id_Cliente','Id_Advogado','Data_Atendimento', 'Descricao']
    nome_tabela = 'Atendimento'
    hd = ['center', 'center', 'center', 'center', 'center', 'center', 'nw']
    h = [30, 100, 100, 100, 120, 300]
    janela(lista, nome_tabela, hd, h)

def caso():
    lista = ['ID', 'Id_Cliente', 'Id_Advogado','Descricao']
    nome_tabela = 'Caso'
    hd = ['center', 'center', 'center', 'nw']
    h = [30, 100, 100, 200]
    janela(lista, nome_tabela, hd, h)

def cliente():
    lista = ['ID', 'Nome', 'Cpf','Telefone']
    nome_tabela = 'Cliente'
    hd = ['center', 'nw', 'center', 'center']
    h = [30, 150, 100, 100]
    janela(lista, nome_tabela, hd, h)

def endereco_advogado():
    lista = ['ID','Id_Advogado', 'Rua', 'Municipio', 'Cidade', 'Estado', 'Cep', 'Numero']
    nome_tabela = 'Endereco_Advogado'
    hd = ['center', 'center', 'nw', 'nw', 'nw', 'nw', 'center', 'center']
    h = [30, 100, 100, 100, 100, 100, 100, 100]
    janela(lista, nome_tabela, hd, h)

def endereco_cliente():
    lista = ['ID','Id_Cliente', 'Rua', 'Municipio', 'Cidade', 'Estado', 'Cep', 'Numero']
    nome_tabela = 'Endereco_Cliente'
    hd = ['center', 'center', 'nw', 'nw', 'nw', 'nw', 'center', 'center']
    h = [30, 100, 100, 100, 100, 100, 100, 100]
    janela(lista, nome_tabela, hd, h)

def especialidade_advogado():
    lista = ['ID', 'Descricao']
    nome_tabela = 'Especialidade_Advogado'
    hd = ['center', 'nw']
    h = [30, 300]
    janela(lista, nome_tabela, hd, h)

advocacia()

