#ARBOL 1er intento
#=type nodo{T}
    izq::T
    der::T
    dato :: Int
end 

    function agregarNodo(dato)
        # crea un nuevo nodo y lo devuelve
      nodo(dato)
    end

    raiz=nothing
    function insertar(raiz, dato)
        # inserta un dato nuevo en el árbol
        if raiz == nothing
            # si no hay nodos en el árbol lo agrega
            agregarNodo(dato)
        else
            # si hay nodos en el árbol lo recorre
            if dato <= raiz.dato
                # si el dato ingresado es  menor que el dato guardado va al subárbol izquierdo
                raiz.izq = self.insertar(raiz.izq, dato)
            else:
                # si no, procesa el subárbol derecho
                raiz.der = self.insertar(raiz.der, dato)
              return raiz
            end
        end
    end

    function buscar(raiz, clave)
      # busca el valor clave dentro del arbol
      if raiz == nothing
          print("No se encuentra")
      else
          if clave == raiz.dato
        print("El valor $clave se encuentra en el ABB")
          elseif clave < raiz.dato
              # lado izquierdo
              return buscar(raiz.izq, clave)
          else
             # lado derecho
             return buscar(raiz.der, clave)
          end
      end=#
#------------------------------------------------------------------------------------------------------
errorlex= "✗ Error lexicografico:"

function leer(url)
  cadena=""
  open(url) do f1
    for linea in eachline(f1)
        cadena*= linea
    end
  end
  cadena
end

function analizacomentarios(cade)
con1=[]
con2=[]
res=0
 for i=1:length(cade)
    if cade[i]=='(' && cade[i+1]=='*' ||cade[i]=='{'
      push!(con1, i)
    end
    if cade[i]=='*' && cade[i+1]==')'
      push!(con2, i+1)
    end
    if cade[i]=='}'
      push!(con2, i)
    end 
 end
 if length(con1)==length(con2)
    res=1
 else
    println(" \t \033[1;31m $errorlex comentario mal escrito falta un caracter *),(*,{ o }  \033[1;37m")
 end
 res, con1, con2
end


#------------------------------------------------------------------------------------------------------
#TABLAS DE SIMBOLOS FIJOS

operador=[1 "="    
          2 "+"    
          3 "-"    
          4 "*"    
          5 "DIV"  
          6 "MOD" ]

#operador=Dict("="=>1, "+"=>2, "-"=>3, "*"=>4, "DIV"=>5, "MOD"=>6)
## uso operador["+"]

asignacion=[1 ":="]

delimitador=[1 "("
             2 ")" 
             3 "["
             4 "]" ]
simbolo=[ 1 "^" 
          2 ";"  
          3 ":"
          4 ","
          5 "."]

palabra_reservada=[1 "PROGRAM" 
                   2 "READ" 
                   3 "CLOSE" 
                   4 "ABSOLUTE" 
                   5 "BEGIN" 
                   6 "CONST" 
                   7 "FOR" 
                   8 "DOWNTO" 
                   9 "TO" 
                   10 "CASE" 
                   11 "IF" 
                   12 "IN" 
                   13 "LABEL" 
                   14 "ELSE" 
                   15 "END" 
                   16 "NIL" 
                   17 "WRITE" 
                   18 "REPEAT" 
                   19 "UNIT" 
                   20 "USES" 
                   21 "WITH" 
                   22 "CONSTRUCTOR" 
                   23 "EXTERNAL" 
                   24 "DO" 
                   25 "FILE" 
                   26 "FORWARD" 
                   27 "GOTO" 
                   28 "IMPLEMENTATION" 
                   29 "INLINE" 
                   30 "INTERRUPT" 
                   31 "OF" 
                   32 "PACKED" 
                   33 "PROCEDURE" 
                   34 "RECORD" 
                   35 "PROCEDURE" 
                   36 "PROCEDURE" 
                   37 "PROCEDURE" 
                   38 "PROCEDURE" 
                   39 "SET"
                   40 "SHR"
                   41 "THEN"
                   42 "TYPE"
                   43 "UNTIL"
                   44 "VAR"
                   45 "WHILE"
                   46 "FUNCTION"
                   47 "NEW"]

operador_logico=[1 "¬="
                 2 "<>"
                 3 ">="
                 4 "<="
                 5 "<"
                 6 ">" ]

indicador_tipo=[1 "INTEGER"
                2 "BYTE"
                3 "SHORTINT"
                4 "WORD"
                5 "LONGINT"
                6 "REAL"
                7 "CHAR"
                8 "STRING"
                9 "BOOLEAN"
                10 "TEXT"
                11 "ARRAY"]
#------------------------------------------------------------------------------------------------------

IDENTIFICADOR = "(\\w(\\w|_)*|_(\\w|_)*)"
INDICADORDETIPO="(INTEGER|BYTE|SHORTINT|WORD|LONGINT|REAL|CHAR|STRING|BOOLEAN|TEXT|ARRAY)"

declaravariable="VAR($IDENTIFICADOR|,)+:$INDICADORDETIPO;"

