function leer(url)
  cadena=""
  open(url) do f1
    for linea in eachline(f1)
        cadena*= linea
        #println(linea)
    end
  end
  cadena
end


function analizacomentarios(cade)
con1=0
con2=0

 for i = cade
  if i == '{'
      con1+=1
  end
  if i == '}'
      con2+=1
  end
 end

 if con1==con2
    return 1
 else
    println(" \t \033[1;31m ✗ Error lexicografico falta un caracter { o un } \033[1;37m")
    return 0
 end
end

#=
$tabla={}

$num =0
$numlinea=0
$salida=""
class CalcLex < Rly::Lex
  ignore " \t\n"

 token :CADENA, /'\w(\w|\s|-|!|,|\.|\(|\)|@|#|$|%|&)*'/ do |t|
  		#t.type = "CADENA DE TEXTO"
    	t.value = t.value  	
  		#println("SIGNO #{t.value}")
  		t
  end 

#--------------------------------------------
  token :IGUAL,/\=/ do |t|
      t.value = t.value
      t
  end    
  token :MAS, /\+/ do |t|
  		##t.type = "SIGNO"
    	t.value = t.value
  		#println("SIGNO #{t.value}")
  		t
  end
  token :MENOS, /-/ do |t|
  		#t.type = "SIGNO"
    	t.value = t.value
  		#println("SIGNO #{t.value}")
  		t
  end
  token :TIMES, /\*/ do |t|
  		#t.type = "SIGNO"
    	t.value = t.value
  		#println("SIGNO #{t.value}")
  		t
  end
  token :DIV, /\/|DIV|div/ do |t|
  		#t.type = "SIGNO"
    	t.value = t.value  	
  		#println("SIGNO #{t.value}")
  		t
  end
  
  token :ASIGNACION, /:=/ do |t|
  		#t.type = "ASIGNACION"
    	t.value = t.value  	
  		#println("SIGNO #{t.value}")
  		t
  end
  token :MOD, /mod|MOD/ do |t|
  		#t.type = "ASIGNACION"
    	t.value = t.value  	
  		#println("SIGNO #{t.value}")
  		t
  end

  token :NUMBERFLOAT, /\d+\.\d+/ do |t|
  	#println("NUMERO #{t.value}")
  	#t.type = "NUMERO FLOTANTE"
    t.value = t.value
    t
  end

  token :NUMBERINT, /\d+/ do |t|
  	#puts("NUMERO #{t.value}")
  	##t.type = "NUMERO ENTERO"
    t.value = t.value.to_i
    t
  end

#-----------------------------------------------
#------------------PALABRAS RESERVADAS----------
#-----------------------------------------------



  token :WRITE, /writeln|writeLn|WRITELN|write|WRITE/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :READ, /readln|readLn|READLN|read|READ/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :CLOSE, /close|CLOSE/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end

  token :ABSOLUTE, /absolute|ABSOLUTE/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  

  token :BEGIN, /begin|BEGIN/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :CONST, /const |CONST / do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :FOR, /for |FOR / do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :DOWNTO, / downto | DOWNTO / do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :TO, / to | TO / do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :CASE, /case |CASE / do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :IF, /if |IF / do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :IN, / in | IN / do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :LABEL, /label|LABEL/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :ELSE, /else|ELSE/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :END, /end|END/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :NIL, /nil|NIL/ do |t|
      #t.type = "PALABRA RESERVADA"
      t.value = t.value   
      #puts("SIGNO #{t.value}")
      t
  end
  #----------conjunciones logicas-------
  token :AND, /and|AND/ do |t|
  		#t.type = "OPERADOR LOGICO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :OR, /or|OR/ do |t|
  		#t.type = "OPERADOR LOGICO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :NOT, /not|NOT/ do |t|
  		#t.type = "OPERADOR LOGICO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :XOR, /xor|XOR/ do |t|
  		#t.type = "OPERADOR LOGICO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  #-------------------------------------
  token :PROGRAM, /program|PROGRAM/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :REPEAT, /repeat|REPEAT/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :UNIT, /unit|UNIT/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :USES, /uses|USES/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :WITH, /with|WITH/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :CONSTRUCTOR, /constructor|CONSTRUCTOR/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :EXTERNAL, /external|EXTERNAL/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :DO, / do | DO / do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :FILE, /file|FILE/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :FORWARD, /forward|FORWARD/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :GOTO, /goto|GOTO/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :IMPLEMENTATION, /implementation|IMPLEMENTATION/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :INLINE, /inline|INLINE/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :INTERRUPT, /interrupt|INTERRUPT/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :OF, /of|OF/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :PACKED, /packed|PACKED/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :PROCEDURE, /procedure|PROCEDURE/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :RECORD, /record|RECORD/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :SET, /set|SET/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :SHR, /shr|SHR/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :THEN, /then|THEN/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :TYPE, /type|TYPE/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end  
  token :UNTIL, /until|UNTIL/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end    
  token :VAR, /var|VAR/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :WHILE, /while |WHILE / do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :FUNCTION, /function|FUNCTION/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :NEW, /new|NEW/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
