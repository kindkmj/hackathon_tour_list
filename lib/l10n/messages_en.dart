// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final Map<String, Function> messages =
      _notInlinedMessages(_notInlinedMessages);

  static Map<String, Function> _notInlinedMessages(dynamic value) =>
      <String, Function>{
        'serviceDescription': MessageLookupByLibrary.simpleMessage(
            'Anyone who does not know Prompt can easily create high-quality images.'),
        'noSearchImages':
            MessageLookupByLibrary.simpleMessage("Could'nt find any images."),
        'noBookmarkedImages': MessageLookupByLibrary.simpleMessage(
            'You have no bookmarked images yet.'),
        'gallery': MessageLookupByLibrary.simpleMessage('Gallery'),
        'generate': MessageLookupByLibrary.simpleMessage('Generate'),
        'aiEditor': MessageLookupByLibrary.simpleMessage('AI Editor'),
        'userSetting': MessageLookupByLibrary.simpleMessage('User Setting'),
        'askGPT': MessageLookupByLibrary.simpleMessage('Ask ChatGPT'),
        'hasImageBeenCreated':
            MessageLookupByLibrary.simpleMessage('No generated image yet.'),
        'showCompanyname': MessageLookupByLibrary.simpleMessage('Company Name'),
        'showCorporateName':
            MessageLookupByLibrary.simpleMessage('DELABLE Inc.'),
        'address': MessageLookupByLibrary.simpleMessage('Address'),
        'showAddress': MessageLookupByLibrary.simpleMessage(
            '5F Deungwoo Bldg., 533, Samsung-Ro, Gangnam-Gu, Seoul, Republic of Korea'),
        'email': MessageLookupByLibrary.simpleMessage('E-mail'),
        'phoneNumber': MessageLookupByLibrary.simpleMessage('Tel.'),
        'showBusinessRegNumber':
            MessageLookupByLibrary.simpleMessage('Business Registration No.'),
        'showCommerceRegNumber':
            MessageLookupByLibrary.simpleMessage('Commerce Registration No.'),
        'showCEO': MessageLookupByLibrary.simpleMessage('CEO'),
        'showCEOName': MessageLookupByLibrary.simpleMessage('Kim, Kyung-ho'),
        'showCISOName': MessageLookupByLibrary.simpleMessage('Lee, Jung-hun'),
        'showPersonalInfoManager': MessageLookupByLibrary.simpleMessage(
            'Personal Information Manager'),
        'login': MessageLookupByLibrary.simpleMessage('Start'),
        'startForFree':
            MessageLookupByLibrary.simpleMessage('Start Free Trial'),
        'showImagesFromOtherUsers':
            MessageLookupByLibrary.simpleMessage('See what others generated.'),
        'sortByGenerated':
            MessageLookupByLibrary.simpleMessage('Latest generated'),
        'sortBySeen': MessageLookupByLibrary.simpleMessage('Latest seen'),
        'whichImageGenerate': MessageLookupByLibrary.simpleMessage(
            'Which image would you like to generate?'),
        'selectStyle': MessageLookupByLibrary.simpleMessage('Select Style'),
        'profile': MessageLookupByLibrary.simpleMessage('Profile'),
        'profileUpdate': MessageLookupByLibrary.simpleMessage('User Setting'),
        'settings': MessageLookupByLibrary.simpleMessage('Settings'),
        'inbox': MessageLookupByLibrary.simpleMessage('Inbox'),
        'subscription': MessageLookupByLibrary.simpleMessage('Subscription'),
        'subscriptionDescription': MessageLookupByLibrary.simpleMessage(
            'As a current beta service, you can create unlimited images.\nFrom June, it will be available as a full service, and a prepaid subscription plan will be added.'),
        'notification': MessageLookupByLibrary.simpleMessage('Notification'),
        'notificationSettings':
            MessageLookupByLibrary.simpleMessage('Notification Settings'),
        'deleteAccount': MessageLookupByLibrary.simpleMessage('Delete Account'),
        'privacyPolicy': MessageLookupByLibrary.simpleMessage('Privacy Policy'),
        'termsOfUse': MessageLookupByLibrary.simpleMessage('Terms Of Use'),
        'editProfilePhoto':
            MessageLookupByLibrary.simpleMessage('Edit Profile Photo'),
        'name': MessageLookupByLibrary.simpleMessage('Name'),
        'selfIntro': MessageLookupByLibrary.simpleMessage('Self intro'),
        'webPage': MessageLookupByLibrary.simpleMessage('Web Page'),
        'all': MessageLookupByLibrary.simpleMessage('All'),
        'unReads': MessageLookupByLibrary.simpleMessage('Un Reads'),
        'reads': MessageLookupByLibrary.simpleMessage('Reads'),
        'readAll': MessageLookupByLibrary.simpleMessage('Read All'),
        'eraseAll': MessageLookupByLibrary.simpleMessage('Erase All'),
        'language': MessageLookupByLibrary.simpleMessage('Language'),
        'korean': MessageLookupByLibrary.simpleMessage('한국어'),
        'english': MessageLookupByLibrary.simpleMessage('English'),
        'japanese': MessageLookupByLibrary.simpleMessage('日本語'),
        'signOut': MessageLookupByLibrary.simpleMessage('Sign Out'),
        'free': MessageLookupByLibrary.simpleMessage('Free'),
        'justCheckWhatIcanDo':
            MessageLookupByLibrary.simpleMessage('Just Check What I can Do'),
        'subscribe': MessageLookupByLibrary.simpleMessage('Subscribe'),
        'lowQualityImageMax':
            MessageLookupByLibrary.simpleMessage('Low Quality Image Max'),
        'starter': MessageLookupByLibrary.simpleMessage('Starter'),
        'canUseWhenNeeded':
            MessageLookupByLibrary.simpleMessage('Can Use When Needed'),
        'highQualityImageMax':
            MessageLookupByLibrary.simpleMessage('High Quality Image Max'),
        'fastestGenerationSpeed':
            MessageLookupByLibrary.simpleMessage('Fastest Generation Speed'),
        'premium': MessageLookupByLibrary.simpleMessage('Premium'),
        'canUseAsOftenAsPossible': MessageLookupByLibrary.simpleMessage(
            'Can Use as Often as Possible'),
        'allNotifications':
            MessageLookupByLibrary.simpleMessage('All Notifications'),
        'onOffToAllNotifications':
            MessageLookupByLibrary.simpleMessage('On Off to All Notifications'),
        'emailNotification':
            MessageLookupByLibrary.simpleMessage('Email Notification'),
        'sendEmailForAnyNotifications': MessageLookupByLibrary.simpleMessage(
            'Send Email for any Notifications'),
        'detailNotification':
            MessageLookupByLibrary.simpleMessage('Detail Notification'),
        'notificationFromOtherUsers': MessageLookupByLibrary.simpleMessage(
            'Notification From Other Users'),
        'sendNotificationWhenOthersDownloadYourGeneratedImage':
            MessageLookupByLibrary.simpleMessage(
                'Send Notification When Others Download Your Generated Image'),
        'notificationFromDesignStaff': MessageLookupByLibrary.simpleMessage(
            'Notification From DesignStaff'),
        'sendNotificationWhenImageIsGenerated':
            MessageLookupByLibrary.simpleMessage(
                'Send Notification When Image is Generated'),
        'systemNotifications':
            MessageLookupByLibrary.simpleMessage('System Notifications'),
        'sendNotificationFromSystemNotifice':
            MessageLookupByLibrary.simpleMessage(
                'Send notification from system notifice, change of subscription'),
        'afterDeletingAccount': MessageLookupByLibrary.simpleMessage(
            'After deleting account, all user data will be lost.'),
        'whenYouWantToProceed': MessageLookupByLibrary.simpleMessage(
            "When you want to proceed, press 'Delete Account'."),
        'searchResults': MessageLookupByLibrary.simpleMessage('Search Results'),
        'designInformation':
            MessageLookupByLibrary.simpleMessage('Design Information'),
        'designStaffTip':
            MessageLookupByLibrary.simpleMessage('Some Useful Tips'),
        'tip1': MessageLookupByLibrary.simpleMessage(
            '✓ Make requests in concise sentences that AI can understand.'),
        'tip2': MessageLookupByLibrary.simpleMessage(
            '✓ Enter only one animal type per image.'),
        'tip21': MessageLookupByLibrary.simpleMessage(
            'ex) rabbit and tortoise ~~(X), cute bird ~~(O)'),
        'tip3': MessageLookupByLibrary.simpleMessage(
            '✓ good to clearly the motion, angle, background, etc.'),
        'tip31': MessageLookupByLibrary.simpleMessage(
            'ex) full body, wide sea, cute dog Welsh Corgi, etc.'),
        'tip4': MessageLookupByLibrary.simpleMessage(
            '✓ A description of the subject and a description of the background separated by commas will create more accurate results.'),
        'tip41': MessageLookupByLibrary.simpleMessage(
            'ex) Female model of the fall fashion of 2023, gray background'),
        'tip5': MessageLookupByLibrary.simpleMessage(
            '✓ DESIGNSTAFF is always listening to your requests.'),
        'tip51': MessageLookupByLibrary.simpleMessage(
            'AI models and automatic prompts generator continue to grow.'),
        'generatedUser': MessageLookupByLibrary.simpleMessage('Generated User'),
        'imageInformation':
            MessageLookupByLibrary.simpleMessage('Image Information'),
        'promptInformation':
            MessageLookupByLibrary.simpleMessage('Standard Prompt Information'),
        'download': MessageLookupByLibrary.simpleMessage('Download'),
        'recommendSimilarImagesFromGallery':
            MessageLookupByLibrary.simpleMessage(
                'Recommend similar images from gallery'),
        'theMoreConciseAlongWithAdjectives': MessageLookupByLibrary.simpleMessage(
            'The more concise along with adjectives, the better the production results.'),
        'showOnlyImadeByMe':
            MessageLookupByLibrary.simpleMessage('Show only I made'),
        'realworldStyle': MessageLookupByLibrary.simpleMessage('Reality'),
        'paintingStyle': MessageLookupByLibrary.simpleMessage('Painting'),
        'illustrationStyle':
            MessageLookupByLibrary.simpleMessage('Illustration'),
        'sketchStyle': MessageLookupByLibrary.simpleMessage('Sketch'),
        'withFigure': MessageLookupByLibrary.simpleMessage('With Figure'),
        'sciFi': MessageLookupByLibrary.simpleMessage('Sci-Fi'),
        'abstract': MessageLookupByLibrary.simpleMessage('Abstract'),
        'detailLandScape':
            MessageLookupByLibrary.simpleMessage('Detail Landscape'),
        'highQuality': MessageLookupByLibrary.simpleMessage('High Quality'),
        'vertical': MessageLookupByLibrary.simpleMessage('Vertical'),
        'horizontal': MessageLookupByLibrary.simpleMessage('Horizontal'),
        'save': MessageLookupByLibrary.simpleMessage('Save'),
        'month': MessageLookupByLibrary.simpleMessage('/month'),
        'billedInformation': MessageLookupByLibrary.simpleMessage(
            'DesignStaff is billed every 1st day of every month as a monthly subscription based on the Terms of Use. and it will be daily charged, if it is less than a month from the time of subscription.'),
        'subscriptionStartDate':
            MessageLookupByLibrary.simpleMessage('Subscription Start Date'),
        'subscriptionPlan':
            MessageLookupByLibrary.simpleMessage('Subscription Plan'),
        'lowQuality': MessageLookupByLibrary.simpleMessage('Low Quality'),
        'inUse': MessageLookupByLibrary.simpleMessage('In use'),
        'mostUsed': MessageLookupByLibrary.simpleMessage('Most Used'),
        'message': MessageLookupByLibrary.simpleMessage('message'),
        'profileImageEdit':
            MessageLookupByLibrary.simpleMessage('Profile image edit'),
        'profileImageEditMessage': MessageLookupByLibrary.simpleMessage(
            'If you do not click save, the changed image will not be reflected.'),
        'otherPeople': MessageLookupByLibrary.simpleMessage('From other user'),
        'nowMonth': MessageLookupByLibrary.simpleMessage('monthly present'),
        'generateCount': MessageLookupByLibrary.simpleMessage('Created'),
        'voluntaryWithdrawal':
            MessageLookupByLibrary.simpleMessage('Delete Account'),
        'requestMessage':
            MessageLookupByLibrary.simpleMessage('Request Creation'),
        'size': MessageLookupByLibrary.simpleMessage('Size'),
        'pixel': MessageLookupByLibrary.simpleMessage('pixel'),
        'otherDesign': MessageLookupByLibrary.simpleMessage("'s other design"),
        'randomArray': MessageLookupByLibrary.simpleMessage('Random'),
        'youMustSignInFirst':
            MessageLookupByLibrary.simpleMessage('Please sign in first.'),
        'noInputData': MessageLookupByLibrary.simpleMessage('입력 값이 없습니다.'),
        'noSelectDesignStyle':
            MessageLookupByLibrary.simpleMessage('이미지 모델을 선택해주세요.'),
        'noSelectDesignShape':
            MessageLookupByLibrary.simpleMessage('생성될 이미지 타입을 선택해주세요.'),
        'planTitleFree': MessageLookupByLibrary.simpleMessage('Free'),
        'planDescFree':
            MessageLookupByLibrary.simpleMessage("Just try what I can do."),
        'planPriceFree': MessageLookupByLibrary.simpleMessage('0'),
        'planConditionFree1': MessageLookupByLibrary.simpleMessage(
            "✓ After Beta open, it's able to create up to 20 low-quality designs per month"),
        'planCurrencyUnit': MessageLookupByLibrary.simpleMessage(r'$'),
        'planTitleStart': MessageLookupByLibrary.simpleMessage('Starter'),
        'planDescStart': MessageLookupByLibrary.simpleMessage(
            'I want to use it whenever I need it.'),
        'planPriceStart': MessageLookupByLibrary.simpleMessage('25'),
        'freeLicense': MessageLookupByLibrary.simpleMessage('✓ Free License'),
        'businessLicense':
            MessageLookupByLibrary.simpleMessage('✓ Business License'),
        'planConditionStart1': MessageLookupByLibrary.simpleMessage(
            '✓ Possible to create up to 500 low-quality designs per month'),
        'planConditionStart2': MessageLookupByLibrary.simpleMessage(
            '✓ Possible to create up to 100 high-quality designs per month'),
        'planTitlePremium': MessageLookupByLibrary.simpleMessage('Premium'),
        'planDescPremium':
            MessageLookupByLibrary.simpleMessage('I want to use it often.'),
        'planPricePremium': MessageLookupByLibrary.simpleMessage('95'),
        'planConditionPremium1': MessageLookupByLibrary.simpleMessage(
            '✓ Possible to create up to 2,000 low-quality designs per month'),
        'planConditionPremium2': MessageLookupByLibrary.simpleMessage(
            '✓ Possible to create up to 300 high-quality designs per month'),
        'planConditionPremium3':
            MessageLookupByLibrary.simpleMessage('✓ Fastest generation rate'),
        'createDesignStartMessage': MessageLookupByLibrary.simpleMessage(
            'Design creation takes between 10 and 30 seconds. After creation is complete, you can check it on the Create or Gallery page.'),
        'copyShareLink':
            MessageLookupByLibrary.simpleMessage('Copied share link.'),
        'style3d': MessageLookupByLibrary.simpleMessage('3D Style'),
        'modernartstyle': MessageLookupByLibrary.simpleMessage('Modern Art'),
        'sf': MessageLookupByLibrary.simpleMessage('Sci-Fi'),
        '3danime': MessageLookupByLibrary.simpleMessage('3D Anime'),
        'mechanic': MessageLookupByLibrary.simpleMessage('Mech'),
        'share': MessageLookupByLibrary.simpleMessage('share'),
        'threeDimensions': MessageLookupByLibrary.simpleMessage('3D'),
        'photo': MessageLookupByLibrary.simpleMessage('photo'),
        'real1': MessageLookupByLibrary.simpleMessage('Reality 1'),
        'real2': MessageLookupByLibrary.simpleMessage('Reality 2'),
        'confirm': MessageLookupByLibrary.simpleMessage('confirm'),
        'bookmark': MessageLookupByLibrary.simpleMessage('BookMark'),
        'showImagesFromBookmark': MessageLookupByLibrary.simpleMessage(
            'You can see my favorite images.'),
        'copySharePrompt':
            MessageLookupByLibrary.simpleMessage('Copied the request command.'),
        'reGenerate': MessageLookupByLibrary.simpleMessage('Re-Generate'),
        'aiEditorExp': MessageLookupByLibrary.simpleMessage(
            'Currently, the AI Editor is only available on PC, so please check it on your PC. It will be provided on mobile in the future.'),
        'cleanerExp': MessageLookupByLibrary.simpleMessage(
            'Unnecessary objects can be removed, and the removed areas are naturally regenerated.'),
        'scaleUpExp': MessageLookupByLibrary.simpleMessage(
            'You can increase the resolution by x2 or x4.'),
        'removeBGExp': MessageLookupByLibrary.simpleMessage(
            'The background can be removed to be transparent.'),
        'createAIModel':
            MessageLookupByLibrary.simpleMessage('Create AI Model'),
        'createPersonalizationModel': MessageLookupByLibrary.simpleMessage(
            'Create Personalization Model'),
        'youCanCreatePersonalizationModel':
            MessageLookupByLibrary.simpleMessage(
                'You can create a personalization model.'),
        'youCanOnlyInputNumber':
            MessageLookupByLibrary.simpleMessage('You can only input number.'),
        'seedNumberRangeError': MessageLookupByLibrary.simpleMessage(
            'The range of the seed number has exceeded.'),
        'addSeedNumber':
            MessageLookupByLibrary.simpleMessage('Add Seed Number'),
        'pleaseEnterSeedNumber':
            MessageLookupByLibrary.simpleMessage('Please enter seed number.'),
        'seedInit': MessageLookupByLibrary.simpleMessage('Seed Init'),
        'cancel': MessageLookupByLibrary.simpleMessage('Cancel'),
        'noticeDescription': MessageLookupByLibrary.simpleMessage(
            'Image Generation is not possible today from am 2:30 to am 7:00 (UTC time) due to technical server transfer work.'),
        'notice': MessageLookupByLibrary.simpleMessage('Notice'),
        'neverSeeAgain':
        MessageLookupByLibrary.simpleMessage('Never see again'),
      };
}
