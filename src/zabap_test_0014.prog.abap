REPORT zabap_test_0014 NO STANDARD PAGE HEADING.

DATA: gt_table TYPE TABLE OF c,
      gv_table LIKE LINE OF gt_table.

APPEND 'A' TO gt_table.

READ TABLE gt_table INDEX 1 INTO gv_table.

WRITE gv_table.