#-----------------TIPOS------------------------------------
#----------------------------------------------------------
  token :INDICADORDETIPO, /integer|INTEGER|byte|BYTE|shortint|SHORTINT|word|WORD|longint|LONGINT|real|REAL|char|CHAR|string|STRING|boolean|BOOLEAN|Text|text|array|ARRAY/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
#------------------------------------------------------
  token :TRUE, /true|TRUE/ do |t|
  		#t.type = "BOOLEANO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :FALSE, /false|FALSE/ do |t|
  		#t.type = "BOOLEANO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  
#-----------------------------------------------------
  token :PUNTERO, /\^/ do |t|
  		#t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :PUNTOYCOMA, /;/ do |t|
  		#t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :DOSPUNTOS, /:/ do |t|
  		#t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :COMA, /,/ do |t|
  		#t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :PARENTESISA, /\(/ do |t|
  		#t.type = "DELIMITADOR"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :PARENTESISC, /\)/ do |t|
  		#t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :CORCHETEA, /\[/ do |t|
  		#t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :CORCHETEC, /\]/ do |t|
  		#t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :PUNTO, /\./ do |t|
  		#t.type = "SIMBOLO TERMINAL"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 

#-----------------OPERACION DE RELACION----------------------------------------
#------------------------------------------------------------------------------
  token :OPERADORLOGICO, /¬=|<>|>=|<=|<|>/ do |t|
  		#t.type = "OPERADOR DE RELACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
#------------------------------------------------------------------------------
#------------------------------------------------------------------------------
 
  token :IDENTIFICADOR, /\w(\w|_)*|_(\w|_)*/ do |t|
  		#t.type = "IDENTIFICADOR"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 

#------------------------------------------------------

  on_error do |t|
    puts "		\033[1;31m ERROR LINEA #{$numlinea}   CARACTER ILEGAL #{t.value}\033[1;36m"
    t.lexer.pos += 1
    nil
  end
end

#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------



class CalcParse < Rly::Yacc
	
	precedence :left,  '+', '-'
	precedence :left,  '*', '/'

  rule 'statement : programa' do |st, pro|
    st.value = pro.value
  end

  rule 'programa : encabezado bloque PUNTO' do |pro, enca, blo, o|
    pro.value = blo.value
    #$tabla[enca.value]= blo.value
    $salida+="\n\t|\t|\t|\n\t   #{enca.value}\n"
  end

  #############################################################################################################################
  rule 'encabezado :PROGRAM IDENTIFICADOR PUNTOYCOMA' do |enca,pro,ide,pyc|
    #puts "ESTE ES EL NOMBRE DEL PROGRAMA:  #{enca.value}"
    enca.value = ide.value
    #$tabla[identifi.value]= listaiden.value

      $tabla["#{enca.value}"][2]=ide.value

  end

#############################################################################################################################
  rule 'encabezado :PROGRAM IDENTIFICADOR PARENTESISA listaident PARENTESISC PUNTOYCOMA' do |enca,pro,ide,pA,listaiden,pC,pyc|
    #puts "ESTE ES EL NOMBRE DEL PROGRAMA:  #{enca.value}"
    enca.value = pro.value
    #$tabla[identifi.value]= listaiden.value

      $tabla["#{enca.value}"][2]=pro.value

  end

  rule 'bloque : declaraciones enunciados' do |blo, decla, enun|
    blo.value = enun.value
  end

############################################################################################################################# 
 rule 'declaraciones:  
               LABEL declaraetiqueta
             | CONST declaraconstantes
             | TYPE declaratipos' do |decla,lct,declarlct|
     decla.value = lct.value
     #$tabla[declar.value]= puntoyc.value
     #puts("\n\n#{puntoyc.value}")
     #puts("aqui procedimiento, label funtion etc")

        $tabla["#{lct.value}"][1]=declar.value

   end

