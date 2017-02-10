REPORT zabap_test_0055 NO STANDARD PAGE HEADING.

DATA: lv_string TYPE string.

lv_string = 'foo'.
TRANSLATE lv_string TO UPPER CASE.
WRITE: / lv_string.
TRANSLATE lv_string TO LOWER CASE.
WRITE: / lv_string.
