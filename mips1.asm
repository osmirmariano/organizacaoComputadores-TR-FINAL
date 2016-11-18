.section .data

programtitle:       .asciz      "\n Gabriels Library\n\n" # 

asktitle:   .asciz  "\nWrite the title of the book"
askcategory:    .asciz  "\nWrite the category of the book"
askcharacter:   .asciz  "\nWrite the main character"
askyear:    .asciz  "\nWrite the year it was published"
askcopies:  .asciz  "\nWrite the number of copies the library has"

mostratitulo:   .asciz  "\nTitle: %s" # show the title
mostracategoria: .asciz "\nCategory %s" # show category
mostraator: .asciz  "\nCharacter %s" # show character
mostraano:  .asciz  "\nYear %d" #show year
mostracopias:   .asciz  "\nNum of copies: %d" #show number of copies

formstr:    .asciz  "%s"
formint:    .asciz  "%d"
formch: .asciz  "%c"
enter:  .asciz  "\n"

NULL:   .int 0

ttitulo:    .space 44
tano:   .space 4
tcopias: .space 4
tcategoria: .space 24
tator:  .space 44

prox:   .int NULL
naloc:  .int 124

le_dados:
    pushl   %edi

    pushl   $asktitle
    call    printf
    addl    $4, %edi
    call    gets

    popl    %edi
    addl    $44, %edi
    pushl   %edi

    pushl   $askyear
    call    printf
    addl    $4, %esp
    pushl   $formint
    call    scanf
    addl    $4, %esp

    popl    %edi
    addl    $4, %edi
    pushl   %edi

    pushl   formch
    call    scanf
    addl    $4, %esp

    pushl   $askcopies
    call    printf
    addl    $4, %esp
    pushl   $formint
    call    scanf
    addl    $4, %esp

    popl    %edi
    addl    $4, %edi
    pushl   %edi

    pushl   $formch
    call    scanf
    addl    $4, %esp

    pushl   $askcategory
    call    printf
    addl    $4, %esp

    call    gets

    popl    %edi
    addl    $24, %edi
    pushl   %edi

    pushl   $askcharacter
    call    printf
    addl    $4, %esp
    call    gets
    popl    %edi
    addl    $44, %edi
    movl    $NULL, (%edi)

    subl    $124, %edi

    RET