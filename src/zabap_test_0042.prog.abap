REPORT zabap_test_0042 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure,
         foo TYPE i,
         bar TYPE i,
       END OF st_structure.

DATA: gt_table     TYPE TABLE OF st_structure,
      gs_structure TYPE st_structure.

CLEAR gs_structure.
gs_structure-foo = 7.
gs_structure-bar = 8.
APPEND gs_structure TO gt_table.

CLEAR gs_structure.
gs_structure-foo = 27.
gs_structure-bar = 38.
APPEND gs_structure TO gt_table.

LOOP AT gt_table INTO gs_structure.
  WRITE: / gs_structure-foo, / gs_structure-bar.
ENDLOOP.
