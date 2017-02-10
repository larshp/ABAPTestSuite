REPORT zabap_test_0053 NO STANDARD PAGE HEADING.

DATA: lv_string TYPE string.

CONCATENATE 'a' 'b' INTO lv_string SEPARATED BY space.
WRITE: / lv_string.
