// Mocks generated by Mockito 5.0.16 from annotations
// in technical_template/test/home/repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:technical_template/app/models/collection.dart' as _i4;
import 'package:technical_template/app/services/rest_client.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [RestClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockRestClient extends _i1.Mock implements _i2.RestClient {
  MockRestClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Collection>> getCollections() => (super.noSuchMethod(
          Invocation.method(#getCollections, []),
          returnValue: Future<List<_i4.Collection>>.value(<_i4.Collection>[]))
      as _i3.Future<List<_i4.Collection>>);
  @override
  String toString() => super.toString();
}
