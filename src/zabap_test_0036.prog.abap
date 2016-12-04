REPORT zabap_test_0036 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_node,
         chmod TYPE string,
         name  TYPE string,
       END OF st_node.

DATA: gs_type1 TYPE st_node,
      gs_type2 TYPE st_node.

gs_type1-chmod = 'foobar1' ##NO_TEXT.
gs_type2-chmod = 'foobar2' ##NO_TEXT.

WRITE gs_type1-chmod.
WRITE gs_type2-chmod.