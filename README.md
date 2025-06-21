# shaRkinjuries

In light of the 50th anniversary of the amazing movie JAWS, this is a quick code snippet that I adapted from a different project to search for and filter out rows of claims data that indicate a shark-related injury based on ICD codes.

## Additional info - shark injuries

According to the International Shark Attack File obtained by the Florida Museum of Natural History, there were 28 unprovoked shark bites in the U.S. 2024, with the highest concentration in Florida:

https://www.floridamuseum.ufl.edu/shark-attacks/yearly-worldwide-summary/

## Additional info - e-codes in claims data

Injury codes are included as e-codes in claims data (external cause of injury). 
Note: ICD e-codes includes ALL shark-related injuries, not just shark "bites." So, in theory, if someone gets thwacked by a shark's tail and sustains an injury, that is included, though I cannot speak to the frequency of this occurring...

Browsing tool from CDC:
+ https://www.cdc.gov/nchs/icd/icd-10-cm/index.html

Page with e-codes for "non-venomous marine animals," including sharks:
+ https://www.icd10data.com/ICD10CM/Codes/V00-Y99/W50-W64/W56-

## Caveats
+ E-codes are not always complete because cause of injury may not be fully or correctly ascribed at the time of admission or discharge
+ ^some more info: https://injuryprevention.bmj.com/content/early/2024/06/21/ip-2023-045164.abstract

## Additional caveats
+ (I am neither a shark expert nor a shark-related injury expert.)

