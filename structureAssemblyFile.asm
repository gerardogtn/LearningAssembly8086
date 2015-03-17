;;; HOW TO STRUCTURE AN ASSEMBLY FILE:

;;; ***********************************************************
;;; START WITH ORG 100H

        ORG 100H

;;; ***********************************************************
;;; OPTION A: USE ONE SEGMENT FOR DATA AND CODE

;;; Establish a .DATA part of the program where variables are
;;; defined

        .DATA
        myAge    DB 20

;;; Establish a .CODE part of the program, where you program code.
        .CODE
        mov ax, 00003H
        mov int 10H             ;Start video mode.

        mov al, myAge           ;Print my age
        mov ah, 0EH
        int 10h


;;; *********************************************************
;;; OPTION B: USE CODE SEGMENTS TO SEPARATE DATA AND CODE.

;;; USE ASSUME INSTRUCTION TO ESTABLISH SEGMENTS

        assume DS:DATASEG, CS: CODESEG

;;; DEFINE DATA SEGMENT

        DATASEG SEGMENT PARA PUBLIC 'DATA'
        
        currentDay DB 17        ;TODAY'S DAY. 
        
        DATASEG ENDS

;;; DEFINE CODE SEGMENT
        CODESEG SEGMENT PARA PUBLIC 'DATA'

        mov ax, 00003H
        int 10h

        mov al, currentDay
        mov ah, 0EH
        int 10h
        
        DATASEG ENDS
