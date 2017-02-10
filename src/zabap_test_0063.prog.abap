REPORT zabap_test_0063 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure,
         foo TYPE i,
       END OF st_structure.

DATA: lt_table     TYPE TABLE OF st_structure,
      lv_lines     TYPE i,
      ls_structure TYPE st_structure.

CLEAR ls_structure.
ls_structure-foo = 7.
APPEND ls_structure TO lt_table.
APPEND ls_structure TO lt_table.
APPEND ls_structure TO lt_table.

DESCRIBE TABLE lt_table LINES lv_lines.
WRITE: / lv_lines.
