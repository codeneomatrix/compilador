tbblobal=1
#=
type Tipo
nombre::AbstractString
scopeif::Scope
function getname()
nombre
end
function setname(nom)
nombre=nom
end
function getscope()
scopeif
end
function setscope(sco)
scopeif=sco
end
function getsize()
1
end

end


type Symbol
name::AbstractString
tipo::Type
scopeif:: Scope

function getname()
name
end

function setname(na)
name=na
end
end

type Scope 
nombre:: AbstractString
id:: Int64
level:: Int64
table :: Symbol
tabl:: Tipo
end =#


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

op=      [1 "="    
          2 "+"    
          3 "-"    
          4 "*"    
          5 "DIV"  
          6 "MOD" ]

#op=Dict("="=>1, "+"=>2, "-"=>3, "*"=>4, "DIV"=>5, "MOD"=>6)
## uso op["+"]

asig=[1 ":="]

delim=      [1 "("
             2 ")" 
             3 "["
             4 "]" ]
simb=   [ 1 "^" 
          2 ";"  
          3 ":"
          4 ","
          5 "."
          6 ".."]

pal_reser=        [1 "PROGRAM" 
                   2 "READLN" 
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
                   17 "WRITELN" 
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
                   31 "EOF" 
                   32 "PACKED" 
                   33 "PROCEDURE" 
                   34 "RECORD" 
                   35 "SET"
                   36 "SHR"
                   37 "THEN"
                   38 "TYPE"
                   39 "UNTIL"
                   40 "VAR"
                   41 "WHILE"
                   42 "FUNCTION"
                   43 "NEW"
                   44 "WRITE"
                   45 "READ"
                   46 "OF"]

op_log=         [1 "¬="
                 2 "<>"
                 3 ">="
                 4 "<="
                 5 "<"
                 6 ">" 
                 7 "NOT"]

