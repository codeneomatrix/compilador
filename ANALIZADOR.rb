require "rly"
class CalcLex < Rly::Lex
  ignore " \t\n"

 token :CADENA, /'\w(\w|\s|-|!|@|#|$|%|&)*'/ do |t|
  		#t.type = "CADENA DE TEXTO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
#-----------------------------------------------------
  token :COMENTARIOS, /\(\*.+\*\)|\{.+\}/ do |t|
  		#t.type = "COMENTARIO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 

#--------------------------------------------
  token :MAS, /\+/ do |t|
  		##t.type = "SIGNO"
    	t.value = t.value
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :MENOS, /-/ do |t|
  		#t.type = "SIGNO"
    	t.value = t.value
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :TIMES, /\*/ do |t|
  		#t.type = "SIGNO"
    	t.value = t.value
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :DIV, /\/|DIV|div/ do |t|
  		#t.type = "SIGNO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  
  token :ASIGNACION, /:=/ do |t|
  		#t.type = "ASIGNACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :MOD, /mod|MOD/ do |t|
  		#t.type = "ASIGNACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end

  token :NUMBERFLOAT, /\d+\.\d+/ do |t|
  	#puts("NUMERO #{t.value}")
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
  token :ARRAY, /array|ARRAY/ do |t|
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
  token :INDICADORDETIPO, /integer|INTEGER|byte|BYTE|shortint|SHORTINT|word|WORD|longint|LONGINT|real|REAL|char|CHAR|string|STRING|boolean|BOOLEAN|Text|text/ do |t|
  		#t.type = "TIPO DE ARCHIVO"
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

 #-----------------OPERACION DE RELACION------------------------------------
#----------------------------------------------------------
  token :DESIGUAL, /¬=|<>/ do |t|
  		#t.type = "OPERADOR DE RELACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :MAYOROIGUALQUE, />=/ do |t|
  		#t.type = "OPERADOR DE RELACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :MENOROIGUALQUE, /<=/ do |t|
  		#t.type = "OPERADOR DE RELACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :MENORQUE, /</ do |t|
  		#t.type = "OPERADOR DE RELACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :MAYORQUE, />/ do |t|
  		#t.type = "OPERADOR DE RELACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :IGUAL, /=/ do |t|
  		#t.type = "OPERADOR DE RELACION"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  

#-----------------------------------------------------
#-------------------------------------------------------
 
  token :IDENTIFICADOR, /\w(\w|_)*|_(\w|_)*/ do |t|
  		#t.type = "IDENTIFICADOR"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 

