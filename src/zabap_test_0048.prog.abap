REPORT zabap_test_0048 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure1,
         foo TYPE i,
         bar TYPE i,
       END OF st_structure1.

TYPES: BEGIN OF st_structure2,
         moo TYPE i,
         boo TYPE i,
       END OF st_structure2.

DATA: lt_table1     TYPE TABLE OF st_structure1,
      lt_table2     TYPE TABLE OF st_structure2,
      ls_structure1 TYPE st_structure1,
      ls_structure2 TYPE st_structure2.


CLEAR ls_structure1.
ls_structure1-foo = 7.
ls_structure1-bar = 8.
APPEND ls_structure1 TO lt_table1.

CLEAR ls_structure2.
ls_structure2-moo = 27.
ls_structure2-boo = 38.
APPEND ls_structure2 TO lt_table2.

LOOP AT lt_table1 INTO ls_structure1 WHERE foo = 7.
  LOOP AT lt_table2 INTO ls_structure2 WHERE moo = 27.
    WRITE: / ls_structure1-foo.
    WRITE: / ls_structure1-bar.
    WRITE: / ls_structure2-moo.
    WRITE: / ls_structure2-boo.
  ENDLOOP.
ENDLOOP.