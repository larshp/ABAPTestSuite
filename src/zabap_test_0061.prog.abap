REPORT zabap_test_0061 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure,
         foo TYPE i,
         bar TYPE i,
       END OF st_structure.

DATA: lt_table     TYPE TABLE OF st_structure,
      ls_structure TYPE st_structure.

CLEAR ls_structure.
ls_structure-foo = 7.
ls_structure-bar = 8.
INSERT ls_structure INTO TABLE lt_table.
WRITE: / sy-subrc.

DELETE lt_table INDEX 1.
WRITE: / sy-subrc.

WRITE: / lines( lt_table ).