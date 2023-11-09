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

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  final Map<String, Function> messages =
      _notInlinedMessages(_notInlinedMessages);

  static Map<String, Function> _notInlinedMessages(dynamic value) =>
      <String, Function>{
        'serviceDescription': MessageLookupByLibrary.simpleMessage(
            'Prompt를 모르는 누구나 쉽게 고퀄리티의 이미지를 생성할 수 있습니다.'),
        'noSearchImages':
            MessageLookupByLibrary.simpleMessage('이미지를 찾을 수 없습니다.'),
        'noBookmarkedImages':
            MessageLookupByLibrary.simpleMessage('즐겨찾기에 등록한 이미지가 없습니다.'),
        'gallery': MessageLookupByLibrary.simpleMessage('갤러리'),
        'generate': MessageLookupByLibrary.simpleMessage('만들기'),
        'aiEditor': MessageLookupByLibrary.simpleMessage('AI편집기능'),
        'userSetting': MessageLookupByLibrary.simpleMessage('사용자 설정'),
        'askGPT': MessageLookupByLibrary.simpleMessage('ChatGPT에게 물어보기'),
        'hasImageBeenCreated':
            MessageLookupByLibrary.simpleMessage('만든 이미지가 아직 없습니다.'),
        'showCompanyname': MessageLookupByLibrary.simpleMessage('상호명'),
        'showCorporateName': MessageLookupByLibrary.simpleMessage('주식회사 데라블'),
        'address': MessageLookupByLibrary.simpleMessage('주소'),
        'showAddress': MessageLookupByLibrary.simpleMessage(
            '서울 특별시 강남구 삼성로 533,5층 (삼성동,등우빌딩)'),
        'email': MessageLookupByLibrary.simpleMessage('이메일'),
        'phoneNumber': MessageLookupByLibrary.simpleMessage('전화번호'),
        'showBusinessRegNumber':
            MessageLookupByLibrary.simpleMessage('사업자 등록번호'),
        'showCommerceRegNumber': MessageLookupByLibrary.simpleMessage('통신판매업'),
        'showCEO': MessageLookupByLibrary.simpleMessage('대표'),
        'showCEOName': MessageLookupByLibrary.simpleMessage('김경호'),
        'showCISOName': MessageLookupByLibrary.simpleMessage('이정훈'),
        'showPersonalInfoManager':
            MessageLookupByLibrary.simpleMessage('개인정보관리 책임자'),
        'login': MessageLookupByLibrary.simpleMessage('시작 하기'),
        'startForFree': MessageLookupByLibrary.simpleMessage('무료로 시작하기'),
        'showImagesFromOtherUsers': MessageLookupByLibrary.simpleMessage(
            '나와 다른 사용자가 만든 이미지들을 볼 수 있어요.'),
        'sortByGenerated': MessageLookupByLibrary.simpleMessage('최근 생성순'),
        'sortBySeen': MessageLookupByLibrary.simpleMessage('최근 본 순'),
        'whichImageGenerate':
            MessageLookupByLibrary.simpleMessage('어떤 이미지를 만들까요?'),
        'selectStyle': MessageLookupByLibrary.simpleMessage('스타일 선택'),
        'profile': MessageLookupByLibrary.simpleMessage('프로필'),
        'profileUpdate': MessageLookupByLibrary.simpleMessage('사용자 설정'),
        'settings': MessageLookupByLibrary.simpleMessage('설정'),
        'inbox': MessageLookupByLibrary.simpleMessage('메시지'),
        'subscription': MessageLookupByLibrary.simpleMessage('구독 결제'),
        'subscriptionDescription': MessageLookupByLibrary.simpleMessage(
            '현재 베타 버전 서비스로서 무제한으로 이미지를 생성할 수 있습니다.\n6월부터는 정식 서비스로 제공되며 선결제 구독 플랜이 추가될 예정입니다.'),
        'notification': MessageLookupByLibrary.simpleMessage('알람'),
        'notificationSettings': MessageLookupByLibrary.simpleMessage('알람 설정'),
        'deleteAccount': MessageLookupByLibrary.simpleMessage('회원 탈퇴'),
        'privacyPolicy': MessageLookupByLibrary.simpleMessage('개인정보보호처리방침'),
        'termsOfUse': MessageLookupByLibrary.simpleMessage('서비스 이용 약관'),
        'editProfilePhoto': MessageLookupByLibrary.simpleMessage('프로필 사진 수정'),
        'name': MessageLookupByLibrary.simpleMessage('이름'),
        'selfIntro': MessageLookupByLibrary.simpleMessage('간단한 자기 소개'),
        'webPage': MessageLookupByLibrary.simpleMessage('홈페이지'),
        'all': MessageLookupByLibrary.simpleMessage('전체'),
        'unReads': MessageLookupByLibrary.simpleMessage('안 읽은 내용'),
        'reads': MessageLookupByLibrary.simpleMessage('읽은 내용'),
        'readAll': MessageLookupByLibrary.simpleMessage('모두 읽기'),
        'eraseAll': MessageLookupByLibrary.simpleMessage('모두 지우기'),
        'language': MessageLookupByLibrary.simpleMessage('언어'),
        'korean': MessageLookupByLibrary.simpleMessage('한국어'),
        'english': MessageLookupByLibrary.simpleMessage('English'),
        'japanese': MessageLookupByLibrary.simpleMessage('日本語'),
        'signOut': MessageLookupByLibrary.simpleMessage('로그아웃'),
        'free': MessageLookupByLibrary.simpleMessage('무료'),
        'justCheckWhatIcanDo':
            MessageLookupByLibrary.simpleMessage('무엇을 할 수 있는지 맛보기만 해볼게요'),
        'subscribe': MessageLookupByLibrary.simpleMessage('구독하기'),
        'lowQualityImageMax':
            MessageLookupByLibrary.simpleMessage('저품질 디자인 장까지'),
        'starter': MessageLookupByLibrary.simpleMessage('스타터'),
        'canUseWhenNeeded':
            MessageLookupByLibrary.simpleMessage('필요할 때 마다 사용하고 싶어요'),
        'highQualityImageMax':
            MessageLookupByLibrary.simpleMessage('고품질 디자인 장까지'),
        'fastestGenerationSpeed':
            MessageLookupByLibrary.simpleMessage('가장 빠른 생성 속도'),
        'premium': MessageLookupByLibrary.simpleMessage('프리미엄'),
        'canUseAsOftenAsPossible':
            MessageLookupByLibrary.simpleMessage('자주 사용하고 싶어요'),
        'allNotifications': MessageLookupByLibrary.simpleMessage('전체 알람'),
        'onOffToAllNotifications': MessageLookupByLibrary.simpleMessage(
            '모든 알람 설정에 대해서 활성,비활성화 설정을 합니다.'),
        'emailNotification': MessageLookupByLibrary.simpleMessage('이메일 알람'),
        'sendEmailForAnyNotifications':
            MessageLookupByLibrary.simpleMessage('알람 내용에 대하여 이메일을 보냅니다.'),
        'detailNotification': MessageLookupByLibrary.simpleMessage('세부 알람'),
        'notificationFromOtherUsers':
            MessageLookupByLibrary.simpleMessage('다른 사용자로부터의 알람'),
        'sendNotificationWhenOthersDownloadYourGeneratedImage':
            MessageLookupByLibrary.simpleMessage(
                '다른 사용자가 당신이 생성한 이미지를 다운로드 할 경우 알람을 보냅니다.'),
        'notificationFromDesignStaff':
            MessageLookupByLibrary.simpleMessage('디자인스태프로부터의 알람'),
        'sendNotificationWhenImageIsGenerated':
            MessageLookupByLibrary.simpleMessage('이미지를 생성이 완료되면, 알람을 보냅니다.'),
        'systemNotifications':
            MessageLookupByLibrary.simpleMessage('시스템으로부터의 알람'),
        'sendNotificationFromSystemNotifice':
            MessageLookupByLibrary.simpleMessage(
                '시스템 공지, 이용 플랜 변경 등 시스템으로부터 알람을 보냅니다.'),
        'afterDeletingAccount': MessageLookupByLibrary.simpleMessage(
            '탈퇴를 하시면, 그 동안의 데이터는 모두 삭제 됩니다.'),
        'whenYouWantToProceed': MessageLookupByLibrary.simpleMessage(
            "탈퇴를 희망하시면 ‘delete account’를 입력 해주세요."),
        'searchResults':
            MessageLookupByLibrary.simpleMessage('건의 결과가 검색 되었습니다.'),
        'designInformation': MessageLookupByLibrary.simpleMessage('디자인 정보'),
        'designStaffTip':
            MessageLookupByLibrary.simpleMessage('유용한 팁을 알려드릴게요.'),
        'tip1': MessageLookupByLibrary.simpleMessage(
            '✓ 인공지능이 이해할 수 있도록 간결한 문장으로 요청하기.'),
        'tip2': MessageLookupByLibrary.simpleMessage(
            '✓ 동물은 현재 하나의 이미지에 한 종류만 입력하기.'),
        'tip21': MessageLookupByLibrary.simpleMessage(
            '예) 토끼와 거북이가 ~~(X), 귀여운 새를 ~~(O)'),
        'tip3': MessageLookupByLibrary.simpleMessage(
            '✓ 동작이나 각도, 배경 등 명확하게 제시해주는게 좋아요.'),
        'tip31': MessageLookupByLibrary.simpleMessage(
            '예) 옆모습, 전신, 넓은 바다, 귀여운 강아지 웰시코기 등'),
        'tip4': MessageLookupByLibrary.simpleMessage(
            '✓ 주체에대한 묘사,콤마로 구분하여 배경에 대한 묘사를 하면 더 정확하게 생성되요.'),
        'tip41':
            MessageLookupByLibrary.simpleMessage('예) 23년도 가을 페션의 여성 모델, 회색 배경'),
        'tip5': MessageLookupByLibrary.simpleMessage(
            '✓ 디자인스태프는 항상 당신의 요청을 듣고 있어요.'),
        'tip51': MessageLookupByLibrary.simpleMessage(
            '인공지능 모델과 프롬프트 자동 생성 처리는 지속 성장합니다.'),
        'generatedUser': MessageLookupByLibrary.simpleMessage('생성한 사람'),
        'imageInformation': MessageLookupByLibrary.simpleMessage('이미지 정보'),
        'promptInformation': MessageLookupByLibrary.simpleMessage('표준 프롬프트 정보'),
        'download': MessageLookupByLibrary.simpleMessage('다운로드'),
        'recommendSimilarImagesFromGallery':
            MessageLookupByLibrary.simpleMessage('갤러리에서 유사한 이미지 보여주기'),
        'theMoreConciseAlongWithAdjectives':
            MessageLookupByLibrary.simpleMessage(
                '형용사가 있으면서 간결할수록 생성 결과가 좋아집니다.'),
        'showOnlyImadeByMe':
            MessageLookupByLibrary.simpleMessage('내가 만든 사진만 보기'),
        'realworldStyle': MessageLookupByLibrary.simpleMessage('현실적인 사진'),
        'paintingStyle': MessageLookupByLibrary.simpleMessage('유화 그림'),
        'illustrationStyle': MessageLookupByLibrary.simpleMessage('일러스트'),
        'withFigure': MessageLookupByLibrary.simpleMessage('인물 있음'),
        'sciFi': MessageLookupByLibrary.simpleMessage('SF'),
        'abstract': MessageLookupByLibrary.simpleMessage('추상적'),
        'detailLandScape': MessageLookupByLibrary.simpleMessage('디테일한 경치'),
        'highQuality': MessageLookupByLibrary.simpleMessage('고품질'),
        'vertical': MessageLookupByLibrary.simpleMessage('세로'),
        'horizontal': MessageLookupByLibrary.simpleMessage('가로'),
        'save': MessageLookupByLibrary.simpleMessage('저장하기'),
        'month': MessageLookupByLibrary.simpleMessage('/월 결제'),
        'billedInformation': MessageLookupByLibrary.simpleMessage(
            '디자인스태프는 이용 약관에 근거하여, 정기 구독 방식으로 매월 1일에 청구되며, 구독한 시점부터 한 달이 되지 않을 경우와 요금제 변경을 한 경우 일할 정산하여 청구 합니다.'),
        'subscriptionStartDate': MessageLookupByLibrary.simpleMessage('결제 시작일'),
        'subscriptionPlan': MessageLookupByLibrary.simpleMessage('이용 플랜'),
        'lowQuality': MessageLookupByLibrary.simpleMessage('저품질'),
        'inUse': MessageLookupByLibrary.simpleMessage('이용중'),
        'mostUsed': MessageLookupByLibrary.simpleMessage('가장 많이 이용'),
        'sketchStyle': MessageLookupByLibrary.simpleMessage('스케치'),
        'message': MessageLookupByLibrary.simpleMessage('메시지'),
        'profileImageEdit': MessageLookupByLibrary.simpleMessage('프로필 사진 수정'),
        'profileImageEditMessage': MessageLookupByLibrary.simpleMessage(
            '저장하기를 누르지 않으면 변경된 이미지가 반영되지 않습니다.'),
        'otherPeople': MessageLookupByLibrary.simpleMessage('다른 사용자로부터'),
        'nowMonth': MessageLookupByLibrary.simpleMessage('월 현재'),
        'generateCount': MessageLookupByLibrary.simpleMessage('장 생성'),
        'voluntaryWithdrawal': MessageLookupByLibrary.simpleMessage('탈퇴하기'),
        'requestMessage': MessageLookupByLibrary.simpleMessage('요청 명령어'),
        'size': MessageLookupByLibrary.simpleMessage('크기'),
        'pixel': MessageLookupByLibrary.simpleMessage('픽셀'),
        'otherDesign': MessageLookupByLibrary.simpleMessage('님의 다른 디자인'),
        'randomArray': MessageLookupByLibrary.simpleMessage('랜덤 정렬'),
        'youMustSignInFirst':
            MessageLookupByLibrary.simpleMessage('로그인 하여 사용해주세요.'),
        'noInputData': MessageLookupByLibrary.simpleMessage('입력 값이 없습니다.'),
        'noSelectDesignStyle':
            MessageLookupByLibrary.simpleMessage('이미지 모델을 선택해주세요.'),
        'noSelectDesignShape':
            MessageLookupByLibrary.simpleMessage('생성될 이미지 타입을 선택해주세요.'),
        'planTitleFree': MessageLookupByLibrary.simpleMessage('무료'),
        'planDescFree':
            MessageLookupByLibrary.simpleMessage('무엇을 할 수 있는지 맛보기만 해볼게요.'),
        'planPriceFree': MessageLookupByLibrary.simpleMessage('0'),
        'planConditionFree1': MessageLookupByLibrary.simpleMessage(
            '✓ 베타 버전 이후, 저품질 디자인 월 20장까지 생성 체험 가능'),
        'planCurrencyUnit': MessageLookupByLibrary.simpleMessage('₩'),
        'planTitleStart': MessageLookupByLibrary.simpleMessage('스타트'),
        'planDescStart':
            MessageLookupByLibrary.simpleMessage('필요할 때 마다 사용하고 싶어요.'),
        'planPriceStart': MessageLookupByLibrary.simpleMessage('29,800'),
        'freeLicense': MessageLookupByLibrary.simpleMessage('✓ 무료 라이센스'),
        'businessLicense': MessageLookupByLibrary.simpleMessage('✓ 상업용 라이센스'),
        'planConditionStart1':
            MessageLookupByLibrary.simpleMessage('✓ 저품질 디자인 월 500장까지 생성 가능'),
        'planConditionStart2':
            MessageLookupByLibrary.simpleMessage('✓ 고품질 디자인 월 100장까지 생성 가능'),
        'planTitlePremium': MessageLookupByLibrary.simpleMessage('프리미엄'),
        'planDescPremium': MessageLookupByLibrary.simpleMessage('자주 사용하고 싶어요.'),
        'planPricePremium': MessageLookupByLibrary.simpleMessage('99,800'),
        'planConditionPremium1':
            MessageLookupByLibrary.simpleMessage('✓ 저품질 디자인 월 2,000장까지 생성 가능'),
        'planConditionPremium2':
            MessageLookupByLibrary.simpleMessage('✓ 고품질 디자인 월 300장까지 생성 가능'),
        'planConditionPremium3':
            MessageLookupByLibrary.simpleMessage('✓ 가장 빠른 생성 속도'),
        'createDesignStartMessage': MessageLookupByLibrary.simpleMessage(
            '디자인 생성에는 10~30초 정도 소요됩니다. 생성 완료된 후에는 만들기 혹은 갤러리 페이지에서 확인 가능합니다.'),
        'copyShareLink': MessageLookupByLibrary.simpleMessage('링크를 복사하였습니다.'),
        'style3d': MessageLookupByLibrary.simpleMessage('3D 모델'),
        'modernartstyle': MessageLookupByLibrary.simpleMessage('모던 아트'),
        'sf': MessageLookupByLibrary.simpleMessage('공상과학'),
        '3danime': MessageLookupByLibrary.simpleMessage('3D 애니메이션'),
        'mechanic': MessageLookupByLibrary.simpleMessage('메카닉'),
        'share': MessageLookupByLibrary.simpleMessage('공유하기'),
        'cartoon3d': MessageLookupByLibrary.simpleMessage('3D 카툰'),
        'photo': MessageLookupByLibrary.simpleMessage('사진'),
        'real1': MessageLookupByLibrary.simpleMessage('현실적인 사진 1'),
        'real2': MessageLookupByLibrary.simpleMessage('현실적인 사진 2'),
        'confirm': MessageLookupByLibrary.simpleMessage('완료'),
        'bookmark': MessageLookupByLibrary.simpleMessage('즐겨찾기'),
        'showImagesFromBookmark':
            MessageLookupByLibrary.simpleMessage('내가 즐겨찾기한 이미지들을 볼 수 있어요.'),
        'copySharePrompt':
            MessageLookupByLibrary.simpleMessage('요청 명령어를 복사하였습니다.'),
        'reGenerate': MessageLookupByLibrary.simpleMessage('다시 만들기'),
        'aiEditorExp': MessageLookupByLibrary.simpleMessage(
            '현재 AI 편집기는 PC에서만 제공되니 PC에서 확인 부탁드립니다.추후 모바일에서도 제공될 예정입니다.'),
        'cleanerExp': MessageLookupByLibrary.simpleMessage(
            '불필요한 객체를 지정하여 자연스럽게 제거할 수 있습니다.'),
        'scaleUpExp':
            MessageLookupByLibrary.simpleMessage('2배, 4배 지정하여 해상도를 높일 수 있습니다.'),
        'removeBGExp':
            MessageLookupByLibrary.simpleMessage('배경을 투명하게 제거할 수 있습니다.'),
        'createAIModel': MessageLookupByLibrary.simpleMessage('AI 모델 생성'),
        'createPersonalizationModel':
            MessageLookupByLibrary.simpleMessage('개인화 모델 생성'),
        'youCanCreatePersonalizationModel':
            MessageLookupByLibrary.simpleMessage('개인화 모델을 생성할 수 있습니다.'),
        'youCanOnlyInputNumber':
            MessageLookupByLibrary.simpleMessage('숫자만 입력해 주세요.'),
        'seedNumberRangeError':
            MessageLookupByLibrary.simpleMessage('시드 넘버의 범위가 초과했습니다.'),
        'addSeedNumber': MessageLookupByLibrary.simpleMessage('시드 넘버 추가하기'),
        'pleaseEnterSeedNumber':
            MessageLookupByLibrary.simpleMessage('시드 넘버를 입력해주세요.'),
        'seedInit': MessageLookupByLibrary.simpleMessage('시드 넘버 초기화'),
        'cancel': MessageLookupByLibrary.simpleMessage('취소'),
        'noticeDescription': MessageLookupByLibrary.simpleMessage(
            '11:30 ~ 16:00 서버 이전 작업 때문에 디자인 생성이 불가능합니다.'),
        'notice': MessageLookupByLibrary.simpleMessage('공지사항'),
        'neverSeeAgain': MessageLookupByLibrary.simpleMessage('다시 보지 않기'),
      };
}

// 전화번호 영어랑 일본어로 번역해줘 그리고 이걸 함수로 부른다고 생각하면 어떤 이름이 좋을까? 그것도 알려줘
