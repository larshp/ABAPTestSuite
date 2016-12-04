REPORT zabap_test_0056 NO STANDARD PAGE HEADING.

DATA: lv_string TYPE string.

lv_string = 'foo'.
TRANSLATE lv_string USING 'oO'.
WRITE: / lv_string.