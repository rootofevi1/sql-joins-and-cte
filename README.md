# SQL: сложные соединения и CTE

PostgreSQL portfolio: LEFT/FULL/SELF JOIN, WITH, generate_series, COALESCE, INTERSECT.

[![PostgreSQL checks](https://github.com/rootofevi1/sql-joins-and-cte/actions/workflows/sql.yml/badge.svg)](https://github.com/rootofevi1/sql-joins-and-cte/actions/workflows/sql.yml)

Учебный проект: **11 SQL-файлов** на предметной области заказов и посещений пиццерий. Часть серии из девяти проектов [SQL-портфолио](https://github.com/rootofevi1#sql-и-postgresql).

## Что реализовано

- Заведения без посещений и пропущенные календарные даты
- FULL JOIN с явной обработкой отсутствующих значений
- CTE для разделения этапов выборки
- Соединение клиентов, заказов, меню и заведений
- Пересечение предпочтений клиентов
- SELF JOIN для пар клиентов с общим городом

## Связь с QA

Поиск пробелов в данных, проверка ссылочных связей и диагностика неполных результатов JOIN.

## Стек и устройство

PostgreSQL 17 · SQL · Docker · Python 3.10+ для проверки · GitHub Actions.

- `src/` — SQL-решения, имена файлов сохранены для навигации.
- [demo/schema.sql](demo/schema.sql) и [demo/seed.sql](demo/seed.sql) — отдельная демонстрационная БД и новые синтетические данные.
- [docs/DATABASE.md](docs/DATABASE.md) — описание таблиц, ER-диаграмма и ограничения набора.
- [scripts/check.py](scripts/check.py) — запуск в изолированном временном PostgreSQL.
- [tests/assertions.sql](tests/assertions.sql) — дополнительные проверки состояния демобазы.

## Быстрый запуск

Нужны Python 3.10+ и запущенный Docker с Linux-контейнерами. Первый запуск скачивает образ `postgres:17`.

```bash
git clone https://github.com/rootofevi1/sql-joins-and-cte.git
cd sql-joins-and-cte
python3 scripts/check.py
```

В Windows PowerShell используйте `python scripts/check.py` или `py -3 scripts/check.py`.
Дополнительные Python-пакеты не требуются. Контейнер работает без сети и открытых портов,
случайный пароль передаётся только через окружение процесса. Скрипт выполняет SQL с остановкой
при ошибке и удаляет контейнер в конце. Существующие БД пользователя не затрагиваются.

Для ручного изучения создайте **новую пустую БД** на своём PostgreSQL, загрузите `demo/schema.sql`,
затем `demo/seed.sql` и выполняйте `src/*.sql` (включая вложенные папки) в порядке имён файлов.
Для каждого проекта нужна своя БД; DDL/DML не предназначены для повторного запуска поверх прежнего состояния.

## Навигация по решениям

| SQL-файл |
|---|
| [day02_ex00](src/ex00/day02_ex00.sql) |
| [day02_ex01](src/ex01/day02_ex01.sql) |
| [day02_ex02](src/ex02/day02_ex02.sql) |
| [day02_ex03](src/ex03/day02_ex03.sql) |
| [day02_ex04](src/ex04/day02_ex04.sql) |
| [day02_ex05](src/ex05/day02_ex05.sql) |
| [day02_ex06](src/ex06/day02_ex06.sql) |
| [day02_ex07](src/ex07/day02_ex07.sql) |
| [day02_ex08](src/ex08/day02_ex08.sql) |
| [day02_ex09](src/ex09/day02_ex09.sql) |
| [day02_ex10](src/ex10/day02_ex10.sql) |

## Проверки и ограничения

GitHub Actions выполняет все 11 SQL-файлов на собственной демобазе PostgreSQL 17
и дополнительные проверки состояния/ограничений. Статус последнего запуска виден в badge выше.

Некоторые JOIN могут возвращать несколько строк на клиента или заведение — это отражает количество совпадений. DISTINCT применяется только там, где он есть в решении.

## Происхождение

Основа — мои учебные SQL-решения. Для публичного портфолио отдельно подготовлены описание,
демосхема, синтетический набор, проверки и CI. Пароли, токены, дампы реальных БД
и локальные настройки подключения не требуются.

Александр · Junior QA/AQA Engineer · [Email](mailto:a@samoylov-qa.ru) · [Telegram](https://t.me/samoylov_av)