############################################################################################################################# 
 rule 'declaraciones:  
               LABEL declaraetiqueta declaraciones
             | CONST declaraconstantes declaraciones
             | TYPE declaratipos declaraciones 
             | VAR declaracion_variable PUNTOYCOMA
             | VAR declaravariables PUNTOYCOMA
             | FUNCTION declarafunciones PUNTOYCOMA
             | PROCEDURE declaraprocemientos PUNTOYCOMA' do |decla,lctvfp,declar,pycodecl|
     decla.value = lctvfp.value
     #$tabla[declar.value]= puntoyc.value
     #puts("\n\n#{puntoyc.value}")
     #puts("aqui procedimiento, label funtion etc")

        $tabla["#{declar.value}"][1]=decla.value

   end

 
rule 'declaraciones:  VAR declaracion_variable PUNTOYCOMA declaraciones
                    | VAR declaravariables PUNTOYCOMA declaraciones
                    | PROCEDURE declaraprocemientos PUNTOYCOMA declaraciones
                    | FUNCTION declarafunciones PUNTOYCOMA declaraciones' do |decla,varPrdFtn,dvpf,pyc,declars|
     decla.value = varPrdFtn.value
     #$tabla[declar.value]= puntoyc.value
     #puts("\n\n#{puntoyc.value}")
     #puts("aqui procedimiento, label funtion etc")

        $tabla["#{dvpf.value}"][1]=varPrdFtn.value

   end

################################################################################################################################
   rule 'declaracion_variable :declaravariables PUNTOYCOMA declaravariables' do |declav,declavar,pyc,declava|
     declav.value = declavar.value
   end


   rule 'declaravariables :identificadorv DOSPUNTOS INDICADORDETIPO
                | identificadorv DOSPUNTOS IDENTIFICADOR ' do |decla, inde,o,u|
     decla.value = inde.value
     #puts($tabla)
     #puts("aqui tipos")
     ##$tabla[inde.value]= u.value

      $tabla["#{decla.value}"][2]=u.value
   end
################################################################################################################################
    rule 'identificadorv : IDENTIFICADOR' do |identiV,identi|
     identiV.value = identi.value
   end

################################################################################################################################
   rule 'identificadorv : identificadorv COMA identificadorv ' do |ideV,iden,coma,ind|
     ideV.value = iden.value
   end


   rule 'declaraetiqueta : identificadorv  ' do |decla,iden|
     decla.value = iden.value
   end

###################################################################################################################################
   rule 'declaratipos :IDENTIFICADOR IGUAL INDICADORDETIPO PUNTOYCOMA' do |decla,ident,igu,idtip,pyc|
     decla.value = ident.value
   end

###################################################################################################################################
 rule 'declaratipos :  IDENTIFICADOR IGUAL INDICADORDETIPO CORCHETEA NUMBERINT CORCHETEC PUNTOYCOMA' do |decla,ident,igu,inditip,ca,num,cc,pyc|
     decla.value = ident.value
   end
####################################################################################################################################

rule 'declaratipos :  IDENTIFICADOR IGUAL RECORD secuenciaenun END PUNTOYCOMA' do |decla,ident,igu,rec,secEnun,fin,pyc|
     decla.value = ident.value
   end
####################################################################################################################################
rule 'declaratipos : IDENTIFICADOR IGUAL INDICADORDETIPO CORCHETEA rango CORCHETEC OF INDICADORDETIPO PUNTOYCOMA' do |decla,ident,igu,inditip,ca,ran,cc,of,indti,pyc|
    decla.value = ident.value
   end

####################################################################################################################################
   rule 'rango : CADENA PUNTO PUNTO CADENA
          | numero PUNTO PUNTO numero ' do |rang,cadNum,pun,punt,cadeNu|
     rang.value = cadNum.value
   end

###################################################################################################################################
   rule 'declaraconstantes :IDENTIFICADOR ASIGNACION IDENTIFICADOR
                  | IDENTIFICADOR ASIGNACION expresion
                  | IDENTIFICADOR ASIGNACION CADENA ' do |declaCns,ident,asig, idexca|
     declaCns.value = ident.value
     #$tabla[decla.value]= cad.value
   end

###################################################################################################################################
   rule 'declarafunciones : IDENTIFICADOR PARENTESISA declaravariables PARENTESISC DOSPUNTOS INDICADORDETIPO bloque ' do |declaFun,ident,pa,declavar,pc,pun,inditip,bloq|
     declaFun.value = ident.value
   end