NUMBERFLOAT= "(\\d+\\.\\d+)"
NUMBERINT="(\\d+)"
CADENA = "('\\w(\\w|\\s|-|!|,|\\.|\\(|\\)|@|#|\$|%|&)*')"

on_error = "$errorlex: CARACTER ILEGAL"

#=
  statement ="programa"

  programa ="encabezado bloque ."

  encabezado ="PROGRAM $IDENTIFICADOR;"
  encabezado ="PROGRAM $IDENTIFICADOR PARENTESISA listaident PARENTESISC;"
  bloque ="declaraciones enunciados"
 declaraciones="LABEL declaraetiqueta| CONST declaraconstantes
             | TYPE declaratipos"
 declaraciones="
               LABEL declaraetiqueta declaraciones
             | CONST declaraconstantes declaraciones
             | TYPE declaratipos declaraciones
             | VAR declaracion_variable;
             | VAR declaravariables;
             | FUNCTION declarafunciones;
             | PROCEDURE declaraprocemientos;"

declaraciones=" VAR declaracion_variable; declaraciones
                    | VAR declaravariables; declaraciones
                    | PROCEDURE declaraprocemientos; declaraciones
                    | FUNCTION declarafunciones; declaraciones"

   declaracion_variable ="declaravariables; declaravariables"
   declaravariables ="identificadorv : $INDICADORDETIPO
                | identificadorv : $IDENTIFICADOR "
    identificadorv ="$IDENTIFICADOR"
   identificadorv ="identificadorv , identificadorv "
   declaraetiqueta ="identificadorv  "

   declaratipos ="$IDENTIFICADOR = $INDICADORDETIPO;"

    declaratipos =" $IDENTIFICADOR = $INDICADORDETIPO CORCHETEA $NUMBERINT CORCHETEC;"

  declaratipos =" $IDENTIFICADOR = RECORD secuenciaenun END;"
  declaratipos ="$IDENTIFICADOR = $INDICADORDETIPO CORCHETEA rango CORCHETEC OF $INDICADORDETIPO;"
   rango ="$CADENA . . $CADENA
          | numero . . numero "

   declaraconstantes ="$IDENTIFICADOR ASIGNACION $IDENTIFICADOR
                  | $IDENTIFICADOR ASIGNACION expresion
                  | $IDENTIFICADOR ASIGNACION $CADENA "


   declarafunciones ="$IDENTIFICADOR PARENTESISA declaravariables PARENTESISC : $INDICADORDETIPO bloque "
 
   declaraprocemientos ="$IDENTIFICADOR PARENTESISA declaravariables PARENTESISC bloque"
declaraprocemientos ="$IDENTIFICADOR PARENTESISA VAR declaravariables PARENTESISC bloque "

  listaident ="$IDENTIFICADOR , $IDENTIFICADOR"

  enunciados ="BEGIN secuenciaenun END"

  secuenciaenun ="enunciado ; secuenciaenun
              |enunciado;"

  enunciado ="instruccion
            | if
            | while
            | case
            | for"

  for="FOR $IDENTIFICADOR ASIGNACION expresion TO expresion DO enunciados
         | FOR $IDENTIFICADOR ASIGNACION expresion TO expresion DO instruccion
         | FOR $IDENTIFICADOR ASIGNACION expresion DOWNTO expresion DO enunciados
         | FOR $IDENTIFICADOR ASIGNACION expresion DOWNTO expresion DO instruccion"

  if="
          IF expresionlogica THEN enunciados
        | IF expresionlogica THEN instruccion"

   if="
          IF expresionlogica THEN enunciados ELSE enunciados
        | IF expresionlogica THEN instruccion ELSE instruccion"

  while="WHILE expresionlogica DO enunciados
           | WHILE expresionlogica DO instruccion"

  case="CASE expresion OF elementos END"

  case="CASE expresion OF elementos; END "

  elementos="elementos; elementos
           | cadenas : instruccion
           | numero : instruccion"

  cadenas="$CADENA"

 cadenas="cadenas , cadenas"

  expresionlogica="
         expresion OPERADORLOGICO expresion
        |expresion = expresion"

  salida ="identificadores
          | $CADENA
          | $NUMBERINT
          | $NUMBERFLOAT
          | expresion"
 salida ="salida , salida"

  identificadores ="
        $IDENTIFICADOR"

  identificadores ="identificadores , identificadores
          | identificadores . identificadores"

  instruccion ="expresion
            | instruccion"

  instruccion ="$IDENTIFICADOR ASIGNACION rango
            | $IDENTIFICADOR ASIGNACION $IDENTIFICADOR
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO
            | identificadores ASIGNACION $INDICADORDETIPO
            | $IDENTIFICADOR ASIGNACION expresion"

