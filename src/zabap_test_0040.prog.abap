REPORT zabap_test_0040 NO STANDARD PAGE HEADING.

DATA: gt_i TYPE TABLE OF i,
      gv_i TYPE i.

APPEND 2 TO gt_i.
APPEND 3 TO gt_i.
APPEND 2 TO gt_i.
APPEND 3 TO gt_i.

WRITE: / sy-subrc.
LOOP AT gt_i INTO gv_i.
  WRITE: / sy-tabix.
  WRITE: / gv_i.
ENDLOOP.
WRITE: / sy-subrc.
