REPORT zabap_test_0013 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_node,
         chmod TYPE string,
         name  TYPE string,
       END OF st_node.

DATA: gs_type TYPE st_node.

gs_type-chmod = 'foobar' ##NO_TEXT.

WRITE gs_type-chmod.
