REPORT zabap_test_0049 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure,
         foo TYPE i,
         bar TYPE i,
       END OF st_structure.

DATA: lt_table     TYPE TABLE OF st_structure,
      ls_structure TYPE st_structure.

CLEAR ls_structure.
ls_structure-foo = 7.
ls_structure-bar = 8.
APPEND ls_structure TO lt_table.

LOOP AT lt_table INTO ls_structure.
  WRITE: / ls_structure-foo, / ls_structure-bar.
  ls_structure-bar = 67.
ENDLOOP.

LOOP AT lt_table INTO ls_structure.
  WRITE: / ls_structure-foo, / ls_structure-bar.
ENDLOOP.
