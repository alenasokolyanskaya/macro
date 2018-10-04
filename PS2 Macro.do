
*** FOR THE U.S.

import excel "/Users/alena/Desktop/PS2 Macro/USincome.xls", sheet("????1") firstrow

* labor share for US
 gen theta = CE / (Nationalincome - PI)
 gen year = A
 gen LS_US = (CE + theta*PI)/ Nationalincome
 
 destring year, replace
 tsset year
 tsline LS_US

 * labor share in corporate sector
 
 gen LS_Corp = CE_corp/ Corporatebusiness
 tsline LS_Corp
 
 *** FOR RUSSIA
 clear all
 
 import excel "/Users/alena/Desktop/PS2 Macro/LS rus.xlsx", sheet("????2") firstrow

 gen theta = CE / (Y - PI)
 gen year = A
 gen LS_Rus = (CE + theta*PI)/ Y
 
 destring year, replace
 tsset year
 tsline LS_Rus
 
 
*** Gross
import excel "/Users/alena/Desktop/PS2 Macro/grossUS.xls", sheet("????1") firstrow

 gen theta = CE / (gross - PI)
 gen year = A
 gen LS_US_gross = (CE + theta*PI)/ gross
 
 destring year, replace
 tsset year
 tsline LS_US_gross

 *corporate gross
 gen LS_Corp_gross = CE_corp / gross_corp
 tsline LS_Corp_gross
