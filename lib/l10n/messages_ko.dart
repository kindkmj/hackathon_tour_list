// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final MessageLookup messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

// 전화번호 영어랑 일본어로 번역해줘 그리고 이걸 함수로 부른다고 생각하면 어떤 이름이 좋을까? 그것도 알려줘

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  final Map<String, Function> messages =
      _notInlinedMessages(_notInlinedMessages);

  static Map<String, Function> _notInlinedMessages(dynamic value) =>
      <String, Function>{
        'googleStart': MessageLookupByLibrary.simpleMessage('구글로 시작하기'),
        'yourTrip': MessageLookupByLibrary.simpleMessage('당신의 여행'),
        'createKClass': MessageLookupByLibrary.simpleMessage('KClass 만들기'),
        'joinKClass': MessageLookupByLibrary.simpleMessage('KClass 참여하기'),
        'title': MessageLookupByLibrary.simpleMessage('제목'),
        'thema': MessageLookupByLibrary.simpleMessage('테마'),
        'region': MessageLookupByLibrary.simpleMessage('지역'),
        'transportation': MessageLookupByLibrary.simpleMessage('이동 수단'),
        'date': MessageLookupByLibrary.simpleMessage('날짜'),
        'price': MessageLookupByLibrary.simpleMessage('가격'),
        'people': MessageLookupByLibrary.simpleMessage('인원'),
        'description': MessageLookupByLibrary.simpleMessage('설명'),
        'tags': MessageLookupByLibrary.simpleMessage('태그'),
        'register': MessageLookupByLibrary.simpleMessage('등록'),
        'selectThema': MessageLookupByLibrary.simpleMessage('테마 선택'),
        'selectRegion': MessageLookupByLibrary.simpleMessage('지역 선택'),
        'pleaseChooseSomething': MessageLookupByLibrary.simpleMessage('선택해주세요'),
        'bus': MessageLookupByLibrary.simpleMessage('버스'),
        'taxi': MessageLookupByLibrary.simpleMessage('택시'),
        'rentalCar': MessageLookupByLibrary.simpleMessage('렌트카'),
      };
}
