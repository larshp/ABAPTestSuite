REPORT zabap_test_0065 NO STANDARD PAGE HEADING.

DATA: lv_foo TYPE i.

lv_foo = 5.

CASE lv_foo.
  WHEN 2.
    WRITE: / 'bar'.
  WHEN OTHERS.
    WRITE: / 'foo'.
ENDCASE.
