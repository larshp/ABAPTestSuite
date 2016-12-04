REPORT zabap_test_0052 NO STANDARD PAGE HEADING.

DATA: lv_i TYPE i.

PERFORM foo USING 4 CHANGING lv_i.
WRITE: / lv_i.

FORM foo USING pv_j TYPE i CHANGING cv_i TYPE i.
  cv_i = 5 + pv_j.
  WRITE: / cv_i.
ENDFORM.