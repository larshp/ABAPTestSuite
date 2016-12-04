REPORT zabap_test_0018 NO STANDARD PAGE HEADING.

DATA: gv_c TYPE c.

IF gv_c = 'a'.
  WRITE gv_c.
ELSEIF gv_c = ''.
  WRITE 'elseif' ##NO_TEXT.
ENDIF.