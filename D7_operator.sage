# D7_monodromy.sage
from sage.all import *
from ore_algebra import *

# Определение оператора
A = OreAlgebra(QQ['x'], 'Dx')
x = A.base_ring().gen()
Dx = A.gen()

theta = x * Dx

D7 = theta^3 - x*(2*theta + 1)*(13*theta^2 + 13*theta + 4) - 3*x^2*(theta + 1)*(3*theta + 2)*(3*theta + 4)

print("D7 operator defined successfully")

# Riemann scheme
print("\nRiemann scheme:")
print(D7.riemann_scheme())

# Монодромия вокруг x=1/27
print("\nComputing monodromy around x=1/27...")
M127 = D7.monodromy_matrix(QQ(1)/27, radius=QQ(1)/30)
print(M127)

# Монодромия вокруг x=-1
print("\nComputing monodromy around x=-1...")
M_m1 = D7.monodromy_matrix(-1, radius=QQ(1)/15)
print(M_m1)

print("\nDone.")
