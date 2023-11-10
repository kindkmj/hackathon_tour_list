// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:implementation_imports, file_names, unnecessary_new
// ignore_for_file:unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file:argument_type_not_assignable, invalid_assignment
// ignore_for_file:prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file:comment_references

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_en.dart' as messages_en;
import 'messages_ko.dart' as messages_ko;

typedef Future<dynamic> LibraryLoader();

Map<String, LibraryLoader> _deferredLibraries = <String, LibraryLoader>{
  'messages': () => Future<dynamic>.value(),
  'ko': () => Future<dynamic>.value(),
  'en': () => Future<dynamic>.value(),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    // case 'messages':
    // return messages_messages.messages;
    case 'ko':
      return messages_ko.messages;

    case 'en':
      return messages_en.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  final String? availableLocale = Intl.verifiedLocale(
      localeName, (String locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return Future<bool>.value(false);
  }
  final LibraryLoader? lib = _deferredLibraries[availableLocale];
  await (lib == null ? Future<bool>.value(false) : lib());
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return Future<bool>.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    print(" (11) ]-----] error [-----[ : $e");
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  final String? actualLocale =
      Intl.verifiedLocale(locale, _messagesExistFor, onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
