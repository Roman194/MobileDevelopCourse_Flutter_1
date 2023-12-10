import 'package:flutter_application_1/viewmodels/models/SubscribeCard.dart';
import 'package:flutter_application_1/viewmodels/models/SubsectionModel.dart';
import 'package:flutter_application_1/viewmodels/models/interestCard.dart';
import 'package:flutter_application_1/viewmodels/models/ratesCard.dart';

List<SubscribeCard> subscribeCardData = [
  SubscribeCard('lib/assets/sberPrimeIcon.png', 'СберПрайм', 'Платёж 9 июля',
      '199 ₽ в месяц'),
  SubscribeCard('lib/assets/percentIcon.png', 'Переводы',
      'Автопродление 21 авг.', '199 ₽ в месяц')
];

List<SubsectionModel> subsectionData = [
  SubsectionModel('У вас подключено',
      'Подписки, автоплатежи и сервисы, на которые вы подписались'),
  SubsectionModel('Тарифы и лимиты', 'Для операций в Сбербанк Онлайн'),
  SubsectionModel('Интересы',
      'Мы подбираем истории и предложения по темам, которые вам нравятся')
];

List<RatesCard> ratesData = [
  RatesCard('lib/assets/ratesIcon.png', 'Изменить суточный лимит',
      'Ha платежи и переводы'),
  RatesCard('lib/assets/commissionIcon.png', 'Переводы без комиссии',
      'Показать остаток в этом месяце'),
  RatesCard('lib/assets/limitIcon.png', 'Информация o тарифах и лимитах', '')
];

List<InterestCard> interestData = [
  InterestCard('Еда'),
  InterestCard('Саморазвитие'),
  InterestCard('Технологии'),
  InterestCard('Дом'),
  InterestCard('Досуг'),
  InterestCard('Забота o ce6e'),
  InterestCard('Наука')
];

const String userName = 'Екатерина';
