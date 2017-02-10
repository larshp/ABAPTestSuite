REPORT zabap_test_0057 NO STANDARD PAGE HEADING.

DATA: lv_date TYPE d.

lv_date = sy-datum.
WRITE: / lv_date.

lv_date = lv_date - 1.
WRITE: / lv_date.
