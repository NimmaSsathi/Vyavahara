// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// App language (FR-AU-01). Starts from the device language when supported,
/// otherwise English. Persistence arrives in M2.

@ProviderFor(LocaleController)
final localeControllerProvider = LocaleControllerProvider._();

/// App language (FR-AU-01). Starts from the device language when supported,
/// otherwise English. Persistence arrives in M2.
final class LocaleControllerProvider
    extends $NotifierProvider<LocaleController, Locale> {
  /// App language (FR-AU-01). Starts from the device language when supported,
  /// otherwise English. Persistence arrives in M2.
  LocaleControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localeControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localeControllerHash();

  @$internal
  @override
  LocaleController create() => LocaleController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Locale value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Locale>(value),
    );
  }
}

String _$localeControllerHash() => r'b5ceda157f25cd39a5e46f1c64a0f47b53b84073';

/// App language (FR-AU-01). Starts from the device language when supported,
/// otherwise English. Persistence arrives in M2.

abstract class _$LocaleController extends $Notifier<Locale> {
  Locale build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<Locale, Locale>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Locale, Locale>,
              Locale,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
