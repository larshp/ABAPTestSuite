REPORT zabap_test_0043 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure,
         foo TYPE i,
         bar TYPE i,
       END OF st_structure.

DATA: gs_structure TYPE st_structure.

gs_structure-foo = 7.
gs_structure-bar = 8.

WRITE: / gs_structure-foo, / gs_structure-bar.

CLEAR gs_structure.

WRITE: / gs_structure-foo, / gs_structure-bar.