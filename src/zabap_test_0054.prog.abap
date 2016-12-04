REPORT zabap_test_0054 NO STANDARD PAGE HEADING.

DATA: lv_string TYPE string,
      lt_tab    TYPE TABLE OF string.

APPEND 'hello' TO lt_tab.
APPEND 'world' TO lt_tab.

CONCATENATE LINES OF lt_tab INTO lv_string SEPARATED BY space.
WRITE: / lv_string.