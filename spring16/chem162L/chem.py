import math
import absorbance

def calc_pH_simple(M, Ka):
    h_ions = solve_quadratic(1,Ka,-Ka*M)
    print('Number of Hydronium ions: ' + str(h_ions))
    return -math.log10(h_ions)

def dilute(M, L_init, L_final):
    mol = getMols(M,L_init) 
    M_final = mol/L_final
    #print('Total Volume: ' + str(L_final))
    return M_final

def dilute_both(M1, M2, L1, L2):
    return [dilute(M1, L1, L1+L2), dilute(M2, L2, L1+L2)]

def getMols(M, L_init):
    mol = M*L_init
    return mol

def solve_quadratic(a,b,c):
    d = (b**2.0) - (4.0*a*c)
    if(d < 0.0):
        print('You probably entered incorrect values, trust me.')
        return -1

    sol1 = (-b-math.sqrt(d))/(2.0*a)
    sol2 = (-b+math.sqrt(d))/(2.0*a)
    if(sol1 >= 0.0):
        return sol1
    elif(sol2 >= 0.0):
        return sol2

Ka = (2.5*10**-8)

def prob_1():
    print('Problem 1')
    print('The pH of this solution is: ' + str(calc_pH_simple(0.1,Ka)))
    print('')

def prob_2():
    print('Problem 2')
    
    stuff = [0.025, 0.040, 0.045]
    for i in stuff:
        sol = dilute_both(0.1, 0.1, 0.04, i)
        print('M of weak acid: ' + str(sol[0]))
        print('M of strong base: ' + str(sol[1]))
        print('Step 4: ' + str(-math.log10(Ka) + math.log10(sol[1]/sol[0])))
    print('')

def prob_3():
        print('Step 4: ' + str(solve_quadratic(1,0.1,0.0025)))

