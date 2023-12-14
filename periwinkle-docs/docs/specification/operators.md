# Оператори

Оператори в Барвінку - це символи або команди, які використовуються для виконання різних операцій з об'єктами.

## Оператори "на місці"

Оператори "на місці" - це синтаксичний цукор, для спрощення написання виразів.

``` periwinkle linenums="0"
а = а + 1
а += 1    // Вираз вище, але з використанням оператора "на місці"
```

## Таблиця операторів

<!-- | Пріоритет | Назва                | Вигляд в коді | Оператор на місці |
| --------- | -------------------- | ------------- | ----------------- |
|1          | Унарний -            | `-а`          |                   |
|           | Унарний +            | `+а`          |                   |
|2          | Множення             | `а * б`       | `а *= б`          |
|           | Ділення              | `а / б`       | `а /= б`          |
|           | Остача від ділення   | `а % б`       | `а %= б`          |
|           | Цілочисельне ділення | `а \ б`       | `а \= б`          |
|3          | Додавання            | `а + б`       | `а += б`          |
|           | Віднімання           | `а - б`       | `а -= б`          |
|4          | Менше                | `а менше б`   |                   |
|           | є                    | `а є б`       |                   |
|           | Менше дорівнює       | `а менше= б`  |                   |
|           | Більше               | `а більше б`  |                   |
|           | Більше дорівнює      | `а більше= б` |                   |
|           | Рівно                | `а == б`      |                   |
|           | Нерівно              | `а != б`      |                   |
|5          | Заперечення          | `не а`        |                   |
|6          | Та                   | `а та б`      |                   |
|7          | Або                  | `а або б`     |                   | -->


<table>
<thead>
<tr>
<th>Пріоритет</th>
<th>Назва</th>
<th>Вигляд в коді</th>
<th>Оператор на місці</th>
</tr>
</thead>
<tbody>
<tr>
<td rowspan="2" style="border-right: 1px solid var(--md-typeset-table-color)">1</td>
<td>Унарний -</td>
<td><code>-а</code></td>
<td></td>
</tr>
<tr>
<td>Унарний +</td>
<td><code>+а</code></td>
<td></td>
</tr>
<tr>
<td rowspan="4" style="border-right: 1px solid var(--md-typeset-table-color)">2</td>
<td>Множення</td>
<td><code>а * б</code></td>
<td><code>а *= б</code></td>
</tr>
<tr>
<td>Ділення</td>
<td><code>а / б</code></td>
<td><code>а /= б</code></td>
</tr>
<tr>
<td>Остача від ділення</td>
<td><code>а % б</code></td>
<td><code>а %= б</code></td>
</tr>
<tr>
<td>Цілочисельне ділення</td>
<td><code>а \ б</code></td>
<td><code>а \= б</code></td>
</tr>
<tr>
<td rowspan="2" style="border-right: 1px solid var(--md-typeset-table-color)">3</td>
<td>Додавання</td>
<td><code>а + б</code></td>
<td><code>а += б</code></td>
</tr>
<tr>
<td>Віднімання</td>
<td><code>а - б</code></td>
<td><code>а -= б</code></td>
</tr>
<tr>
<td rowspan="7" style="border-right: 1px solid var(--md-typeset-table-color)">4</td>
<td>є</td>
<td><code>а є б</code></td>
<td></td>
</tr>
<td>Менше</td>
<td><code>а менше б</code></td>
<td></td>
</tr>
<tr>
<td>Менше дорівнює</td>
<td><code>а менше= б</code></td>
<td></td>
</tr>
<tr>
<td>Більше</td>
<td><code>а більше б</code></td>
<td></td>
</tr>
<tr>
<td>Більше дорівнює</td>
<td><code>а більше= б</code></td>
<td></td>
</tr>
<tr>
<td>Рівно</td>
<td><code>а == б</code></td>
<td></td>
</tr>
<tr>
<td>Нерівно</td>
<td><code>а != б</code></td>
<td></td>
</tr>
<tr>
<td style="border-right: 1px solid var(--md-typeset-table-color)">5</td>
<td>Заперечення</td>
<td><code>не а</code></td>
<td></td>
</tr>
<tr>
<td style="border-right: 1px solid var(--md-typeset-table-color)">6</td>
<td>Та</td>
<td><code>а та б</code></td>
<td></td>
</tr>
<tr>
<td style="border-right: 1px solid var(--md-typeset-table-color)">7</td>
<td>Або</td>
<td><code>а або б</code></td>
<td></td>
</tr>
</tbody>
</table>


## Оператор "є"

Оператор `#!periwinkle є` використовується для перевірки ідентичності об'єктів, а не їх значення.

``` periwinkle linenums="0" title="1 випадок"
а = Список(1, 2, 3)
б = а
друкр(а є б) // істина
```

``` periwinkle linenums="0" title="2 випадок"
а = Список(1, 2, 3)
б = Список(1, 2, 3)
друкр(а є б) // хиба
```

В першому прикладі, змінній `б` було присвоєно значення `а`, що означає, що обидві змінні посилаються на один і той же об'єкт, тому оператор `#!periwinkle є` повернув істину.

У другому прикладі, змінній `а` та `б` було присвоєно різні значення, тому оператор `#!periwinkle є` повернув хибу, оскільки ці змінні посилаються на різні об'єкти.
