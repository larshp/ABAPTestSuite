REPORT zabap_test_0039 NO STANDARD PAGE HEADING.

DATA: gt_i TYPE TABLE OF i,
      gv_i TYPE i.

APPEND 5 TO gt_i.
APPEND 3 TO gt_i.
APPEND 2 TO gt_i.

LOOP AT gt_i INTO gv_i.
  WRITE: / gv_i.
ENDLOOP.