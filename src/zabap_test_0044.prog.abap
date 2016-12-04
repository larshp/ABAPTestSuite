REPORT zabap_test_0044 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF st_structure,
         foo TYPE i,
         bar TYPE i,
       END OF st_structure.

DATA: ls_structure TYPE st_structure.


IF ls_structure IS INITIAL.
  WRITE: / 'initial'.
ENDIF.

ls_structure-foo = 7.
ls_structure-bar = 8.

IF ls_structure = ls_structure.
  WRITE: / 'yes'.
ELSE.
  WRITE: / 'no'.
ENDIF.

IF ls_structure IS INITIAL.
  WRITE: / 'no'.
ENDIF.

CLEAR ls_structure.

IF ls_structure IS INITIAL.
  WRITE: / 'initial'.
ENDIF.