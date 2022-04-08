PROGRAM mathtran

    i = 0
    do while (i == 0)
        WRITE (*,*) "O que deseja fazer?"
        WRITE (*,*) "0 - <Sair>"
        WRITE (*,*) "1 - Somar"
        WRITE (*,*) "2 - Subtrair"
        WRITE (*,*) "3 - Multiplicar"
        WRITE (*,*) "4 - Dividir"
        WRITE (*,*) "5 - Elevar ao Quadrado"
        WRITE (*,*) "6 - Elevar ao Cubo"
        WRITE (*,*) "7 - Raiz Quadrada"
        WRITE (*,*) "8 - Raiz Cúbica"
        WRITE (*,*) "9 - Logaritmo"
        WRITE(*,*) ""
        
        read *, resp
        
        SELECT CASE (int(resp))
            CASE (0)
                i = -1
            CASE (1)
                CALL soma()
            CASE (2)
                CALL subtrai()
            CASE (3)
                CALL multiplica()
            CASE (4)
                CALL divide()
            CASE (5)
                CALL potencia2()
            CASE (6)
                CALL potencia3()
            CASE (7)
                CALL raiz2()
            CASE (8)
                CALL raiz3()
            CASE (9)
                CALL logaritmo()
            CASE DEFAULT
                WRITE (*,*) "Selecione uma das opções indicadas"
        END SELECT
    end do
END PROGRAM Calculadora

SUBROUTINE soma()
    WRITE(*,*) ""
    WRITE(*,*) "Digite o primeiro e depois o segundo número:"
    read *, a
    WRITE (*,*) "+"
    read *, b
    WRITE(*,*) "="
    WRITE (*,*) int(a + b)
    WRITE(*,*) ""
    WRITE(*,*) ""
END SUBROUTINE soma

SUBROUTINE subtrai()
    WRITE(*,*) ""
    WRITE(*,*) "Digite o primeiro e depois o segundo número:"
    read *, a
    WRITE (*,*) "-"
    read *, b
    WRITE(*,*) "="
    WRITE (*,*) int(a - b)
    WRITE(*,*) ""
    WRITE(*,*) ""
END SUBROUTINE subtrai

SUBROUTINE multiplica()
    WRITE(*,*) ""
    WRITE(*,*) "Digite o primeiro e depois o segundo número:"
    read *, a
    WRITE (*,*) "-"
    read *, b
    WRITE(*,*) "="
    WRITE (*,*) int(a * b)
    WRITE(*,*) ""
    WRITE(*,*) ""
END SUBROUTINE multiplica

SUBROUTINE divide()
    WRITE(*,*) ""
    WRITE(*,*) "Digite o primeiro e depois o segundo número:"
    read *, a
    WRITE (*,*) "-"
    read *, b
    WRITE(*,*) "="
    WRITE (*,*) int(a / b)
    WRITE(*,*) ""
    WRITE(*,*) ""
END SUBROUTINE divide

SUBROUTINE potencia2()
    WRITE(*,*) ""
    WRITE(*,*) "Digite o número:"
    WRITE(*,*) ""
    read *, a
    WRITE(*,*) "="
    WRITE (*,*) int(a * a)
    WRITE(*,*) ""
    WRITE(*,*) ""
END SUBROUTINE potencia2

SUBROUTINE potencia3()
    WRITE(*,*) ""
    WRITE(*,*) "Digite o número:"
    WRITE(*,*) ""
    read *, a
    WRITE(*,*) "="
    WRITE (*,*) int(a * a * a)
    WRITE(*,*) ""
    WRITE(*,*) ""
END SUBROUTINE potencia3

SUBROUTINE raiz2()
    WRITE(*,*) ""
    WRITE(*,*) "Digite o número:"
    WRITE(*,*) ""
    read *, a
    WRITE(*,*) "="
    WRITE (*,*) sqrt(a)
    WRITE(*,*) ""
    WRITE(*,*) ""
END SUBROUTINE raiz2

SUBROUTINE raiz3()
    WRITE(*,*) ""
    WRITE(*,*) "Digite o número:"
    WRITE(*,*) ""
    read *, a
    WRITE(*,*) "="
    c = a**0.333333333333333333
    WRITE (*,*) c
    WRITE(*,*) ""
    WRITE(*,*) ""
END SUBROUTINE raiz3

SUBROUTINE logaritmo()
    WRITE(*,*) ""
    WRITE(*,*) "Digite o número:"
    WRITE(*,*) ""
    read *, a
    WRITE(*,*) "="
    WRITE (*,*) log10(a)
    WRITE(*,*) ""
    WRITE(*,*) ""
END SUBROUTINE logaritmo
