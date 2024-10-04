# Практическая работа №5 по Программированию корпоративных систем

## Мрясова Анастасия Александровна ЭФБО-01-22

Эта практическая работа является продолжением предыдущей, с некоторым дополнением - необходимо было создать страницы Избранное и Профиль.

Для создания дизайна приложения был использован инструмент Figma. Прототип:

![image](https://github.com/user-attachments/assets/0bcc0110-35ef-4e63-bd79-3419e03fe3b0)

Использование картинок осуществлено с помощью указания URL до них, в верстке - Image.network. 
Использование шрифта от Google Fonts осуществлено с помощью подключения библиотеки google_fonts.
В сравнении с предыдущей работой были внесены изменения в модель данных Drink - появилось поле isFavorite, которое сообщает, является ли напиток избранным. Помимо того, вместо использования глобальной переменной drinks из файла data.dart, страницы используют передаваемый им массив drinks. Все изменения, связанные с этим массивом, происходят в виджете HomePage, там же и читается этот массив из файла data.dart. Это обеспечивает масштабируемость проекта и единство данных

Помимо того, внизу страницы появилось меню Навигации

### Результат.

При запуске приложения пользователь попадает на страницу с напитками

![image](https://github.com/user-attachments/assets/28ab5a80-70d8-42fa-8594-e73df299108c)

Нажав на сердечко, напиток можно убрать из избранных или наоброт добавить их. На странице "Избранное" отображаются только те напитки, у которых isFavorite = true. Также предусмотрено, что при просмотре информации о напитке из страницу "Избранное", напиток нельзя удалить. Это действие доступно только при переходе в карточку напитка со страницы всех напитков. Также со страницы "Избранное" нельзя перейти в форму добавления новго напитка.

![image](https://github.com/user-attachments/assets/f8cf3985-9327-4735-89bc-b29f241ba131)
![image](https://github.com/user-attachments/assets/8c70f799-e99d-4806-8943-91e86b8c40cb)

Профиль пользователя:

![image](https://github.com/user-attachments/assets/94636f5c-09eb-4c0e-98f0-38f16e474854)