########################################################################################################################################
   rule 'declaraprocemientos :IDENTIFICADOR PARENTESISA declaravariables PARENTESISC bloque' do |declaPro,ident,pa,declaV,pc,blo|
     declaPro.value = ident.value
    end

########################################################################################################################################
rule 'declaraprocemientos :IDENTIFICADOR PARENTESISA VAR declaravariables PARENTESISC bloque ' do |declaPro,ident,pa,var,declaVar,pc,bloq|
     declaPro.value = ident.value
    end

########################################################################################################################################
  rule 'listaident : IDENTIFICADOR COMA IDENTIFICADOR' do |lis,ident,coma,iden|
    lis.value = ident.value
  end
  
########################################################################################################################################
  rule 'enunciados : BEGIN secuenciaenun END' do |enun,begi,secuenci,fin|
    enun.value = begi.value
  end


##########################################################################################################################################
  rule 'secuenciaenun :enunciado PUNTOYCOMA secuenciaenun
              |enunciado PUNTOYCOMA' do |blo,inst|
    blo.value = inst.value
  end


  rule 'enunciado : instruccion
            | if
            | while
            | case 
            | for' do |blo, ins|
    blo.value = ins.value
  end

#########################################################################################################################################

  rule 'for: 
           FOR IDENTIFICADOR ASIGNACION expresion TO expresion DO enunciados
         | FOR IDENTIFICADOR ASIGNACION expresion TO expresion DO instruccion
         | FOR IDENTIFICADOR ASIGNACION expresion DOWNTO expresion DO enunciados
         | FOR IDENTIFICADOR ASIGNACION expresion DOWNTO expresion DO instruccion' do |para,fo,identi,asig,exp,todown, expr,has,enunins|
    para.value = fo.value
  end

##########################################################################################################################################

  rule 'if: 
          IF expresionlogica THEN enunciados
        | IF expresionlogica THEN instruccion' do |si,sif,expLog,entonces,enunins|
    si.value = sif.value
  end

#########################################################################################################################################
   rule 'if: 
          IF expresionlogica THEN enunciados ELSE enunciados
        | IF expresionlogica THEN instruccion ELSE instruccion' do |si,sif,expLog,entons,enunins,sinom, enuns|
  si.value = sif.value
  end

##########################################################################################################################################
  rule 'while: 
            WHILE expresionlogica DO enunciados
           | WHILE expresionlogica DO instruccion' do |mientras,ins,explog,has, enuins|
    mientras.value = ins.value
  end


############################################################################################################################################
  rule 'case: 
            CASE expresion OF elementos END' do |caso,cas,exp,de,ele,fin|
    caso.value = cas.value
  end

##############################################################################################################################################
  rule 'case: 
           CASE expresion OF elementos PUNTOYCOMA END ' do |caso,casi,expre,de,elem,pyc,fin|
    caso.value = casi.value
  end


###########################################################################################################################################
  rule 'elementos: 
             elementos  PUNTOYCOMA elementos 
           | cadenas DOSPUNTOS instruccion
           | numero DOSPUNTOS instruccion' do |elemen,elcanum,puntos,ins|
    elemen.value = elecanum.value
  end

############################################################################################################################################
  rule 'cadenas: 
           CADENA' do |cade, cad|
    cade.value = cad.value
  end

############################################################################################################################################
 rule 'cadenas: 
             cadenas COMA cadenas' do |cade,cad,coma,caden|
    cade.value = cad.value
  end

############################################################################################################################################
  rule 'expresionlogica: 
         expresion OPERADORLOGICO expresion
        |expresion IGUAL expresion' do |explogi,expre,opelog,exp|
    explogi.value = expre.value
  end

#######################################################################################################################################

  rule 'salida :
            identificadores
          | CADENA 
          | NUMBERINT
          | NUMBERFLOAT
          | expresion' do |salir, ins|
    salir.value = ins.value
  end
#######################################################################################################################################
rule 'salida : 
            salida COMA salida' do |salir,sal,coma,sali|
    salir.value = sal.value
  end

#######################################################################################################################################

  rule 'identificadores :
        IDENTIFICADOR' do |blo, ins|
    blo.value = ins.value
  end

  #######################################################################################################################################

  rule 'identificadores :
            identificadores COMA identificadores
          | identificadores PUNTO identificadores' do |blo, ident,copu,identi|
    blo.value = ident.value
  end

#######################################################################################################################################
  rule 'instruccion : 
              expresion
            | instruccion' do |blo,decla|

    blo.value = decla.value
    # $tabla[blo.value]= u.value
    #  puts("\n\n")
    #  puts("aqui")
    #  puts(tabla)
    #  puts("\n\n")
    $salida+=" #{blo.value} "
  end

