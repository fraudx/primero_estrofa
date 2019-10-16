de Tkinter import  *
de calculadora import  *
desde la importación de  registros *

clase  InterfazCalculadora ():

    def  __init__ ( self ):
        color_boton = ( " gray77 " )
        color_alerta = ( " rojo " )
        ancho_boton = 11
        alto_boton = 3
        self .root = Tk ()
        self .root.title ( " CALCULADORA " )
        self .calculadora = Calculadora ()
        self .operador =  " "

        self .frame = Frame ( self .root)
        self .frame.configure ( background = " SkyBlue4 " )
        self .frame.pack ()

        self .cadena = StringVar ()
        self .display = Label ( self .frame, textvariable = self .cadena, font = ( " Helvetica " , 30 ), justify = " left " , bg = " polvo azul " , ancho = 15 )
        self .display.grid ( fila = 0 , columna = 0 , columnas = 4 , padx = 10 , pady = 10 )

        fila =  1
        columna =  0


        Botón ( self .frame, text = " 7 " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .digito ( " 7 " )). Grid ( fila = 1 , columna = 0 )
        Botón ( self .frame, text = " 8 " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .digito ( " 8 " )). Grid ( fila = 1 , columna = 1 )
        Botón ( self .frame, text = " 9 " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .digito ( " 9 " )). Grid ( fila = 1 , columna = 2 )
        Botón ( self .frame, text = " 4 " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .digito ( " 4 " )). Grid ( fila = 2 , columna = 0 )
        Botón ( self .frame, text = " 5 " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .digito ( " 5 " )). Grid ( fila = 2 , columna = 1 )
        Botón ( self .frame, text = " 6 " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .digito ( " 6 " )). Grid ( fila = 2 , columna = 2 )
        Botón ( self .frame, text = " 1 " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .digito ( " 1 " )). Grid ( fila = 3 , columna = 0 )
        Botón ( self .frame, text = " 2 " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .digito ( " 2 " )). Grid ( fila = 3 , columna = 1 )
        Botón ( self .frame, text = " 3 " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .digito ( " 3 " )). Grid ( fila = 3 , columna = 2 )
        Botón ( self .frame, text = " 0 " , bg = color_boton, width = 42 , height = alto_boton, command  =  lambda : self .digito ( " 0 " )). Grid ( row = 4 , column = 0 , columnpan = 3 )

        Botón ( self .frame, text = " / " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .operacion ( " / " )). Grid ( fila = 1 , columna = 3 )
        Botón ( self .frame, text = " * " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .operacion ( " * " )). Grid ( fila = 2 , columna = 3 )
        Botón ( self .frame, text = " - " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .operacion ( " - " )). Grid ( fila = 3 , columna = 3 )
        Botón ( self .frame, text = " + " , bg = color_boton, width = ancho_boton, height = alto_boton, command  =  lambda : self .operacion ( " + " )). Grid ( fila = 4 , columna = 3 )
        Botón ( self .frame, text = " C " , bg = color_alerta, width = ancho_boton, height = alto_boton, command  =  lambda : self .operacion ( " C " )). Grid ( fila = 5 , columna = 3 )
        Botón ( self .frame, text = " = " , bg = color_boton, width = 42 , height = alto_boton, command  =  lambda : self .operacion ( " = " )). Grid ( fila = 5 , columna = 0 , columnaspan = 3 )
        self .root.mainloop ()

    @save_to_log
    def  digito ( self , txt ):
        self .cadena.set ( self .cadena.get () + txt)


    @save_to_log
    def  operacion ( self , txt ):
        si txt en [ " + " , " - " , " * " , " / " ]:
            self .calculadora.set_valor1 ( int ( self .cadena.get ()))
            self .operador = txt
            self .cadena.set ( " " )
        si txt ==  " = " :
            self .calculadora.set_valor2 ( int ( self .cadena.get ()))
            if  self .operador ==  " + " :
                self .calculadora.sumar ()
            if  self .operador ==  " - " :
                self .calculadora.restar ()
            if  self .operador ==  " / " :
                self .calculadora.dividir ()
            if  self .operador ==  " * " :
                self .calculadora.multiplicar ()
            self .cadena.set ( self .calculadora.get_resultado ())
        si txt ==  " C " :
            self .calculadora.set_valor1 ( 0 )
            self .calculadora.set_valor2 ( 0 )
            self .cadena.set ( " " )
        

aplicación = InterfazCalculadora ()