#------------------------------------------------------

  on_error do |t|
    puts "		\033[1;31mCARACTER ILEGAL #{t.value}\033[1;36m"
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

  rule 'programa : encabezado bloque PUNTO' do |pro, enca, blo|
    pro.value = blo.value
  end

  rule 'encabezado :PROGRAM IDENTIFICADOR PARENTESISA listaident PARENTESISC PUNTOYCOMA
  				   |PROGRAM IDENTIFICADOR PUNTOYCOMA' do |enca,identifi,listaiden|
  	puts "ESTE ES EL NOMBRE DEL PROGRAMA:  #{identifi.value}"
    enca.value = listaiden.value
  end

  rule 'bloque : declaraciones enunciados' do |blo, decla, enun|
    blo.value = enun.value
  end

  
 rule 'declaraciones: VAR declaravariables PUNTOYCOMA declaraciones
 				     | PROCEDURE declaraprocemientos declaraciones
 					 | declaraetiqueta declaraciones
 					 | declaraetiqueta
     				 | declaraconstantes declaraciones
     				 | declaraconstantes
     				 | TYPE declaratipos declaraciones
     				 | TYPE declaratipos
     				 | VAR declaravariables PUNTOYCOMA
     				 | FUNCTION declarafunciones declaraciones
     				 | FUNCTION declarafunciones
     				 | PROCEDURE declaraprocemientos' do |decla, declar,puntoyc|
     decla.value = declar.value
   end

   rule 'declaravariables : identificadorv DOSPUNTOS INDICADORDETIPO' do |decla, inde|
     decla.value = inde.value
   end
   rule 'identificadorv : IDENTIFICADOR
   						  | identificadorv COMA identificadorv ' do |decla, inde|
     decla.value = inde.value
   end

   rule 'declaraetiqueta : IDENTIFICADOR ' do |decla,iden|
     decla.value = iden.value
   end
   rule 'declaratipos :IDENTIFICADOR ' do |decla,ident|
     blo.value = ident.value
   end
   rule 'declaraconstantes :CONST IDENTIFICADOR ' do |decla,ident|
     blo.value = ident.value
   end
   rule 'declarafunciones : IDENTIFICADOR PARENTESISA listaident PARENTESISC DOSPUNTOS INDICADORDETIPO' do |decla,ident|
     blo.value = ident.value
   end
   rule 'declaraprocemientos :IDENTIFICADOR PARENTESISA declaravariables PARENTESISC bloque PUNTOYCOMA' do |decla,ident|
     decla.value = ident.value
    end

   rule 'listaident : IDENTIFICADOR COMA IDENTIFICADOR' do |enun, secuenci|
    enun.value = secuenci.value
  end
	
  rule 'enunciados : BEGIN secuenciaenun END' do |enun, secuenci|
    enun.value = secuenci.value
  end

  rule 'secuenciaenun :enunciado PUNTOYCOMA secuenciaenun
  					  |enunciado PUNTOYCOMA' do |blo,inst|
    blo.value = inst.value
  end

  rule 'enunciado : IDENTIFICADOR PARENTESISA instruccion PARENTESISC
  				  | IDENTIFICADOR PARENTESISA IDENTIFICADOR PARENTESISC
  				  | IDENTIFICADOR PARENTESISA identificadores PARENTESISC
  				  | instruccion
  				  | WRITE PARENTESISA salida PARENTESISC
  				  | READ PARENTESISA identificadores PARENTESISC' do |blo, ins|
    blo.value = ins.value
  end
  
  rule 'salida : salida COMA salida
  				| identificadores
  				| CADENA 
  				| NUMBERINT
  			    | NUMBERFLOAT' do |blo, ins|
    blo.value = ins.value
  end

  rule 'identificadores :identificadores COMA identificadores
  						| identificadores PUNTO identificadores 
  				        | IDENTIFICADOR' do |blo, ins|
    blo.value = ins.value
  end

  rule 'instruccion :operacionm
  					| IDENTIFICADOR ASIGNACION IDENTIFICADOR
  					| IDENTIFICADOR ASIGNACION operacionm
  					| IDENTIFICADOR ASIGNACION operacional' do |blo, decla|
    blo.value = decla.value
  end

  
  rule 'operacional : IDENTIFICADOR MAS IDENTIFICADOR
                   | IDENTIFICADOR MENOS IDENTIFICADOR
                   | IDENTIFICADOR TIMES IDENTIFICADOR
                   | IDENTIFICADOR DIV IDENTIFICADOR' do |ex, e1, op, e2|
    puts "HACIENDO OPERACION MATEMATICA"
    ex.value = e1.value
  end

  rule 'operacionm : numero MAS numero
                   | numero MENOS numero
                   | numero TIMES numero
                   | numero DIV numero' do |ex, e1, op, e2|
    puts "HACIENDO OPERACION MATEMATICA"
    ex.value = e1.value.send(op.value, e2.value)
  end

  rule 'numero : NUMBERINT
  			   | NUMBERFLOAT' do |ex, n|
  	puts "ENTERO!!!!"
    ex.value = n.value
  end
end



#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------

def tablasimbolos(clave,valor)
	tabla[clave]  = valor
end


def analizador(cadena, tabla)
lex = CalcLex.new(cadena)
parser = CalcParse.new(CalcLex.new)

while true
	tok = lex.next
	if tok != nil 
		puts "		#{tok.type} #{tok.value}"
		if "#{tok.type}" == "IDENTIFICADOR"
		tabla[tok.value]=tok.type
	    end
	end
	if not tok
		break
	end
end

puts(parser.parse(cadena,true))
end

def vertabla(tabla)
	puts "               TABLA DE SIMBOLOS"
	puts "|         NOMBRE\033[100D \033[20C|         TIPO        |"
	tabla.each do |k, v|
	  puts "   #{k} \033[100D \033[20C|  #{v}"
	end
end

puts "\t***********************************************************************************"
puts "\t***************************Compilador de lenguaje pascal***************************"
puts "\t***********************************************************************************"
puts "\t*************************************ALUMNOS:**************************************"
puts "\t******ACEVEDO MALDONADO JOSUE             		                     ******"
puts "\t******MORALES MARTINEZ MARIA                				     ******"
puts "\t******OLIVERA LUIS             		                                     ******"
puts "\t******PEREZ CARRERA CARLOS             		                             ******"
puts "\t******RUIZ GONZALES ALEXANDER             		                     ******"
puts "\t******						                             ******"
puts "\t***********************************************************************************"

tabla= {}



puts "Url del archivo .pas:"  
STDOUT.flush  
url = gets.chomp  

#url = C:\Users\Neomatrix\Desktop\pascalero.pas


# Abre y lee un fichero
# Se usa un bloque: el fichero se cierra
# automáticamente al acabar el bloque.
File.open(url, 'r') do |f1|
  while linea = f1.gets
  	if linea != "\n"
	  	puts "\033[1;32m-->\033[1;37m #{linea}\033[1;36m"
	    analizador(linea, tabla)
	    puts "\n\033[1;37m"
	    vertabla(tabla)
	    puts "\033[1;36m"
	end
  end
end
puts "\033[1;37m"

