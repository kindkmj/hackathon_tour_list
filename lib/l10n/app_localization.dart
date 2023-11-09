import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tour_list/l10n/messages_all.dart';

class AppLocalization {
  AppLocalization(this.locale);

  final Locale locale;

  static Future<AppLocalization> load(Locale locale) async {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return AppLocalization(locale);
    });
  }

  static String? getLocale() {
    return Intl.defaultLocale;
  }

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization)!;
  }

  String get serviceDescription {
    return Intl.message(
      '',
      name: 'serviceDescription',
    );
  }

  String get noSearchImages {
    return Intl.message(
      '',
      name: 'noSearchImages',
    );
  }

  String get noBookmarkedImages {
    return Intl.message(
      '',
      name: 'noBookmarkedImages',
    );
  }

  String get gallery {
    return Intl.message('gallery', name: 'gallery', desc: '갤러리');
  }

  String get aiEditor {
    return Intl.message(
      '',
      name: 'aiEditor',
    );
  }

  String get generate {
    return Intl.message(
      '',
      name: 'generate',
    );
  }

  String get userSetting {
    return Intl.message(
      '',
      name: 'userSetting',
    );
  }

  String get askGPT {
    return Intl.message(
      '',
      name: 'askGPT',
    );
  }

  String get hasImageBeenCreated {
    return Intl.message(
      '',
      name: 'hasImageBeenCreated',
    );
  }

  String get showCompanyname {
    return Intl.message(
      '',
      name: 'showCompanyname',
    );
  }

  String get showCorporateName {
    return Intl.message(
      '',
      name: 'showCorporateName',
    );
  }

  String get address {
    return Intl.message(
      '',
      name: 'address',
    );
  }

  String get showAddress {
    return Intl.message(
      '',
      name: 'showAddress',
    );
  }

  String get email {
    return Intl.message(
      '',
      name: 'email',
    );
  }

  String get phoneNumber {
    return Intl.message(
      '',
      name: 'phoneNumber',
    );
  }

  String get showBusinessRegNumber {
    return Intl.message(
      '',
      name: 'showBusinessRegNumber',
    );
  }

  String get showCommerceRegNumber {
    return Intl.message(
      '',
      name: 'showCommerceRegNumber',
    );
  }

  String get showCEO {
    return Intl.message(
      '',
      name: 'showCEO',
    );
  }

  String get showCEOName {
    return Intl.message(
      '',
      name: 'showCEOName',
    );
  }

  String get showCISOName {
    return Intl.message(
      '',
      name: 'showCISOName',
    );
  }

  String get showPersonalInfoManager {
    return Intl.message(
      '',
      name: 'showPersonalInfoManager',
    );
  }

  String get login {
    return Intl.message(
      '',
      name: 'login',
    );
  }

  String get startForFree {
    return Intl.message(
      '',
      name: 'startForFree',
    );
  }

  String get showImagesFromOtherUsers {
    return Intl.message(
      '',
      name: 'showImagesFromOtherUsers',
    );
  }

  String get sortByGenerated {
    return Intl.message(
      '',
      name: 'sortByGenerated',
    );
  }

  String get sortBySeen {
    return Intl.message(
      '',
      name: 'sortBySeen',
    );
  }

  String get whichImageGenerate {
    return Intl.message(
      '',
      name: 'whichImageGenerate',
    );
  }

  String get selectStyle {
    return Intl.message(
      '',
      name: 'selectStyle',
    );
  }

  String get profile {
    return Intl.message(
      '',
      name: 'profile',
    );
  }

  String get profileUpdate {
    return Intl.message(
      '',
      name: 'profileUpdate',
    );
  }

  String get settings {
    return Intl.message(
      '',
      name: 'settings',
    );
  }

  String get inbox {
    return Intl.message(
      '',
      name: 'inbox',
    );
  }

  String get subscription {
    return Intl.message(
      '',
      name: 'subscription',
    );
  }

  String get subscriptionDescription {
    return Intl.message(
      '',
      name: 'subscriptionDescription',
    );
  }

  String get notification {
    return Intl.message(
      '',
      name: 'notification',
    );
  }

  String get notificationSettings {
    return Intl.message(
      '',
      name: 'notificationSettings',
    );
  }

  String get deleteAccount {
    return Intl.message(
      '',
      name: 'deleteAccount',
    );
  }

  String get privacyPolicy {
    return Intl.message(
      '',
      name: 'privacyPolicy',
    );
  }

  String get termsOfUse {
    return Intl.message(
      '',
      name: 'termsOfUse',
    );
  }

  String get editProfilePhoto {
    return Intl.message(
      '',
      name: 'editProfilePhoto',
    );
  }

  String get name {
    return Intl.message(
      '',
      name: 'name',
    );
  }

  String get selfIntro {
    return Intl.message(
      '',
      name: 'selfIntro',
    );
  }

  String get webPage {
    return Intl.message(
      '',
      name: 'webPage',
    );
  }

  String get all {
    return Intl.message(
      '',
      name: 'all',
    );
  }

  String get unReads {
    return Intl.message(
      '',
      name: 'unReads',
    );
  }

  String get reads {
    return Intl.message(
      '',
      name: 'reads',
    );
  }

  String get readAll {
    return Intl.message(
      '',
      name: 'readAll',
    );
  }

  String get eraseAll {
    return Intl.message(
      '',
      name: 'eraseAll',
    );
  }

  String get language {
    return Intl.message(
      '',
      name: 'language',
    );
  }

  String get korean {
    return Intl.message(
      '',
      name: 'korean',
    );
  }

  String get english {
    return Intl.message(
      '',
      name: 'english',
    );
  }

  String get japanese {
    return Intl.message(
      '',
      name: 'japanese',
    );
  }

  String get signOut {
    return Intl.message(
      '',
      name: 'signOut',
    );
  }

  String get free {
    return Intl.message(
      '',
      name: 'free',
    );
  }

  String get justCheckWhatIcanDo {
    return Intl.message(
      '',
      name: 'justCheckWhatIcanDo',
    );
  }

  String get subscribe {
    return Intl.message(
      '',
      name: 'subscribe',
    );
  }

  String get lowQualityImageMax {
    return Intl.message(
      '',
      name: 'lowQualityImageMax',
    );
  }

  String get lowQuality {
    return Intl.message(
      '',
      name: 'lowQuality',
    );
  }

  String get highQuality {
    return Intl.message(
      '',
      name: 'highQuality',
    );
  }

  String get vertical {
    return Intl.message(
      '',
      name: 'vertical',
    );
  }

  String get horizontal {
    return Intl.message(
      '',
      name: 'horizontal',
    );
  }

  String get starter {
    return Intl.message(
      '',
      name: 'starter',
    );
  }

  String get canUseWhenNeeded {
    return Intl.message(
      '',
      name: 'canUseWhenNeeded',
    );
  }

  String get highQualityImageMax {
    return Intl.message(
      '',
      name: 'highQualityImageMax',
    );
  }

  String get fastestGenerationSpeed {
    return Intl.message(
      '',
      name: 'fastestGenerationSpeed',
    );
  }

  String get premium {
    return Intl.message(
      '',
      name: 'premium',
    );
  }

  String get canUseAsOftenAsPossible {
    return Intl.message(
      '',
      name: 'canUseAsOftenAsPossible',
    );
  }

  String get allNotifications {
    return Intl.message(
      '',
      name: 'allNotifications',
    );
  }

  String get onOffToAllNotifications {
    return Intl.message(
      '',
      name: 'onOffToAllNotifications',
    );
  }

  String get emailNotification {
    return Intl.message(
      '',
      name: 'emailNotification',
    );
  }

  String get sendEmailForAnyNotifications {
    return Intl.message(
      '',
      name: 'sendEmailForAnyNotifications',
    );
  }

  String get detailNotification {
    return Intl.message(
      '',
      name: 'detailNotification',
    );
  }

  String get notificationFromOtherUsers {
    return Intl.message(
      '',
      name: 'notificationFromOtherUsers',
    );
  }

  String get sendNotificationWhenOthersDownloadYourGeneratedImage {
    return Intl.message(
      '',
      name: 'sendNotificationWhenOthersDownloadYourGeneratedImage',
    );
  }

  String get notificationFromDesignStaff {
    return Intl.message(
      '',
      name: 'notificationFromDesignStaff',
    );
  }

  String get sendNotificationWhenImageIsGenerated {
    return Intl.message(
      '',
      name: 'sendNotificationWhenImageIsGenerated',
    );
  }

  String get systemNotifications {
    return Intl.message(
      '',
      name: 'systemNotifications',
    );
  }

  String get sendNotificationFromSystemNotifice {
    return Intl.message(
      '',
      name: 'sendNotificationFromSystemNotifice',
    );
  }

  String get afterDeletingAccount {
    return Intl.message(
      '',
      name: 'afterDeletingAccount',
    );
  }

  String get whenYouWantToProceed {
    return Intl.message(
      '',
      name: 'whenYouWantToProceed',
    );
  }

  String get searchResults {
    return Intl.message(
      '',
      name: 'searchResults',
    );
  }

  String get designInformation {
    return Intl.message(
      '',
      name: 'designInformation',
    );
  }

  String get designStaffTip {
    return Intl.message(
      '',
      name: 'designStaffTip',
    );
  }

  String get tip1 {
    return Intl.message(
      '',
      name: 'tip1',
    );
  }

  String get tip2 {
    return Intl.message(
      '',
      name: 'tip2',
    );
  }

  String get tip21 {
    return Intl.message(
      '',
      name: 'tip21',
    );
  }

  String get tip3 {
    return Intl.message(
      '',
      name: 'tip3',
    );
  }

  String get tip31 {
    return Intl.message(
      '',
      name: 'tip31',
    );
  }

  String get tip4 {
    return Intl.message(
      '',
      name: 'tip4',
    );
  }

  String get tip41 {
    return Intl.message(
      '',
      name: 'tip41',
    );
  }

  String get tip5 {
    return Intl.message(
      '',
      name: 'tip5',
    );
  }

  String get tip51 {
    return Intl.message(
      '',
      name: 'tip51',
    );
  }

  String get generatedUser {
    return Intl.message(
      '',
      name: 'generatedUser',
    );
  }

  String get imageInformation {
    return Intl.message(
      '',
      name: 'imageInformation',
    );
  }

  String get promptInformation {
    return Intl.message(
      '',
      name: 'promptInformation',
    );
  }

  String get download {
    return Intl.message(
      '',
      name: 'download',
    );
  }

  String get recommendSimilarImagesFromGallery {
    return Intl.message(
      '',
      name: 'recommendSimilarImagesFromGallery',
    );
  }

  String get theMoreConciseAlongWithAdjectives {
    return Intl.message(
      '',
      name: 'theMoreConciseAlongWithAdjectives',
    );
  }

  String get showOnlyImadeByMe {
    return Intl.message(
      '',
      name: 'showOnlyImadeByMe',
    );
  }

  String get realworldStyle {
    return Intl.message(
      '',
      name: 'realworldStyle',
    );
  }

  String get paintingStyle {
    return Intl.message(
      '',
      name: 'paintingStyle',
    );
  }

  String get illustrationStyle {
    return Intl.message(
      '',
      name: 'illustrationStyle',
    );
  }

  String get withFigure {
    return Intl.message(
      '',
      name: 'withFigure',
    );
  }

  String get sciFi {
    return Intl.message(
      '',
      name: 'sciFi',
    );
  }

  String get abstract {
    return Intl.message(
      '',
      name: 'abstract',
    );
  }

  String get sketchStyle {
    return Intl.message(
      '',
      name: 'sketchStyle',
    );
  }

  String get message {
    return Intl.message(
      '',
      name: 'message',
    );
  }

  String get profileImageEdit {
    return Intl.message(
      '',
      name: 'profileImageEdit',
    );
  }

  String get profileImageEditMessage {
    return Intl.message(
      '',
      name: 'profileImageEditMessage',
    );
  }

  String get save {
    return Intl.message(
      '',
      name: 'save',
    );
  }

  String get otherPeople {
    return Intl.message(
      '',
      name: 'otherPeople',
    );
  }

  String get billedInformation {
    return Intl.message(
      '',
      name: 'billedInformation',
    );
  }

  String get subscriptionStartDate {
    return Intl.message(
      '',
      name: 'subscriptionStartDate',
    );
  }

  String get nowMonth {
    return Intl.message(
      '',
      name: 'nowMonth',
    );
  }

  String get month {
    return Intl.message(
      '',
      name: 'month',
    );
  }

  String get mostUsed {
    return Intl.message(
      '',
      name: 'mostUsed',
    );
  }

  String get inUse {
    return Intl.message(
      '',
      name: 'inUse',
    );
  }

  String get generateCount {
    return Intl.message(
      '',
      name: 'generateCount',
    );
  }

  String get subscriptionPlan {
    return Intl.message(
      '',
      name: 'subscriptionPlan',
    );
  }

  String get voluntaryWithdrawal {
    return Intl.message(
      '',
      name: 'voluntaryWithdrawal',
    );
  }

  String get detailLandScape {
    return Intl.message(
      '',
      name: 'detailLandScape',
    );
  }

  String get requestMessage {
    return Intl.message(
      '',
      name: 'requestMessage',
    );
  }

  String get size {
    return Intl.message(
      '',
      name: 'size',
    );
  }

  String get pixel {
    return Intl.message(
      '',
      name: 'pixel',
    );
  }

  String get otherDesign {
    return Intl.message(
      '',
      name: 'otherDesign',
    );
  }

  String get randomArray {
    return Intl.message(
      '',
      name: 'randomArray',
    );
  }

  String get youMustSignInFirst {
    return Intl.message(
      '',
      name: 'youMustSignInFirst',
    );
  }

  String get noInputData {
    return Intl.message(
      '',
      name: 'noInputData',
    );
  }

  String get noSelectDesignStyle {
    return Intl.message(
      '',
      name: 'noSelectDesignStyle',
    );
  }

  String get noSelectDesignShape {
    return Intl.message(
      '',
      name: 'noSelectDesignShape',
    );
  }

  String get planTitleFree {
    return Intl.message(
      '',
      name: 'planTitleFree',
    );
  }

  String get planDescFree {
    return Intl.message(
      '',
      name: 'planDescFree',
    );
  }

  String get planPriceFree {
    return Intl.message(
      '',
      name: 'planPriceFree',
    );
  }

  String get planConditionFree1 {
    return Intl.message(
      '',
      name: 'planConditionFree1',
    );
  }

  String get planCurrencyUnit {
    return Intl.message(
      '',
      name: 'planCurrencyUnit',
    );
  }

  String get planTitleStart {
    return Intl.message(
      '',
      name: 'planTitleStart',
    );
  }

  String get planDescStart {
    return Intl.message(
      '',
      name: 'planDescStart',
    );
  }

  String get planPriceStart {
    return Intl.message(
      '',
      name: 'planPriceStart',
    );
  }

  String get freeLicense {
    return Intl.message(
      '',
      name: 'freeLicense',
    );
  }

  String get businessLicense {
    return Intl.message(
      '',
      name: 'businessLicense',
    );
  }

  String get planConditionStart1 {
    return Intl.message(
      '',
      name: 'planConditionStart1',
    );
  }

  String get planConditionStart2 {
    return Intl.message(
      '',
      name: 'planConditionStart2',
    );
  }

  String get planTitlePremium {
    return Intl.message(
      '',
      name: 'planTitlePremium',
    );
  }

  String get planDescPremium {
    return Intl.message(
      '',
      name: 'planDescPremium',
    );
  }

  String get planPricePremium {
    return Intl.message(
      '',
      name: 'planPricePremium',
    );
  }

  String get planConditionPremium1 {
    return Intl.message(
      '',
      name: 'planConditionPremium1',
    );
  }

  String get planConditionPremium2 {
    return Intl.message(
      '',
      name: 'planConditionPremium2',
    );
  }

  String get planConditionPremium3 {
    return Intl.message(
      '',
      name: 'planConditionPremium3',
    );
  }

  String get createDesignStartMessage {
    return Intl.message(
      '',
      name: 'createDesignStartMessage',
    );
  }

  String get style3d {
    return Intl.message(
      '',
      name: 'style3d',
    );
  }

  String get copyShareLink {
    return Intl.message(
      '',
      name: 'copyShareLink',
    );
  }

  String get modernartstyle {
    return Intl.message(
      '',
      name: 'modernartstyle',
    );
  }

  String get mechanic {
    return Intl.message(
      '',
      name: 'mechanic',
    );
  }

  String get cgiCharacter {
    return Intl.message(
      'disney',
      name: '3danime',
    );
  }

  String get sf {
    return Intl.message(
      '',
      name: 'sf',
    );
  }

  String get share {
    return Intl.message(
      '',
      name: 'share',
    );
  }

  String get bookmark {
    return Intl.message(
      '',
      name: 'bookmark',
    );
  }

  String get cartoon3d {
    return Intl.message(
      '',
      name: 'cartoon3d',
    );
  }

  String get photo {
    return Intl.message(
      '',
      name: 'photo',
    );
  }

  String get real1 {
    return Intl.message(
      '',
      name: 'real1',
    );
  }

  String get real2 {
    return Intl.message(
      '',
      name: 'real2',
    );
  }

  String get confirm {
    return Intl.message(
      '',
      name: 'confirm',
    );
  }

  String get showImagesFromBookmark {
    return Intl.message(
      '',
      name: 'showImagesFromBookmark',
    );
  }

  String get copySharePrompt {
    return Intl.message(
      '',
      name: 'copySharePrompt',
    );
  }

  String get reGenerate {
    return Intl.message(
      '',
      name: 'reGenerate',
    );
  }

  String get cleanerExp {
    return Intl.message(
      '',
      name: 'cleanerExp',
    );
  }

  String get aiEditorExp {
    return Intl.message(
      '',
      name: 'aiEditorExp',
    );
  }

  String get scaleUpExp {
    return Intl.message(
      '',
      name: 'scaleUpExp',
    );
  }

  String get removeBGExp {
    return Intl.message(
      '',
      name: 'removeBGExp',
    );
  }

  String get createAIModel {
    return Intl.message(
      '',
      name: 'createAIModel',
    );
  }

  String get createPersonalizationModel {
    return Intl.message(
      '',
      name: 'createPersonalizationModel',
    );
  }

  String get youCanCreatePersonalizationModel {
    return Intl.message(
      '',
      name: 'youCanCreatePersonalizationModel',
    );
  }

  String get youCanOnlyInputNumber {
    return Intl.message(
      '',
      name: 'youCanOnlyInputNumber',
    );
  }

  String get seedNumberRangeError {
    return Intl.message(
      '',
      name: 'seedNumberRangeError',
    );
  }

  String get addSeedNumber {
    return Intl.message(
      '',
      name: 'addSeedNumber',
    );
  }

  String get pleaseEnterSeedNumber {
    return Intl.message(
      '',
      name: 'pleaseEnterSeedNumber',
    );
  }

  String get seedInit {
    return Intl.message(
      '',
      name: 'seedInit',
    );
  }

  String get cancel {
    return Intl.message(
      '',
      name: 'cancel',
    );
  }

  String get noticeDescription {
    return Intl.message(
      'noticeDescription',
      name: 'noticeDescription',
    );
  }

  String get notice {
    return Intl.message(
      'notice',
      name: 'notice',
    );
  }

  String get neverSeeAgain {
    return Intl.message(
      'neverSeeAgain',
      name: 'neverSeeAgain',
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate(this.overriddenLocale);

  final Locale overriddenLocale;

  @override
  bool isSupported(Locale locale) {
    return <String>['en', 'ko', 'ja'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) {
    return AppLocalization.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) {
    return false;
  }
}
