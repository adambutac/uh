import chem
import absorbance

def probA():
    M = 0.005 
    volKI = [0.0223, 0.0223, 0.0227] 
    av = []  
    for L in volKI: 
        mols = chem.getMols(M,L) 
        molsI2 = mols/2.0 
        print(molsI2) 
        molsVitC = molsI2/0.005 
        print(molsVitC) 
        av.append(molsVitC) 
    print(absorbance.average(av))

def probB():
    M = 0.005 
    volKI = [0.0416, 0.0417, 0.0426] 
    av = []  
    for L in volKI: 
        mols = chem.getMols(M,L) 
        molsI2 = mols/2.0 
        print("Mols I2: " + str(molsI2)) 
        MVitC = molsI2/0.010 
        print("M VitC: " + str(MVitC)) 
        gVitC = (molsI2)*176.12
        av.append(gVitC) 
        print("Grams of V-C: " + str(gVitC))

    print("Average weight: " + str(absorbance.average(av)))
    print("%diff: " + str(absorbance.average(av)/1.2))
    print("M" + str(((absorbance.average(av))/176.12)/0.0150))

def probC():
    M = 0.005
    volKI = 0.02135
    gInit = .500
    lInit = .100 

    mols = chem.getMols(M,volKI)
    print(mols)
    molsI2 = mols/2.0
    print(molsI2)
    gvitC = molsI2*176.12
    print(gvitC)
    print(gvitC/0.500*100)

probC()
