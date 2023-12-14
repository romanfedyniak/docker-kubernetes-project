# Поки

Цикл `поки` використовується для повторення блоку коду доти, поки умова циклу виконується.

## Синтаксис

Цикл поки записується за допомогою ключового слова `поки`:

``` linenums="0"
поки <умова>
    [код]
кінець
```

## Приклад

Код, який виводить "Привіт, Світ!" три рази

``` periwinkle linenums="0" title="цикл.бр"
і = 0
поки і менше 3
    друкр("Привіт, Світ!")
    і += 1
кінець
```

Вивід:

``` console linenums="0"
$ барвінок цикл.бр
 Привіт, Світ!
 Привіт, Світ!
 Привіт, Світ!
```

## Ключове слово пропустити

За допомогою ключового слова `пропустити` можна перейти до нової ітерації, пропустивши виконання подальших інструкцій у поточній ітерації

``` periwinkle linenums="0" title="пропустити.бр"
і = 0
поки і менше 5
    і += 1
    якщо і == 3 // Пропуск друкування трійки
        пропустити
    кінець
    друкр(і)
кінець
```

Вивід:

``` console linenums="0"
$ барвінок пропустити.бр
 1
 2
 4
 5
```

## Ключове слово завершити

За допомогою ключового слова `завершити` можна завершити виконання поточного циклу

``` periwinkle linenums="0" title="завершити.бр"
і = 0
поки і менше 5
    і += 1
    якщо і == 3 // Якщо число дорівнює 3, то цикл завершиться
        завершити
    кінець
    друкр(і)
кінець
```

Вивід:

``` console linenums="0"
$ барвінок завершити.бр
 1
 2
```