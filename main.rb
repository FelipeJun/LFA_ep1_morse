$value = ""

def q0(array, index)
    case array[index]
    when "."
        index += 1
        q1(array, index)
    when "-"
        index += 1
        q15(array, index)
    when "/"
        $value.concat(" ")
        index += 1
        q0(array, index)
    when " "
        index += 1
        q0(array, index)
    when nil
        puts "fim"
    else
        estado = "Erro"
    end
end

#.
def q1(array, index)
    case array[index]
    when "."
        index += 1
        q2(array, index) ##
    when "-"
        index += 1
        q6(array, index) ##
    when "/"
        index += 1
        q3(array, index)
    when " "
        index += 1
        $value.concat("e")
        q0(array, index)
    when nil
        $value.concat("e")
        puts "fim"
    else
        estado = "Erro"
    end
end

#..
def q2(array, index)
    case array[index]
    when "."
        index += 1
        q3(array, index) ##
    when "-"
        index += 1
        q12(array, index)
    when "/"
      index += 1
      q3(array, index)
    when " "
        index += 1
        $value.concat("i")
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("i")
    else
        estado = "Erro"
    end
end

#...
def q3(array, index)
    case array[index]
    when "."
        index += 1
        q4(array, index) ##
    when "-"
        index += 1
        q11(array, index) ##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("s")
        index += 1
        q0(array, index)
    when nil
        $value.concat("s")
        puts "fim"
    else
        estado = "Erro"
    end
end

