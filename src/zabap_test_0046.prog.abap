REPORT zabap_test_0046 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure,
         foo TYPE i,
       END OF st_structure.

DATA: lv_i TYPE st_structure,
      lv_j TYPE st_structure.

lv_i-foo = 2.
lv_j = lv_i.
WRITE: / lv_i-foo.
WRITE: / lv_j-foo.
lv_i-foo = 3.
WRITE: / lv_i-foo.
WRITE: / lv_j-foo.