#######################################################################################################################################
  rule 'instruccion :
              IDENTIFICADOR ASIGNACION rango
            | IDENTIFICADOR ASIGNACION IDENTIFICADOR
            | IDENTIFICADOR ASIGNACION INDICADORDETIPO 
            | identificadores ASIGNACION INDICADORDETIPO
            | IDENTIFICADOR ASIGNACION expresion' do |blo,ide,asig,riex|

    blo.value = ide.value
    # $tabla[blo.value]= u.value
    #  puts("\n\n")
    #  puts("aqui")
    #  puts(tabla)
    #  puts("\n\n")
    $salida+=" #{blo.value} "
  end

#######################################################################################################################################
rule 'instruccion :
              IDENTIFICADOR PARENTESISA salida PARENTESISC
            | WRITE PARENTESISA salida PARENTESISC
            | READ PARENTESISA identificadores PARENTESISC' do |blo,idewr,pa,saliden,pc|

    blo.value = idewr.value
    # $tabla[blo.value]= u.value
    #  puts("\n\n")
    #  puts("aqui")
    #  puts(tabla)
    #  puts("\n\n")
    $salida+=" #{blo.value} "
  end
#######################################################################################################################################
  rule 'instruccion :
              IDENTIFICADOR ASIGNACION RECORD secuenciaenun END
            | IDENTIFICADOR ASIGNACION FILE OF IDENTIFICADOR
            | IDENTIFICADOR ASIGNACION FILE OF INDICADORDETIPO' do |blo,ide,asig,recfi,sec,fin|

    blo.value = ide.value
    # $tabla[blo.value]= u.value
    #  puts("\n\n")
    #  puts("aqui")
    #  puts(tabla)
    #  puts("\n\n")
    $salida+=" #{blo.value} "
  end

#######################################################################################################################################
  rule 'instruccion :
          IDENTIFICADOR ASIGNACION INDICADORDETIPO CORCHETEA NUMBERINT CORCHETEC' do |blo, ide, asig, inditi,ca,num,cc|

    blo.value = ide.value
    # $tabla[blo.value]= u.value
    #  puts("\n\n")
    #  puts("aqui")
    #  puts(tabla)
    #  puts("\n\n")
    $salida+=" #{blo.value} "
  end
#######################################################################################################################################
  rule 'instruccion :
              IDENTIFICADOR ASIGNACION INDICADORDETIPO CORCHETEA NUMBERINT CORCHETEC OF IDENTIFICADOR
            | IDENTIFICADOR ASIGNACION INDICADORDETIPO CORCHETEA rango CORCHETEC OF IDENTIFICADOR
            | IDENTIFICADOR ASIGNACION INDICADORDETIPO CORCHETEA NUMBERINT CORCHETEC OF INDICADORDETIPO
            | IDENTIFICADOR ASIGNACION INDICADORDETIPO CORCHETEA rango CORCHETEC OF INDICADORDETIPO' do |blo,iden,asig,indtip,ca,numran,cc,of,ide|

    blo.value = iden.value
    # $tabla[blo.value]= u.value
    #  puts("\n\n")
    #  puts("aqui")
    #  puts(tabla)
    #  puts("\n\n")
    $salida+=" #{blo.value} "
  end

#######################################################################################################################################

  rule 'expresion :  
      termino' do |ex, termino|
    ex.value = termino.value
    #$salida+="\n   #{e1.value} "
  end
  #######################################################################################################################################

  rule 'expresion :  
      termino MAS expresion
    | termino MENOS expresion
    | PARENTESISA termino PARENTESISC' do |ex, ter, masomenos,ex2|
    ex.value = ter.value
    #$salida+="\n   #{e1.value} "
  end

#######################################################################################################################################
  rule 'expresion :
      PARENTESISA termino MAS expresion  PARENTESISC    
    | PARENTESISA termino MENOS expresion PARENTESISC' do |ex,pa,ter,mas,exp,pc|
    ex.value = pa.value
    #$salida+="\n   #{e1.value} "
  end

#####################################################################################################################################
  rule 'termino :   
              factor' do |termi,fac,|
    #ex.value = e1.value
  end

#####################################################################################################################################
  rule 'termino :   
              PARENTESISA factor PARENTESISC
            | termino TIMES factor
            | termino DIV factor' do |termi,pat,factidi,pafa|
    #ex.value = e1.value
  end

