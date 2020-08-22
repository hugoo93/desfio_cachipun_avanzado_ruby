def menu1
    puts "Turno jugador uno:\n"
    puts "\t1. Piedra"
    puts "\t2. Papel"
    puts "\t3. Tijera"
    puts "\t4. Salir"
end

def menu2
    puts "Turno jugador dos:\n"
    puts "\t1. Piedra"
    puts "\t2. Papel"
    puts "\t3. Tijera"
    puts "\t4. Salir"
end

puts
puts "\t=========================="
puts "\t¡¡Bienvenido al Cachipun!!"
puts "\t=========================="
puts
puts "\t------------------"
puts "\t| Primer Jugador |"
puts "\t------------------"
puts
puts "Eliga una opción (seleccione el número de la opción)"
puts
puts menu1

jugador1 = gets.chomp.to_i

while jugador1 != 4
    if jugador1 == 1 || jugador1 == 2 || jugador1 == 3
        op1 = jugador1
        break
    else
        puts
        puts "No existe esa opción. Escoja otra vez."
        puts
        puts menu1
        jugador1 = gets.chomp.to_i
    end
end

puts
puts "\t-------------------"
puts "\t| Segundo Jugador |"
puts "\t-------------------"
puts
puts "Eliga una opción (seleccione el número de la opción)"
puts
puts menu2

jugador2 = gets.chomp.to_i

while jugador2 != 4
    if jugador2 == 1 || jugador2 == 2 || jugador2 == 3
        op2 = jugador2
        break
    else
        puts
        puts "No existe esa opción. Escoja otra vez."
        puts
        puts menu2
        jugador2 = gets.chomp.to_i
    end
end

case jugador1
    when 1
        puts
        puts "Empataron" if jugador2 == 1
        puts "Primer jugador gana" if jugador2 == 3
        puts "Segundo jugador gana" if jugador2 == 2
    when 2
        puts
        puts "Empataron" if jugador2 == 2
        puts "Primer jugador gana" if jugador2 == 1
        puts "Segundo jugador gana" if jugador2 == 3
    else
        puts
        puts "Empataron" if jugador2 == 3
        puts "Primer jugador gana" if jugador2 == 2
        puts "Segundo jugador gana" if jugador2 == 1
end

puts
puts "\t====================="
puts "\t!!Gracias por jugar¡¡"
puts "\t====================="
puts