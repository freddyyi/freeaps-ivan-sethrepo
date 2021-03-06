# FreeAPS X

FreeAPS X - система искуственной поджелудочной железы для iOS на основе алгоритмов [OpenAPS Reference](https://github.com/openaps/oref0)

FreeAPS X использует оригинальные JavaScript файлы oref0 и предоставляет пользовательский интерфейс (UI) для управления и настроек системы.

## Документация

[Обзор и советы на Loop&Learn](https://www.loopandlearn.org/freeaps-x/)

[Полная документация OpenAPS](https://openaps.readthedocs.io/en/latest/)

## Требования к смартфону

- Все iPhone с поддержкой iOS 14 и выше.

## Поддерживаемые помпы

Для управления инсулиновой помпой используется модифицированная версия библиотеки [rileylink_ios](https://github.com/ps2/rileylink_ios), поддерживает тот же список помп:

- Medtronic 515 or 715 (any firmware)
- Medtronic 522 or 722 (any firmware)
- Medtronic 523 or 723 (firmware 2.4 or lower)
- Medtronic Worldwide Veo 554 or 754 (firmware 2.6A or lower)
- Medtronic Canadian/Australian Veo 554 or 754 (firmware 2.7A or lower)
- Omnipod "Eros" pods

Для управления помпой необходимо устройство [RileyLink](https://getrileylink.org), OrangeLink, Pickle, GNARL, Emalink, DiaLink или аналоги.

## Текущее состояние FreeAPS X

FreeAPS X находится в состоянии активной разработки и часто меняется.

Описание версий вы можете найти на [странице релизов](https://github.com/ivalkou/freeaps/releases).

### Стабильные версии

Стабильная версия означет, что она была протестирована долгое время и не содерждит критических багов. Мы считаем её готовой для повседневного использования.

Номера стабильных версий заканчиваются на **.0**.

Текущая стабильная версия - 0.2.0 (**НЕ работает на iOS 15! Используйте бета-версии**).

### Бета-версии

В бета-версиях впервые появляется новая функциональность. Они предназначены для тестирования и выявления проблем и багов.

**Бета-версии менее стабильны, используйте с осторожностью!**

Номера бета-версий заканчиваются на число больше **0**.

## Помощь в разработке

Пулл-реквесты принимаются в [dev ветку](https://github.com/ivalkou/freeaps/tree/dev).

Отчеты об ошибка их запросы на новую функциональность принимаются на странице [Issues](https://github.com/ivalkou/freeaps/issues).

## Реализовано

- Все базовые функции oref0
- Все базовые функции oref1 (SMB, UAM и другие)
- Autotune
- Autosens
- Использование Nightscout в качестве CGM
- Использование оффлайн локального сервера в качестве CGM (программы Spike, Diabox)
- Использование xDrip4iOS оффлан в качестве CGM через shared app gpoup
- Загрузка состояния системы в Nightscout
- Удаленный ввод углеводов и временных целей через Nightscout
- Удаленный ввод болюса и управление помпой
- Поддержка Dexcom (beta)
- Поробное описание функций внутри приложения (beta)

## Не реализовано (планируется в будущих версиях)

- Режим открытой петли
- Уведомления на смартфоне о состоянии системы и подключенных к ней устройств
- Загрузка профиля в Nightscout
- Виджет на рабочий стол
- Приложение для часов
- Плагины
- Поддержка Enlite
- Поддержка программы Здоровье

## Сообщество

- [Английская Telegram группа](https://t.me/freeapsx_eng)
- [Русская Telegram группа](https://t.me/freeapsx)
