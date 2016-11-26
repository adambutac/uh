import chem
import itertools
import math

def percent_transmittance():
    return

def optical_density(A, e, b ,c):
    #A is absorbance
    #e is the molar absorbtivity
    #b is solution path length (length of curvette in cm)
    #c is the concentration of solution in mols per litre
    if(A and b and c):
        return A/(b*c)
    if(A and e and b):
        return A/(b*e)

def calibration_curve():
    A = [0.130, 0.500, 0.815, 0.930]
    e = [None, None, None, None]
    b = 1.0 
    c = [chem.dilute(0.0024, 1, 100),
         chem.dilute(0.0024, 5, 100),
         chem.dilute(0.0024, 10, 100),
         chem.dilute(0.0024, 15, 100)]

    for i in range(0,len(c)):
        print("Concentration: " + str(c[i]) + "M")
        print("Light absorbed: " + str(A[i]*100) + "%")
        e[i] = optical_density(A[i], e[i], b, c[i])
        print("Absorption Coefficient: " + str(e[i]))

    total = 0
    for i in range(0, len(e)):
        total += e[i]

    total_error= 0
    diff = []
    for i in itertools.combinations(e, 2):
       diff.append(i[0] - i[1])
    average_total = total/len(e)
    average_error = sum(diff)/len(diff) 
    print("Average absorption Coefficent: " + str(average_total))
    print("Average deviation: " + str(average_error))
    print("Error margin: " + str(average_error/average_total))
    return average_total

def absorbance():
    e = calibration_curve();
    A = [0.280, 0.712, 0.835]
    M_cro = []
    M_ag = []
    Ksp_ag_cro = []

    for i in A:
        M_cro.append(optical_density(i,e,1.0,None))

    for i in M_cro:
        M_ag.append(i*2.0)
    
    for i in range(0, len(M_cro)):
        Ksp_ag_cro.append(M_cro[i] * (M_ag[i]**2.0))

    for i in range(0, len(Ksp_ag_cro)):
        print("Concentration of chromate: " + str(M_cro[i]))
        print("Concentration of silver: " + str(M_ag[i]))
        print("Solubility constant Ksp: " + str(Ksp_ag_cro[i]))
    print("Average Ksp: " + str(average(Ksp_ag_cro)))
    print("Standard deviation: " + str(deviation(Ksp_ag_cro)))
    return average(Ksp_ag_cro)

def average(values):
    mu = 0
    for i in values:
        mu += i
    mu /= len(values)
    return mu

def deviation(values):
    mu = average(values) 
    sum_mu = 0
    for i in values:
        sum_mu += (i - mu)**2.0
    sum_mu /= len(values)
    
    return math.sqrt(sum_mu)
real_ksp = (1.1*(10**(-12)))
Ksp = absorbance()
concentration = Ksp**(1.0/3)
grams = concentration * 0.01 * 331.73
print(concentration)
print(grams/1000)
print((Ksp - real_ksp)/real_ksp)
