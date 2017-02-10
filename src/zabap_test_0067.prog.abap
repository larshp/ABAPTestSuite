REPORT zabap_test_0067 NO STANDARD PAGE HEADING.

DATA: lv_foo TYPE i.

lv_foo = 5.

WHILE lv_foo < 10.
  WRITE: / sy-index.
  lv_foo = lv_foo + 1.
ENDWHILE.
