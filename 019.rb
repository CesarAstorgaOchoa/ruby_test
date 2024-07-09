# Imprimir la tabla de valores de la función seno para cada valor entre los
# 0° y 359°
#
# Ejemplo:
# 0° = 0.0
# 1° = 0.01745240643728351
# 2° = 0.03489949670250097
# 3° = 0.052335956242943835
# 4° = 0.0697564737441253
# ...


def print_sin_values
  (0..359).map{ |num| puts "#{num}° = #{Math.sin(num)}" }
end

print_sin_values