#....
def q4(array, index)
    case array[index]
    when "."
        index += 1##
        q5(array, index)
    when "-"
        index += 1
        q31(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("h")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("h")
    else
        estado = "Erro"
    end
end

#.....
def q5(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("5")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("5")
    else
        estado = "Erro"
    end
end

#.-
def q6(array, index)
    case array[index]
    when "."
        index += 1
        q7(array, index) ##
    when "-"
        index += 1
        q9(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("a")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("a")
    else
        estado = "Erro"
    end
end

#.-.
def q7(array, index)
    case array[index]
    when "."
        index += 1
        q8(array, index)##
    when "-"
        index += 1
        noTem4(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("r")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("r")
    else
        estado = "Erro"
    end
end

#.-..
def q8(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("l")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("l")
    else
        estado = "Erro"
    end
end

#.--
def q9(array, index)
    case array[index]
    when "."
        index += 1
        q14(array, index) ##
    when "-"
        index += 1
        q10(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("w")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("w")
    else
        estado = "Erro"
    end
end

#.---
def q10(array, index)
    case array[index]
    when "-"
      index += 1
      q29(array, index) ##
    when "/"
      index += 1
      q3(array, index)
    when " "
      $value.concat("j")
      index += 1
      q0(array, index)
    when nil
      puts "fim"
      $value.concat("j")
    else
        estado = "Erro"
    end
end

#...-
def q11(array, index)
    case array[index]
    when "-"
    index += 1
    q30(array, index) ##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("v")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("v")
    else
        estado = "Erro"
    end
end

#..-
def q12(array, index)
    case array[index]
    when "."
        index += 1
        q13(array, index) ##
    when "-"
      index += 1
      noTem3(array, index) ##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("u")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("u")
    else
        estado = "Erro"
    end
end

#..-.
def q13(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("f")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("f")
    else
        estado = "Erro"
    end
end

#.--.
def q14(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("p")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("p")
    else
        estado = "Erro"
    end
end

#-
def q15(array, index)
    case array[index]
    when "."
        index += 1
        q20(array, index)##
    when "-"
        index += 1
        q16(array, index)
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("t")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("t")
    else
        estado = "Erro"
    end
end

#--
def q16(array, index)
    case array[index]
    when "."
        index += 1
        q18(array, index)##
    when "-"
        index += 1
        q17(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("m")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("m")
    else
        estado = "Erro"
    end
end

#---
def q17(array, index)
    case array[index]
      when "."
      index += 1
      noTem(array, index)##
     when "-"
      index += 1
      noTem2(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("o")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("o")
    else
        estado = "Erro"
    end
end

#--.
def q18(array, index)
    case array[index]
    when "."
        index += 1
        q26(array, index)##
    when "-"
        index += 1
        q19(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("g")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("g")
    else
        estado = "Erro"
    end
end

#--.-
def q19(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("q")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("q")
    else
        estado = "Erro"
    end
end

#-.
def q20(array, index)
    case array[index]
    when "."
        index += 1
        q21(array, index)##
    when "-"
        index += 1
        q28(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("n")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("n")
    else
        estado = "Erro"
    end
end

#-..
def q21(array, index)
    case array[index]
    when "."
        index += 1
        q27(array, index)##
    when "-"
        index += 1
        q24(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("d")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("d")
    else
        estado = "Erro"
    end
end

#-.-.
def q23(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("c")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("c")
    else
        estado = "Erro"
    end
end

#-..-
def q24(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("x")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("x")
    else
        estado = "Erro"
    end
end

#-.--
def q25(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("y")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("y")
    else
        estado = "Erro"
    end
end

#--..
def q26(array, index)
    case array[index]
    when "."
        index += 1
        q33(array, index)##
    when "-"
        index += 1
        noTem5(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("z")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("z")
    else
        estado = "Erro"
    end
end

#-...
def q27(array, index)
    case array[index]
      when "."
        index += 1
        q32(array, index)##
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("b")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("b")
    else
        estado = "Erro"
    end
end

#-.-
def q28(array, index)
    case array[index]
    when "."
        index += 1
        q23(array, index)##
    when "-"
        index += 1
        q25(array, index)
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("k")
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("k")
    else
        estado = "Erro"
    end

end

def q29(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("1")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("1")
    else
        estado = "Erro"
    end
end

def q30(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("3")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("3")
    else
        estado = "Erro"
    end
end

def q31(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("4")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("4")
    else
        estado = "Erro"
    end
end

def q32(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when "-"
        index += 1
        q41(array, index)
    when " "
        $value.concat("6")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("6")
    else
        estado = "Erro"
    end
end

def q33(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("7")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("7")
    else
        estado = "Erro"
    end
end

def q34(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("8")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("8")
    else
        estado = "Erro"
    end
end

def noTem(array, index)
    case array[index]
    when "."
        index += 1
        q34(array, index)
    else
        estado = "Erro"
    end
end

def noTem2(array, index)
    case array[index]
    when "."
        index += 1
        q35(array, index)
     when "-"
        index += 1
        q36(array, index)
    else
        estado = "Erro"
    end
end

def noTem3(array, index)
    case array[index]
    when "-"
        index += 1
        q37(array, index)
    when "."
        index += 1
        q42(array, index)
    else
        estado = "Erro"
    end
end

def noTem4(array, index)
    case array[index]
    when "."
        index += 1
        q38(array, index)
    else
        estado = "Erro"
    end
end

def noTem5(array, index)
    case array[index]
    when "-"
        index += 1
        q40(array, index)
    else
        estado = "Erro"
    end
end

def q35(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("9")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("9")
    else
        estado = "Erro"
    end
end

def q36(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("0")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("0")
    else
        estado = "Erro"
    end
end

def q37(array, index)
    case array[index]
    when "/"
        index += 1
        q3(array, index)
    when " "
        $value.concat("2")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("2")
    else
        estado = "Erro"
    end
end

def q38(array, index)
    case array[index]
    when "-"
        index += 1
        q39(array, index)
    else
        estado = "Erro"
    end
end

def q39(array, index)
    case array[index]
    when " "
        $value.concat(".")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat(".")
    else
        estado = "Erro"
    end
end

def q40(array, index)
    case array[index]
    when " "
        $value.concat(",")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat(",")
    else
        estado = "Erro"
    end
end

def q41(array, index)
    case array[index]
    when " "
        $value.concat("-")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("-")
    else
        estado = "Erro"
    end
end

def q42(array, index)
    case array[index]
    when "."
        index += 1
        q43(array, index)
    else
        estado = "Erro"
    end
end

def q43(array, index)
    case array[index]
    when " "
        $value.concat("?")##
        index += 1
        q0(array, index)
    when nil
        puts "fim"
        $value.concat("?")
    else
        estado = "Erro"
    end
end

msg = gets.strip.split("")
index = 0
q0(msg, index)

puts "resposta final = #{$value}"