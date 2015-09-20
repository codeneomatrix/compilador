require "rly"
class CalcLex < Rly::Lex
  ignore " \t\n"

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



  token :WRITELN, /writeln|writeLn|WRITELN/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :WRITE, /write|WRITE/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :READLN, /readln|readLn|READLN/ do |t|
  		#t.type = "PALABRA RESERVADA"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :READ, /read|READ/ do |t|
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
  token :INTEGER, /integer|INTEGER/ do |t|
  		#t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :BYTE, /byte|BYTE/ do |t|
  		#t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :SHORTINT, /shortint|SHORTINT/ do |t|
  		#t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :WORD, /word|WORD/ do |t|
  		#t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :LONGINT, /longint|LONGINT/ do |t|
  		#t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :REAL, /real|REAL/ do |t|
  		#t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end
  token :CHAR, /char|CHAR/ do |t|
  		#t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :STRING, /string|STRING/ do |t|
  		#t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :BOOLEAN, /boolean|BOOLEAN/ do |t|
  		#t.type = "INDICADOR DE TIPO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
  token :TEXT, /Text|text/ do |t|
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
  token :CADENA, /'.+'/ do |t|
  		#t.type = "CADENA DE TEXTO"
    	t.value = t.value  	
  		#puts("SIGNO #{t.value}")
  		t
  end 
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

  rule 'statement : expression' do |st, e|
    st.value = e.value
  end

  rule 'expression : expression MAS expression
                   | expression "-" expression
                   | expression "*" expression
                   | expression "/" expression' do |ex, e1, op, e2|
    ex.value = e1.value.send(op.value, e2.value)
  end

  rule 'expression : NUMBERINT' do |ex, n|
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

