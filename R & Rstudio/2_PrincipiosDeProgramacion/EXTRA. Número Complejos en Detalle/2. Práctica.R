### Profundización de Números Complejos en R

"
1. Declaración y ejemplo de número complejo:

"

class(3+2i)



"
2. Operando números complejos:

"

(3+2i)*5
(3+2i)*(-1+3i)
(3+2i)/(-1+3i)

#Lo siguiente es un error:

2+7*i 
# El '*' sobra



"
3. Creando un número complejo en forma binómica

Vamos a crear el siguiente número complejo: '3+2i'
y guardelo en la variable 'z'. Luego, imprimalo.

Si desea puede crear también el número complejo 'pi+sqrt(2)i'

"

complex(real = 3, imaginary = 2) -> z
z



"
3.1 Ponga en práctica las funciones 'Re', 'Im' & 'Conj' para 
extraer la parte real, imaginaria y el conjugado de la variable 'z'.

Nota: El conjugado extrae tanto la parte real como imaginaria de un
número complejo, es decir, todo el número en sí. La diferencia es que
la parte imaginaria la coloca con un signo opuesto al signo inicial.

"

Re(z)
Im(z)
Conj(z)



"
4. Extraiga la raiz y la exponencial del número
complejo '3+2i'

"

sqrt(3+2i)
exp(3+2i)