instruccion ="$IDENTIFICADOR PARENTESISA salida PARENTESISC
            | WRITE PARENTESISA salida PARENTESISC
            | READ PARENTESISA identificadores PARENTESISC"

  instruccion ="$IDENTIFICADOR ASIGNACION RECORD secuenciaenun END
            | $IDENTIFICADOR ASIGNACION FILE OF $IDENTIFICADOR
            | $IDENTIFICADOR ASIGNACION FILE OF $INDICADORDETIPO"

  instruccion ="
          $IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA $NUMBERINT CORCHETEC"
  instruccion ="$IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA $NUMBERINT CORCHETEC OF $IDENTIFICADOR
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA rango CORCHETEC OF $IDENTIFICADOR
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA $NUMBERINT CORCHETEC OF $INDICADORDETIPO
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA rango CORCHETEC OF $INDICADORDETIPO"

  expresion ="
      termino"


  expresion ="
      termino MAS expresion
    | termino MENOS expresion
    | PARENTESISA termino PARENTESISC"

  expresion ="
      PARENTESISA termino MAS expresion  PARENTESISC
    | PARENTESISA termino MENOS expresion PARENTESISC"

  termino ="factor"

  termino ="PARENTESISA factor PARENTESISC
            | termino TIMES factor
            | termino DIV factor"

  termino ="PARENTESISA termino TIMES factor PARENTESISC
            | PARENTESISA termino DIV factor PARENTESISC
            |  PARENTESISA termino MOD factor PARENTESISC"

  factor ="numero
               | $IDENTIFICADOR"
  numero ="$NUMBERINT
           | $NUMBERFLOAT"

#------------------------------------------------------

=#


function elemento_posision(ele)

  for i=1:size(operador,1)
    if operador[i,2]==ele
      return "operador", i
    end
  end

  for i=1:size(delimitador,1)
    if delimitador[i,2]==ele
      return "delimitador", i
    end
  end

  for i=1:size(simbolo,1)
    if simbolo[i,2]==ele
      return "simbolo", i
    end
  end

  for i=1:size(asignacion,1)
    if asignacion[i,2]==ele
      return "asignacion", i
    end
  end

  for i=1:size(palabra_reservada,1)
    if palabra_reservada[i,2]==ele
      return "palabra_reservada", i
    end
  end

  for i=1:size(operador_logico,1)
    if operador_logico[i,2]==ele
      return "operador_logico", i
    end
  end

  for i=1:size(indicador_tipo,1)
    if indicador_tipo[i,2]==ele
      return "indicador_tipo", i
    end
  end

end

function posision_elemento(nombret,pos)
  return eval(parse("$nombret[$pos,2]"))
end

function analizador(cadena)
  println("$cadena")
  
end

println("""
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ COMPILADOR DEL LENGUAJE PASCAL v 0.1 ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓             ALUMNOS               ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
            ▓▓▓▓▓▓                  ACEVEDO MALDONADO JOSUE                              ▓▓▓▓▓▓
            ▓▓▓▓▓▓                  MORALES MARTINEZ MARIA                               ▓▓▓▓▓▓
            ▓▓▓▓▓▓                  OLIVERA ROSAS LUIS MIGUEL                            ▓▓▓▓▓▓
            ▓▓▓▓▓▓                  PEREZ CARRERA CARLOS FRANCISCO                       ▓▓▓▓▓▓
            ▓▓▓▓▓▓                  RUIZ GONZALEZ ALEXANDER                              ▓▓▓▓▓▓
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
        """)



println("Url del archivo .pas:")
url = readline(STDIN)
url= url[1:end-2] #quitamos los simbolos /r y /n
cadenaunica= leer(url)
p,v1,v2 = analizacomentarios(cadenaunica)

if p==1  #si el analisis fue exitoso es 1, sino ya no hace nada
#---------------------------------------------------------------------------------------------------------
#aqui se eliminan los comentarios
  for i= 1:length(v2)
    veces=0
    for j= length(v1):-1:1
      if 0<v1[j]<v2[i] && veces==0
        cadenaunica = replace(cadenaunica,cadenaunica[v1[j]:v2[i]],"@"^((v2[i]-v1[j])+1))
        v1[j]=-1
        veces=1
      end 
    end 
  end
  cadenaunica= replace(cadenaunica,"@","")
  cadenaunica= replace(cadenaunica,r"//.+","")
#---------------------------------------------------------------------------------------------------------
  cadenaunica= replace(cadenaunica,r"\t","")
  cadenaunica= uppercase(cadenaunica) #se pasa el programa a mayusculas
#EXTRACION DE LINEAS--------------------------------------------------------------------------------------
  lineas= split(cadenaunica,"\r\n") #se separa el programa en lineas
  cadenaunica= replace(cadenaunica,r"\n|\r|\t|\s","")

  println("\tANALIZADOR LEXICO\n")

  for i = 1:length(lineas)
    lineas[i]= replace(lineas[i],r"\n|\r","")
    print("$i:")

    if lineas[i]!=""
      analizador(lineas[i])
    else
      println("")
    end

  end
  println("\n",cadenaunica)

#---------ubicando los elementos(tokens)----------------
  println("\nUbicando los elementos(tokens)")
  ti, pos= elemento_posision(".")
  println("($ti,$pos)=>",posision_elemento(ti,pos))

  
#---------------!!!!!!!!!!!!!!!!!!!!!!!!!
 #=SIMBOL = matchall(Regex(declaravariable), cadenaunica) 
print("estas son las variables: \n") 
for i= SIMBOL
  t = replace(i,r"VAR","")
  print("\t$t\n")
end=#

end