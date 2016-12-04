REPORT zabap_test_0047 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure,
         foo TYPE i,
         bar TYPE i,
       END OF st_structure.

DATA: gt_table     TYPE TABLE OF st_structure,
      gv_i         TYPE i VALUE 8,
      gs_structure TYPE st_structure.

CLEAR gs_structure.
gs_structure-foo = 7.
gs_structure-bar = 8.
APPEND gs_structure TO gt_table.

CLEAR gs_structure.
gs_structure-foo = 27.
gs_structure-bar = 38.
APPEND gs_structure TO gt_table.

LOOP AT gt_table INTO gs_structure WHERE foo = 7.
  WRITE: / gs_structure-foo, / gs_structure-bar.
ENDLOOP.
WRITE: / 'tabix', sy-tabix.

WRITE: /.

LOOP AT gt_table INTO gs_structure WHERE foo = 7 OR bar = 38.
  WRITE: / gs_structure-foo, / gs_structure-bar.
ENDLOOP.
WRITE: / 'tabix', sy-tabix.

WRITE: /.

LOOP AT gt_table INTO gs_structure WHERE foo = 7 AND bar = 8.
  WRITE: / gs_structure-foo, / gs_structure-bar.
ENDLOOP.
WRITE: / 'tabix', sy-tabix.

WRITE: /.

LOOP AT gt_table INTO gs_structure WHERE bar = gv_i.
  WRITE: / gs_structure-foo, / gs_structure-bar.
ENDLOOP.
WRITE: / 'tabix', sy-tabix.