ind_tipo=      [1 "INTEGER"
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
#TABLA DE SIMBOLOS VARIABLES
Id=["" for i=1:12, j=1:6]

#------------------------------------------------------------------------------------------------------
IDENTIFICADOR = "(\\w(\\w|_)*|_(\\w|_)*)"
INDICADORDETIPO="(INTEGER|BYTE|SHORTINT|WORD|LONGINT|REAL|CHAR|STRING|BOOLEAN|TEXT|ARRAY)"
declaravariable="VAR(($IDENTIFICADOR|,)+:$INDICADORDETIPO;)+"
declaravariable2="(($IDENTIFICADOR|,)+:$INDICADORDETIPO)+"
NUMBERFLOAT= "(\\d+\\.\\d+)"
NUMBERINT="(\\d+)"
CADENA = "('\\w(\\w|\\s|-|!|,|\\.|\\(|\\)|@|#|\$|%|&)*')"
on_error = "$errorlex: CARACTER ILEGAL"

#=
  S ="programa"

  programa ="encabezado bloque ."

  encabezado ="PROGRAM $IDENTIFICADOR;
              |PROGRAM $IDENTIFICADOR \\( listaident \\);"

  bloque ="declaraciones enunciados"

  declaraciones="LABEL declaraetiqueta| CONST declaraconstantes
             | TYPE declaratipos
             | LABEL declaraetiqueta declaraciones
             | CONST declaraconstantes declaraciones
             | TYPE declaratipos declaraciones
             | VAR declaracion_variable;
             | VAR declaravariables;
             | FUNCTION declarafunciones;
             | PROCEDURE declaraprocemientos;
             | VAR declaracion_variable; declaraciones
             | VAR declaravariables; declaraciones
             | PROCEDURE declaraprocemientos; declaraciones
             | FUNCTION declarafunciones; declaraciones"

  declaracion_variable ="declaravariables; declaravariables"

  declaravariables ="identificadorv : $INDICADORDETIPO
                | identificadorv : $IDENTIFICADOR "

  identificadorv ="$IDENTIFICADOR
                    |identificadorv , identificadorv "

  declaraetiqueta ="identificadorv  "

  declaratipos ="$IDENTIFICADOR = $INDICADORDETIPO;
                  |$IDENTIFICADOR = $INDICADORDETIPO CORCHETEA $NUMBERINT CORCHETEC;
                  |$IDENTIFICADOR = RECORD secuenciaenun END;
                  |$IDENTIFICADOR = $INDICADORDETIPO CORCHETEA rango CORCHETEC OF $INDICADORDETIPO;"

  rango ="$CADENA . . $CADENA
          | numero . . numero "

  declaraconstantes ="$IDENTIFICADOR ASIGNACION $IDENTIFICADOR
                  | $IDENTIFICADOR ASIGNACION expresion
                  | $IDENTIFICADOR ASIGNACION $CADENA "

  declarafunciones ="$IDENTIFICADOR \\( declaravariables \\) : $INDICADORDETIPO bloque "

  declaraprocemientos ="$IDENTIFICADOR \\( declaravariables \\) bloque
                        |$IDENTIFICADOR \\( VAR declaravariables \\) bloque "

  listaident ="$IDENTIFICADOR , $IDENTIFICADOR"

  enunciados ="BEGIN secuenciaenun END"

  secuenciaenun ="enunciado ; secuenciaenun
                 |enunciado;"

  enunciado ="instruccion
            | if
            | while
            | case
            | for"

  for="    FOR $IDENTIFICADOR ASIGNACION expresion TO expresion DO enunciados
         | FOR $IDENTIFICADOR ASIGNACION expresion TO expresion DO instruccion
         | FOR $IDENTIFICADOR ASIGNACION expresion DOWNTO expresion DO enunciados
         | FOR $IDENTIFICADOR ASIGNACION expresion DOWNTO expresion DO instruccion"

  if="    IF expresionlogica THEN enunciados
        | IF expresionlogica THEN instruccion
        | IF expresionlogica THEN enunciados ELSE enunciados
        | IF expresionlogica THEN instruccion ELSE instruccion"

  while="    WHILE expresionlogica DO enunciados
           | WHILE expresionlogica DO instruccion"

  case="CASE expresion OF elementos END
       |CASE expresion OF elementos; END "

  elementos="elementos; elementos
           | cadenas : instruccion
           | numero : instruccion"

  cadenas="$CADENA|cadenas , cadenas"

  expresionlogica="expresion OPERADORLOGICO expresion
        |expresion = expresion"

  salida ="identificadores
          | $CADENA
          | $NUMBERINT
          | $NUMBERFLOAT
          | expresion
          |salida , salida"

  identificadores ="
        $IDENTIFICADOR
        |identificadores , identificadores
        | identificadores . identificadores"

  instruccion ="expresion
            | instruccion|$IDENTIFICADOR ASIGNACION rango
            | $IDENTIFICADOR ASIGNACION $IDENTIFICADOR
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO
            | identificadores ASIGNACION $INDICADORDETIPO
            | $IDENTIFICADOR ASIGNACION expresion|$IDENTIFICADOR \\( salida \\)
            | WRITE \\( salida \\)
            | READ \\( identificadores \\)|$IDENTIFICADOR ASIGNACION RECORD secuenciaenun END
            | $IDENTIFICADOR ASIGNACION FILE OF $IDENTIFICADOR
            | $IDENTIFICADOR ASIGNACION FILE OF $INDICADORDETIPO
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA $NUMBERINT CORCHETEC
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA $NUMBERINT CORCHETEC OF $IDENTIFICADOR
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA rango CORCHETEC OF $IDENTIFICADOR
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA $NUMBERINT CORCHETEC OF $INDICADORDETIPO
            | $IDENTIFICADOR ASIGNACION $INDICADORDETIPO CORCHETEA rango CORCHETEC OF $INDICADORDETIPO"

  expresion ="termino
            | termino MAS expresion
            | termino MENOS expresion
            | \\( termino \\)
            | \\( termino MAS expresion  \\)
            | \\( termino MENOS expresion \\)"

  termino ="factor
            |\\( factor \\)
            | termino TIMES factor
            | termino DIV factor
            | \\( termino TIMES factor \\)
            | \\( termino DIV factor \\)
            | \\( termino MOD factor \\)"

  factor ="numero
            | $IDENTIFICADOR"

  numero ="$NUMBERINT
           | $NUMBERFLOAT"
=#
function settabla(ell,tipo)
  global tbblobal
  if ell!="" && tipo!=""
    println("\t\t\t$ell es de tipo $tipo")
    Id[tbblobal,1]=ell
    Id[tbblobal,2]=tipo
    tbblobal=tbblobal+1
  end
end

function imprimirtabla()
for j= 1:12
  if Id[j,1]!=""
    println("\t|",Id[j,1],"\033[100D\033[22C |",Id[j,2])
  end
end
end

function elemento_posision(ele)
  for i=1:size(op,1)
    if op[i,2]==ele
      return "op", i
    end
  end

  for i=1:size(delim,1)
    if delim[i,2]==ele
      return "delim", i
    end
  end

  for i=1:size(simb,1)
    if simb[i,2]==ele
      return "simb", i
    end
  end

  for i=1:size(asig,1)
    if asig[i,2]==ele
      return "asig", i
    end
  end

  for i=1:size(pal_reser,1)
    if pal_reser[i,2]==ele
      return "pal_reser", i
    end
  end

  for i=1:size(op_log,1)
    if op_log[i,2]==ele
      return "op_log", i
    end
  end

  for i=1:size(Id,1)
    if Id[i,1]==ele
      return "Id", i
    end
  end

  for i=1:size(ind_tipo,1)
    if ind_tipo[i,2]==ele
      return "ind_tipo", i
    end
  end
  return "sinident", 0
end

function posision_elemento(nombret,pos)
  return eval(parse("$nombret[$pos,2]"))
end

function analizador(cadena)
  println("$cadena\n")
  
 t = replace(cadena,r"\s","")
  
      if t!=""

          SIMBOL = matchall(Regex(CADENA), t) 
          for i= SIMBOL
            t=replace(t,i," ")
            ti, pos= elemento_posision(i)
            println("\t $i =>> <cadena,#>")
          end

#---------------------------------------------          
          vars = matchall(Regex(declaravariable2), t) 
          for i= vars
            if (contains(i,"VAR") == true)
              ti, pos= elemento_posision("VAR")
              println("\t VAR =>> <$ti,$pos>")
              i = replace(i,r"VAR","")
              t = replace(t,r"VAR","")
            end
            elementos= split(i,";")
            for ce = elementos
              cde= split(ce,":")
              tipoo= cde[end]
              vaa= split(cde[1],",")
              for s= vaa
                  settabla(s,tipoo)
              end
            end

          end
#---------------------------------------------
            SIMBOL = matchall(Regex(INDICADORDETIPO), t) 
            for i= SIMBOL
              t=replace(t,i," ")
              ti, pos= elemento_posision(i)
              println("\t $i =>> <$ti,$pos>")
            end

          for i=1:size(pal_reser,1)
            PA= pal_reser[i,2]
            SIMBOL = matchall(Regex(PA), t) 
            for i= SIMBOL
              t=replace(t,i," ")
              ti, pos= elemento_posision(i)
              println("\t $i =>> <$ti,$pos>")
            end
          end

          for i=["\\(","\\)","\\[","\\]","¬=","<>",">=","<=","<","\\.\\.","NOT",">",":=",",",":","=","\\.",";"]
            SIMBOL = matchall(Regex(i), t) 
            for i= SIMBOL
              t=replace(t,i," ")
              ti, pos= elemento_posision(i)
              println("\t $i =>> <$ti,$pos>")
            end
          end


          id = matchall(Regex(IDENTIFICADOR), t) 
          for i= id
            t=replace(t,i," ")
            ti, pos= elemento_posision(i)
            if ti=="sinident"
              settabla(i,"NO SE")
            end
            ti, pos= elemento_posision(i)
            println("\t$i =>> <$ti,$pos>")
          end

          t=replace(t,r"\s","")
          if length(t)!=0
            println("\t \033[1;31m $on_error $t \033[1;37m")
          end
      end

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
OS_NAME==:Windows ? url= url[1:end-2] : url= url[1:end-1]  #quitamos los simbolos /r y /n
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
  OS_NAME==:Windows? lineas= split(cadenaunica,"\r\n") : lineas= split(cadenaunica,"\n")#se separa el programa en lineas
  cadenaunica= replace(cadenaunica,r"\n|\r|\t|\s","")

  println("\tANALIZADOR LEXICO\n")

  for i = 1:length(lineas)
    lineas[i]= replace(lineas[i],r"\n|\r","")
    if lineas[i]!=""
      print("\n=>")
      analizador(lineas[i])
    end
  end

  #println("\n",cadenaunica)

   print("\n\tTABLA DE SIMBOLOS:\n\t-------------------------------\n\t|Simbolo \033[100D\033[22C |Tipo\n\t-------------------------------\n")
   imprimirtabla()
end