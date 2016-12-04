REPORT zabap_test_0059 NO STANDARD PAGE HEADING.

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

CLEAR ls_structure.

READ TABLE lt_table WITH KEY foo = 7 TRANSPORTING NO FIELDS.
WRITE: / sy-subrc.
WRITE: / ls_structure-foo.