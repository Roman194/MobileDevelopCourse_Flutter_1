import 'package:flutter_application_1/viewmodels/models/SubscribeCard.dart';
import 'package:flutter_application_1/viewmodels/models/SubsectionModel.dart';

List<SubscribeCard> subscribeCardData = [
  SubscribeCard('lib/assets/sberPrimeIcon.png', 'СберПрайм', 'Платёж 9 июля',
      '199 ₽ в месяц'),
  SubscribeCard('lib/assets/percentIcon.png', 'Переводы',
      'Автопродление 21 авг.', '199 ₽ в месяц')
];

List<SubsectionModel> subsectionData = [
  SubsectionModel('У вас подключено',
      'Подписки, автоплатежи и сервисы, на которые вы подписались'),
  SubsectionModel('Тарифы и лимиты', 'Для операций в Сбербанк Онлайн')
];