#####################################################################################################################################
  rule 'termino :   
              PARENTESISA termino TIMES factor PARENTESISC
            | PARENTESISA termino DIV factor PARENTESISC
            |  PARENTESISA termino MOD factor PARENTESISC'do |termi, pa, ter,tidi,fac,pc|
    #ex.value = e1.value
  end


#######################################################################################################################################
  rule 'factor : 
                 numero
               | IDENTIFICADOR' do |fact, numid|
    fact.value = numid.value 
  end

########################################################################################################################################
  rule 'numero : 
             NUMBERINT
           | NUMBERFLOAT' do |numer,num|
    
    numer.value = num.value
    #$tabla[ex.value]= n.value
  end
  
end

#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------

# def tablasimbolos(clave,valor)
# 	tabla[clave]  = valor
# end


def imprimirtabla()
	puts("posision nombre valor  tipo")
	salida=""
	for i in(0..($tabla.length)-1)
		for j in(0..($tabla[i].length)-1)
    	salida += "  #{$tabla[i][j]}\t"
    end
    	salida+="\n"
	end
	puts salida
end

def semantica(cadena)
parser = CalcParse.new(CalcLex.new)

puts(parser.parse(cadena,true))
end

def analizador(cadena)
lex = CalcLex.new(cadena)
tipo = ""
esta = false
while true
	tok = lex.next
	if tok != nil 
		puts "		#{tok.type} #{tok.value}"

         #puts "jajaj k"
         #puts tabla["#{tok.value}"]
         #puts "k"

		if ("#{tok.type}" == "IDENTIFICADOR" )#&& tabla["#{tok.value}"]==nil)
		  $tabla["#{tok.value}"]=[$num,tok.type]
		  $num=$num+1
		 end 
	    
	end
	if not tok
		break
	end
end

end

def vertabla()
	puts "               TABLA DE SIMBOLOS"
	puts "|         NOMBRE\033[100D \033[21C|         Clase   \033[100D\033[40C|  TIPO   |"
	$tabla.each do |k, v|
	  puts "   #{v[0]} \033[100D \033[5C|  #{k}\033[100D\033[22C|  #{v[1]}\033[100D\033[40C|  #{v[2]}"
	end
end=#

println("""
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ COMPILADOR DEL LENGUAJE PASCAL v 0.1 ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓             ALUMNOS:              ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
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

#url = C:\Users\Neomatrix\Desktop\pascalero.pas

println("\t\tANALIZADOR LEXICOGRAFICO")

#numlinea = 0

cadenaunica= leer(url)

println(cadenaunica)

 if analizacomentarios(cadenaunica)==1
  #cadenaunica= replace(cadenaunica,r"{.+}|\n|\r|\t|\s","") 
  cadenaunica= replace(cadenaunica,r"{.+}|\(\*.+\*\)","") #quitando de raiz los comentarios!!!!
  println(cadenaunica)
end
#---------------!!!!!!!!!!!!!!!!!!!!!!!!!

# r = matchall(r"{.+}|\(\*.+\*\)", cade)
# show(r) #> ["(*Probando Cambios*)","{numero de vueltas que dara el bucle}","(*otro comentario*)"]

# iter = eachmatch(r"{.+}|\(\*.+\*\)", cade)
# for i in iter
# println("\"$(i.match)\" ")
# end
#>"(*Probando Cambios*)"
#"{numero de vueltas que dara el bucle}"
#"(*otro comentario*)"
#---------------!!!!!!!!!!!!!!!!!!!!!!!!!



#=File.open(url, 'r') do |f1|
  while linea = f1.gets
  	if linea != "\n"
  		$numlinea = $numlinea+1
	  	println "\033[1;32m-->\033[1;37m #{linea}\033[1;36m"
	    analizador(linea)
	    cadenaunica += linea
	    println "\n\033[1;37m"
	    vertabla()
	    println "\033[1;36m"
	    println "presione una tecla para continuar"
	    STDOUT.flush  
		continuar = gets.chomp 
	end
  end
end=#
#println("\033[1;37m")

#println("\t\tANALIZADOR SEMANTICO")

#println(cadenaunica)

#=println "presione una tecla para continuar..."
	    STDOUT.flush  
		continuar = gets.chomp 
=#
#=semantica(cadenaunica)
vertabla()=#
#println("\n\tArbol\n")
#println($salida)
#println "presione una tecla para continuar..."
	    #STDOUT.flush  
		#continuar = gets.chomp 
