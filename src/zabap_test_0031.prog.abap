REPORT zabap_test_0031 NO STANDARD PAGE HEADING.

DATA: gv_mtext TYPE t000-mtext.

SELECT SINGLE mtext FROM t000 INTO gv_mtext.              "#EC CI_SUBRC

WRITE gv_mtext.