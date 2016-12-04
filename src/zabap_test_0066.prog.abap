REPORT zabap_test_0066 NO STANDARD PAGE HEADING.

DATA: lv_foo TYPE i.

lv_foo = 5.

CASE lv_foo.
  WHEN 2 OR 5.
    WRITE: / 'bar'.
  WHEN OTHERS.
    WRITE: / 'foo'.
ENDCASE.