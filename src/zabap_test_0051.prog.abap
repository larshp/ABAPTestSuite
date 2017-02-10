REPORT zabap_test_0051 NO STANDARD PAGE HEADING.

DATA: lv_i TYPE i.

PERFORM foo CHANGING lv_i.
WRITE: / lv_i.

FORM foo CHANGING cv_i TYPE i.
  cv_i = 5.
  WRITE: / cv_i.
ENDFORM.
