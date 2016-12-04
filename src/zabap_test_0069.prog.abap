REPORT zabap_test_0069 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure,
         foo TYPE i,
         bar TYPE i,
       END OF st_structure.

DATA: gt_table     TYPE TABLE OF st_structure,
      gs_structure TYPE st_structure.

FIELD-SYMBOLS: <gs_structure> LIKE LINE OF gt_table.


CLEAR gs_structure.
gs_structure-foo = 7.
gs_structure-bar = 8.
APPEND gs_structure TO gt_table.

CLEAR gs_structure.

LOOP AT gt_table ASSIGNING <gs_structure>.
  <gs_structure>-foo = 5.
ENDLOOP.

LOOP AT gt_table ASSIGNING <gs_structure>.
  WRITE: / <gs_structure>-foo.
ENDLOOP.