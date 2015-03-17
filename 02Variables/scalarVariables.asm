
;;; INTRO TO SCALAR VARIABLES IN ASSEMBLY 8086

        ORG 100H                ; START .COM FILE. 
        
;;; THERE ARE THREE TYPES OF BASIC SCALAR VARIABLES IN ASSSEMBLY 8086:
;;; A) BYTE VARIABLES
;;; B) WORD VARIABLES
;;; C) FLOATING POINT VARIABLES

.DATA
;;; ******************************************************************
;;; A) BYTE VARIABLES 
        
;;; A BYTE ALLOWS TO HOLD UP TO 255 VALUES OF INFO.
;;; SOME OF THE APPLICATIONS OF SCALAR BYTES ARE:
;;;     1) SMALL INTEGERS [0, 255]
;;;     2) SMALL SIGNED INTEGERS [-128, 127]
;;;     3) BOOLEAN VARIABLES
;;;     4) ENUMERATIONS.

;;; THERE ARE THREE DIFFERENT TYPES OF DECLARATIONS:
;;;     I)   #variableName db   VALUE
;;;     II)  #variableName byte VALUE
;;;     III) #variableName sb   VALUE 

;;; IN ANY ONE OF THE 3 DECLARATIONS, YOU CAN LEFT THE VARIABLE
;;; UNINITIALIZED BY USING A QUESTION MARK (?) ON THE VALUE FIELD

;;; I) AND II) ARE EQUIVALENT FORMS OF DECLARING VARIABLES.
        
        myAge    DB   20        ; MY AGE IN YEARS
        myWeight BYTE 60        ; MY WEIGHT IN KG.

;;; III) USED TO DECLARE SIGNED VARIABLES.

        accountBalance SB -8    ; MY BANK ACCOUNT BALANCE. 


        
;;; ******************************************************************
;;; B) WORD VARIABLES

;;; WORD VARIABLES CONSIST OF TWO BYTES OF INFORMATION.

;;; ONCE AGAIN, THERE ARE THREE DECLARATION TYPES:
;;;     I)   #variableName dw    VALUE [0, 65535]
;;;     II)  #variableName dword VALUE 
;;;     III) #variableName sword VALUE [-32768, 32767]

;;; I) and II) ARE ALSO EQUIVALENT FORMS.
        yearBorn    dw    1994  ; The year I was born. 
        currentYear dword 2015  ; Current year.

;;; III) Allows the declaration of signed words.
        yearPlatoWasBorn sword -427 ; The year Plato was born.

  

;;; ******************************************************************
;;; C) FLOATING POINT VARIABLES 

;;; THERE ARE THREE TYPES OF FLOATING POINT VARIABLES, EACH WITH
;;; DIFFERENT MEMORY WIDTHS:
;;;     I)   #variableName REAL4  VALUE [4  bytes]
;;;     II)  #variableName REAL8  VALUE [8  bytes]
;;;     III) #variableName REAL10 VALUE [10 bytes]


;;;     I)   #variableName REAL4  VALUE [4  bytes]
        phWater REAL4 7.0       ;PH OF WATER

        
;;;     II)  #variableName REAL8  VALUE [8  bytes]
        PI REAL8 3.141592653    ;VALUE OF PI TO 10 SIG FIGS. 
        
;;;     III) #variableName REAL10 VALUE [10 bytes]
        SQRT2 REAL10 1.4142     ;VALUE OF SQRT(2) TO 5 SIG FIGS. 
