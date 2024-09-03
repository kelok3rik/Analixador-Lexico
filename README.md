# Analizador Léxico con FLEX

Este proyecto implementa un **analizador léxico** utilizando la herramienta **FLEX** (Fast Lexical Analyzer Generator). El analizador léxico está diseñado para reconocer una serie de reglas de un lenguaje simple, que incluye palabras reservadas, identificadores, números enteros, operadores, paréntesis, llaves y otros caracteres específicos.

## Requisitos

- **FLEX**: Se requiere FLEX para generar el analizador léxico.
- **GCC**: Compilador GCC para compilar el código C generado por FLEX.

## Descripción del Lenguaje Reconocido

El lenguaje reconocido por este analizador léxico sigue las siguientes reglas básicas:

    1. **Palabras Reservadas**: Se reconocen las palabras reservadas `if` y `else`.
    2. **Identificadores**: Se reconocen secuencias de letras (a-z, A-Z) como identificadores.
    3. **Números Enteros**: Se reconocen secuencias de dígitos (0-9) como números enteros.
    4. **Operadores de Comparación y Asignación**: Se reconocen los operadores `==` (igualdad) y `=` (asignación).
    5. **Paréntesis y Llaves**: Se reconocen los símbolos `(`, `)`, `{`, y `}`.
    6. **Punto y Coma**: Se reconoce el símbolo `;`.
    7. **Operadores Aritméticos**: Se reconocen los operadores `+`, `-`, `*`, y `/`.
    8. **Espacios en Blanco**: Se ignoran los espacios en blanco, tabulaciones y saltos de línea.

## Instrucciones de Uso

### 1. Crear el Analizador Léxico

Para crear el analizador léxico, sigue los siguientes pasos:

    1. Escribe el archivo de entrada de FLEX (`ejemplo1.l`) con las definiciones del analizador léxico.

    2. Genera el código C del analizador léxico ejecutando:
  
        flex ejemplo1.l

    3. Compila el código C generado por FLEX utilizando GCC:

        gcc lex.yy.c -lfl -o analizador

### 2. Ejecutar el Analizador Léxico

Una vez compilado, puedes ejecutar el analizador léxico desde la consola o abriendo el ejecutable generado:

    ./analizador

### 3. Pruebas del Analizador Léxico

A continuación, se detallan algunas pruebas que puedes realizar para comprobar el funcionamiento del analizador léxico:

* Prueba 1: Expresión matemática con operadores y paréntesis.

        Entrada: result = (a + b) * (c - d);

* Prueba 2: Expresión condicional con operadores de comparación.

        Entrada: if(3-5==10)

Estas pruebas deben ser ejecutadas ingresando las expresiones en el analizador léxico para verificar que reconoce correctamente los diferentes tokens.

#### Ejecución del Analizador Léxico
Para ejecutar el analizador léxico, sigue estos pasos:

* Compila el archivo FLEX:

        flex ejemplo1.l

* Compila el código C generado:

        gcc lex.yy.c -lfl -o analizador

* Ejecuta el analizador léxico:


        ./analizador

### Contribución

Si deseas contribuir a este proyecto, puedes realizar un fork del repositorio, realizar cambios y enviar un pull request con tus mejoras.

