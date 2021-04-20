* Encoding: UTF-8.
#Ventricular arrhythmia Univariate analysis with RVEF 
 
 COXREG Arrythmia_years
  /STATUS=VT(1)
  /METHOD=ENTER RVEF
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

#Ventricular arrhythmia Univariate analysis with RV global longitudinal strain

COXREG Arrythmia_years
  /STATUS=VT(1)
  /METHOD=ENTER RVLS
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).
  
#Ventricular arrhythmia  Multivariate analysis with RVEF
  
  COXREG Arrythmia_years
  /STATUS=VT(1)
  /METHOD=ENTER RVEF age Syncope_r LA.Diameter.LVOTRS Medication_use RVMASS LS_LV MaxWallThickness
    LGE
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).


#Ventircular arrhythmia Multivariate analysis with RV global longitudinal strain 

  COXREG Arrythmia_years
  /STATUS=VT(1)
  /METHOD=ENTER RVLS age Syncope_r LA.Diameter.LVOTRS Medication_use RVMASS LS_LV MaxWallThickness
    LGE
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

#Univariate analysis with RVEF

COXREG Year_comp
  /STATUS=composit(1)
  /METHOD=ENTER RVEF
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).
  
#Univariate analysis with RV global longitudinal strain

COXREG Year_comp
  /STATUS=composit(1)
  /METHOD=ENTER RVLS
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

#Multivariate analysis with RVEF

COXREG Year_comp
  /STATUS=composit(1)
  /METHOD=ENTER RVEF age BMI LA.Diameter.LVOTRS NYHAclassnew Medication_use MaxWallThickness
    FH_SCD_r LVEF Lvmass_indexed LGE_mass_g CT
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

 #Multivariate analysis with RV global longitudinal strain

COXREG Year_comp
  /STATUS=composit(1)
  /METHOD=ENTER RVLS age BMI LA.Diameter.LVOTRS NYHAclassnew Medication_use MaxWallThickness
    FH_SCD_r LVEF Lvmass_indexed LGE_mass_g CT
  /PRINT=CI(95)
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20).

