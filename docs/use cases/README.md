# Модель прецедентів

## ФУНКЦІОНАЛЬНІСТЬ
Система керування проектами сталої якості.
Основні процеси.
 ![](http://www.plantuml.com/plantuml/png/ZPFDQjj04CVl-nIBxt4JVvW4WadekOSSIY-5eiHgQkfO8Cct7kI4kXVJN8eCeHzjyWAs4jN27_Oh_FUDEgFj22CerAVTsVdzPZqxEWb2nmy7LptbN8IUholuYGrc9ZRNM2F3egATGB_o_FUkNwHyHKg7APxm6wc9yfGNJj-vtCcvfvEXkJOtI335qentT6UdHTe4AnDZRJwRBvhpCMN633NcX2LKOagdunpptOvIWy2zS09NLuxFso-VlpauVdRUVjtNTEqqJtwq5ScKQMonP9uM9iA6CXPipsNCbcKraKs8sl8ri13LZa7uMfcl2_-ToaJ8iEBgTFzR-tUUIFR9nCBNotn3-1_SLgGMm5JdcxcvuJvAZyJI-9V5lYGs351zVTNjkK7ezLqX3_-Nx0R1m0q4EofZpVAr4ngVoDpQnYNyxEHRIo_4qonxMaNxC2CFNs4fbYrjLsHQaYiJGqlnx-_awRtENji-In4PsCZ1RkH3smuIppH7UZQdNWHy6sX8GBo74X3jaL9dfyMkoHl9RTbDKKpvtSjteNxhUQ7hAvgF28_vPCSy66PaOfwH6ONcsiuyClEngl0DztZ0WwxWZjexqWIigXXLyOjMr5Rgyz2CUKN2JKNXZi094btRh-rhvVOxKlI4rlIT_m40)
 
 ## Сценарій створення плану проекту
 
**Package:** UCD_1.0

**ID:** UC_1

**Назва:** Створення проекту

**Учасники:** Менеджер, Система

**Передумови:** План проекту не створений

**Результат:** План проекту створений

**Виключні ситуації:** Відсутні

**Основний сценарій:**

![IMAGE TITLE](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/sholotyuk/pinTask/master/src/uml/UC_1.puml)
 
### Сценарій запуску проекту

**Package:** UCD_1.0

**ID:** UC_2

**Назва:** Запуск проекту

**Учасники:** Менеджер, Система

**Передумови:** Проект не ініціалізовано

**Результат:** Генерація завдань та їх збереження

**Виключні ситуації:** Відсутні

**Основний сценарій:**

![IMAGE TITLE](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/sholotyuk/pinTask/master/src/uml/UC_2.puml)

### Сценарій отримання завдання

**Package:** UCD_1.0

**ID:** UC_3

**Назва:** Отримання задачі

**Учасники:** Робітник, Система

**Передумови:** Робітник не мав задачі

**Результат:** Робітник має задачу

**Виключні ситуації:** Відсутні

**Основний сценарій:**

 ![](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/sholotyuk/pinTask/master/src/uml/UC_3.puml)
 
### Сценарій передачі результату роботи

**Package:** UCD_1.0

**ID:** UC_4

**Назва:** Передача результату роботи проекту

**Учасники:** Робітник, Система

**Передумови:** Виконана задача робітником

**Результат:** Подальша перевірка

**Виключні ситуації:** Відсутні

**Основний сценарій:**

 ![](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/sholotyuk/pinTask/master/src/uml/UC_4.puml)
 
### Сценарій виконання завдання

**Package:** UCD_1.0

**ID:** UC_5

**Назва:** Виконання задачі

**Учасники:** Тестувальник, Система

**Передумови:** Виконання задачі

**Результат:** Перевірка виконання пройдена

**Виключні ситуації:** EX_1 Обробка помилок

**Основний сценарій:**

 ![](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/sholotyuk/pinTask/master/src/uml/UC_5.puml)
 
### Сценарії обробки помилок

**Package:** UCD_1.0

**ID:** UC_6

**Назва:** Обробка помилок

**Учасники:** Тестувальник, Система

**Передумови:** Виникли помилки

**Результат:** Помилки усунено

**Виключні ситуації:** EX_2 Інший сценарій вирішення

**Основний сценарій:**

 ![](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/sholotyuk/pinTask/master/src/uml/UC_6.puml)
 
**Package:** UCD_1.0

**ID:** UC_7

**Назва:** Обробка помилок

**Учасники:** Менеджер, Система

**Передумови:** Виникли помилки

**Результат:** Помилки усунено

**Виключні ситуації:** Відсутні

**Основний сценарій:**

 ![](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/sholotyuk/pinTask/master/src/uml/UC_7.puml)

**Package:** UCD_1.0

**ID:** UC_8

**Назва:** Робота з milestone

**Учасники:** Робітник, Система

**Передумови:** Поставлене завдання

**Результат:** Завдання виконано

**Виключні ситуації:** Відсутні

**Основний сценарій:**

 ![](http://www.plantuml.com/plantuml/png/VL5DQl9G59s_LLnSW8Z3pucB-3OWDBLIVug-pXn4GzCEf4894GgrJTt0CrKCgRurdBkZtZmIQC5s47Auv-TStcrFT6UiRmTzwdhwVsTohTGKRx3OSinpd90XdoedKl-Go2Y5PPyVEQ91h-zDz6ZejKhA29dnd1U47Oo0W8e9SbX9ClATUDag6XBHpSInnn5cAlO8rdaYmW76mNiEMkUs4VLJ5Sf1vKYn-xjXBQGLsQVRtN6Y_ruN_rQtSlbxzldXV66foTb79eJv-JZokr5gtEjUQReSZRGtLbYBzAFmSroaSIYDIy9MHWSgapE-gokyu1qRRAY6PxmY934SwmZhI0JbxXWpNXH80crDYIpZ5L9gDfeDKjxmeYfj2vPBVm40)

**Package:** UCD_1.0

**ID:** UC_9

**Назва:** Робота з issues

**Учасники:** Робітник, Система

**Передумови:** Виникли проблеми

**Результат:** Проблеми усунено

**Виключні ситуації:** Відсутні

**Основний сценарій:**

 ![](http://www.plantuml.com/plantuml/png/VP51Ji9G48RtSueN3j0Gbh3XAYPM9L5hshBhGY4sBeXi22GaLYiNQ8iDJQKzmpytSWOneKbbD_tVVE-RwHjw_eNhZ-zkAS07QgIyv0ag52W3EfnH7x546Mf-v5TUc97dZMrlSCmJP2XumZCZ7pdsF1qG1OWbVFfDa0JIkq2DBoGdV9knZmWfjgXFVDYfH65Kg7ZUVd-4IYby7nWzq_x_B2kz4haONdYgZeOM-JcJigKq5SXqdyRURV_GUI1oHzStlhbo7Dzs2P7GMnsFbxeSXmBC3LA9TkQuQC7F5k4DdzXWOpfOunsX4M1l8RGGIrNgh3BRJ2kTlaDO2xX2PdhTNjUGVN_v9nrABS_y0m00)



