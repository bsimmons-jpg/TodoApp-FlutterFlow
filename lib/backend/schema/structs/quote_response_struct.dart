// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QuoteResponseStruct extends FFFirebaseStruct {
  QuoteResponseStruct({
    String? quote,
    String? author,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quote = quote,
        _author = author,
        super(firestoreUtilData);

  // "Quote" field.
  String? _quote;
  String get quote => _quote ?? '';
  set quote(String? val) => _quote = val;

  bool hasQuote() => _quote != null;

  // "Author" field.
  String? _author;
  String get author => _author ?? '';
  set author(String? val) => _author = val;

  bool hasAuthor() => _author != null;

  static QuoteResponseStruct fromMap(Map<String, dynamic> data) =>
      QuoteResponseStruct(
        quote: data['Quote'] as String?,
        author: data['Author'] as String?,
      );

  static QuoteResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? QuoteResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Quote': _quote,
        'Author': _author,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Quote': serializeParam(
          _quote,
          ParamType.String,
        ),
        'Author': serializeParam(
          _author,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuoteResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuoteResponseStruct(
        quote: deserializeParam(
          data['Quote'],
          ParamType.String,
          false,
        ),
        author: deserializeParam(
          data['Author'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuoteResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuoteResponseStruct &&
        quote == other.quote &&
        author == other.author;
  }

  @override
  int get hashCode => const ListEquality().hash([quote, author]);
}

QuoteResponseStruct createQuoteResponseStruct({
  String? quote,
  String? author,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuoteResponseStruct(
      quote: quote,
      author: author,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuoteResponseStruct? updateQuoteResponseStruct(
  QuoteResponseStruct? quoteResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    quoteResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuoteResponseStructData(
  Map<String, dynamic> firestoreData,
  QuoteResponseStruct? quoteResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (quoteResponse == null) {
    return;
  }
  if (quoteResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && quoteResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final quoteResponseData =
      getQuoteResponseFirestoreData(quoteResponse, forFieldValue);
  final nestedData =
      quoteResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = quoteResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuoteResponseFirestoreData(
  QuoteResponseStruct? quoteResponse, [
  bool forFieldValue = false,
]) {
  if (quoteResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(quoteResponse.toMap());

  // Add any Firestore field values
  quoteResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuoteResponseListFirestoreData(
  List<QuoteResponseStruct>? quoteResponses,
) =>
    quoteResponses
        ?.map((e) => getQuoteResponseFirestoreData(e, true))
        .toList() ??
    [];
