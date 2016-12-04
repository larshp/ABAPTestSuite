REPORT zabap_test_0017 NO STANDARD PAGE HEADING.

DATA: gv_c TYPE c.

IF gv_c <> ''.
  WRITE 'filled' ##NO_TEXT.
ELSE.
  WRITE 'else' ##NO_TEXT.
ENDIF.