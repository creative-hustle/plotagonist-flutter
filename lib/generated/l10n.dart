// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `LOGIN`
  String get login {
    return Intl.message(
      'LOGIN',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `REGISTER`
  String get register {
    return Intl.message(
      'REGISTER',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `EMAIL ADDRESS`
  String get emailAddress {
    return Intl.message(
      'EMAIL ADDRESS',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `you@youremail.com`
  String get youyouremailcom {
    return Intl.message(
      'you@youremail.com',
      name: 'youyouremailcom',
      desc: '',
      args: [],
    );
  }

  /// `PASSWORD (6 characters minimum)`
  String get password_hint {
    return Intl.message(
      'PASSWORD (6 characters minimum)',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `ADD PHOTO`
  String get addPhoto {
    return Intl.message(
      'ADD PHOTO',
      name: 'addPhoto',
      desc: '',
      args: [],
    );
  }

  /// `YOUR NAME`
  String get yourName {
    return Intl.message(
      'YOUR NAME',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `e.g. Stephen King`
  String get egStephenKing {
    return Intl.message(
      'e.g. Stephen King',
      name: 'egStephenKing',
      desc: '',
      args: [],
    );
  }

  /// `PASSWORD (6 characters minimum)`
  String get password6CharactersMinimum {
    return Intl.message(
      'PASSWORD (6 characters minimum)',
      name: 'password6CharactersMinimum',
      desc: '',
      args: [],
    );
  }

  /// `Need help?`
  String get needHelp {
    return Intl.message(
      'Need help?',
      name: 'needHelp',
      desc: '',
      args: [],
    );
  }

  /// `RESET PASSWORD`
  String get resetPassword {
    return Intl.message(
      'RESET PASSWORD',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `BACK`
  String get back {
    return Intl.message(
      'BACK',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address you have registered with. We'll send you an email with a 6-digit reset code.\nAfter entering the reset code, then you'll be able to set up  a new password.`
  String get reset_password_instructions {
    return Intl.message(
      'Please enter your email address you have registered with. We\'ll send you an email with a 6-digit reset code.\nAfter entering the reset code, then you\'ll be able to set up  a new password.',
      name: 'reset_password_instructions',
      desc: '',
      args: [],
    );
  }

  /// `SEND RESET CODE`
  String get sendResetCode {
    return Intl.message(
      'SEND RESET CODE',
      name: 'sendResetCode',
      desc: '',
      args: [],
    );
  }

  /// `contact support.`
  String get contactSupport {
    return Intl.message(
      'contact support.',
      name: 'contactSupport',
      desc: '',
      args: [],
    );
  }

  /// `We couldn’t find an account with this email address. Please try with a different email or the social logins. If all fails, please`
  String get resetPasswordEmailNotFoundError {
    return Intl.message(
      'We couldn’t find an account with this email address. Please try with a different email or the social logins. If all fails, please',
      name: 'resetPasswordEmailNotFoundError',
      desc: '',
      args: [],
    );
  }

  /// `After entering your reset code, you’ll be prompted to set up a new password.`
  String get resetCodeInstructions {
    return Intl.message(
      'After entering your reset code, you’ll be prompted to set up a new password.',
      name: 'resetCodeInstructions',
      desc: '',
      args: [],
    );
  }

  /// `RESET CODE`
  String get resetCode {
    return Intl.message(
      'RESET CODE',
      name: 'resetCode',
      desc: '',
      args: [],
    );
  }

  /// `No email received?`
  String get noEmailReceived {
    return Intl.message(
      'No email received?',
      name: 'noEmailReceived',
      desc: '',
      args: [],
    );
  }

  /// `Please make sure you have checked your spam and junk folders. If the email haven't arrived in 5 minutes, `
  String get noEmailInstructions {
    return Intl.message(
      'Please make sure you have checked your spam and junk folders. If the email haven\'t arrived in 5 minutes, ',
      name: 'noEmailInstructions',
      desc: '',
      args: [],
    );
  }

  /// `click here to resend`
  String get clickHereToResend {
    return Intl.message(
      'click here to resend',
      name: 'clickHereToResend',
      desc: '',
      args: [],
    );
  }

  /// `Reset code incorrect, or expired. Please try again with the latest reset code. If all fails, please `
  String get resetCodeError {
    return Intl.message(
      'Reset code incorrect, or expired. Please try again with the latest reset code. If all fails, please ',
      name: 'resetCodeError',
      desc: '',
      args: [],
    );
  }

  /// `Please set up your new password`
  String get pleaseSetUpYourNewPassword {
    return Intl.message(
      'Please set up your new password',
      name: 'pleaseSetUpYourNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `NEW PASSWORD (6 characters minimum)`
  String get newPassword6CharactersMinimum {
    return Intl.message(
      'NEW PASSWORD (6 characters minimum)',
      name: 'newPassword6CharactersMinimum',
      desc: '',
      args: [],
    );
  }

  /// `SET UP NEW PASSWORD`
  String get setUpNewPassword {
    return Intl.message(
      'SET UP NEW PASSWORD',
      name: 'setUpNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `SUPPORT`
  String get support {
    return Intl.message(
      'SUPPORT',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `If you have a customer service query, please get in touch using the below form. Please try to give as much information as possible so we can help you better. You’ll receive an answer via email in 2 business days.`
  String get contactInstructions {
    return Intl.message(
      'If you have a customer service query, please get in touch using the below form. Please try to give as much information as possible so we can help you better. You’ll receive an answer via email in 2 business days.',
      name: 'contactInstructions',
      desc: '',
      args: [],
    );
  }

  /// `YOUR MESSAGE`
  String get yourMessage {
    return Intl.message(
      'YOUR MESSAGE',
      name: 'yourMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please type your message`
  String get pleaseTypeYourMessage {
    return Intl.message(
      'Please type your message',
      name: 'pleaseTypeYourMessage',
      desc: '',
      args: [],
    );
  }

  /// `SEND MESSAGE`
  String get sendMessage {
    return Intl.message(
      'SEND MESSAGE',
      name: 'sendMessage',
      desc: '',
      args: [],
    );
  }

  /// `Your message was sent successfully`
  String get yourMessageWasSentSuccessfully {
    return Intl.message(
      'Your message was sent successfully',
      name: 'yourMessageWasSentSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for getting in touch with us. We’ll try our best to solve your issue as fast as possible. Please look out for an email in the next 2 business days.`
  String get supportSuccessInstructions {
    return Intl.message(
      'Thank you for getting in touch with us. We’ll try our best to solve your issue as fast as possible. Please look out for an email in the next 2 business days.',
      name: 'supportSuccessInstructions',
      desc: '',
      args: [],
    );
  }

  /// `Add attachment`
  String get addAttachment {
    return Intl.message(
      'Add attachment',
      name: 'addAttachment',
      desc: '',
      args: [],
    );
  }

  /// `Please select the location of the media you want to attach`
  String get pleaseSelectTheLocationOfTheMediaYouWantTo {
    return Intl.message(
      'Please select the location of the media you want to attach',
      name: 'pleaseSelectTheLocationOfTheMediaYouWantTo',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Media Library`
  String get mediaLibrary {
    return Intl.message(
      'Media Library',
      name: 'mediaLibrary',
      desc: '',
      args: [],
    );
  }

  /// `Files`
  String get files {
    return Intl.message(
      'Files',
      name: 'files',
      desc: '',
      args: [],
    );
  }

  /// `Unsplash Photos`
  String get unsplashPhotos {
    return Intl.message(
      'Unsplash Photos',
      name: 'unsplashPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Add New`
  String get addNew {
    return Intl.message(
      'Add New',
      name: 'addNew',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Add Title to create chapter, use # for automatic numbering`
  String get addTitleToCreateChapterUseForAutomaticNumbering {
    return Intl.message(
      'Add Title to create chapter, use # for automatic numbering',
      name: 'addTitleToCreateChapterUseForAutomaticNumbering',
      desc: '',
      args: [],
    );
  }

  /// `OUTLINE`
  String get outline {
    return Intl.message(
      'OUTLINE',
      name: 'outline',
      desc: '',
      args: [],
    );
  }

  /// `DRAFT`
  String get draft {
    return Intl.message(
      'DRAFT',
      name: 'draft',
      desc: '',
      args: [],
    );
  }

  /// `EDITED`
  String get edited {
    return Intl.message(
      'EDITED',
      name: 'edited',
      desc: '',
      args: [],
    );
  }

  /// `Press next, previous or add new below to continue writing, your entry will automatically be saved.`
  String get titleInstructions {
    return Intl.message(
      'Press next, previous or add new below to continue writing, your entry will automatically be saved.',
      name: 'titleInstructions',
      desc: '',
      args: [],
    );
  }

  /// `To which card(s) do you want to allocate this media item?`
  String get WhichCardInstruction {
    return Intl.message(
      'To which card(s) do you want to allocate this media item?',
      name: 'WhichCardInstruction',
      desc: '',
      args: [],
    );
  }

  /// `ALL CARDS`
  String get allCards {
    return Intl.message(
      'ALL CARDS',
      name: 'allCards',
      desc: '',
      args: [],
    );
  }

  /// `Search cards`
  String get searchCards {
    return Intl.message(
      'Search cards',
      name: 'searchCards',
      desc: '',
      args: [],
    );
  }

  /// `SELECTED`
  String get selected {
    return Intl.message(
      'SELECTED',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `SELECT`
  String get select {
    return Intl.message(
      'SELECT',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `CONTINUE`
  String get continueBtn {
    return Intl.message(
      'CONTINUE',
      name: 'continueBtn',
      desc: '',
      args: [],
    );
  }

  /// `Create New Plot`
  String get createNewPlot {
    return Intl.message(
      'Create New Plot',
      name: 'createNewPlot',
      desc: '',
      args: [],
    );
  }

  /// `AUTHOR NAME`
  String get authorName {
    return Intl.message(
      'AUTHOR NAME',
      name: 'authorName',
      desc: '',
      args: [],
    );
  }

  /// `Book Title`
  String get bookTitle {
    return Intl.message(
      'Book Title',
      name: 'bookTitle',
      desc: '',
      args: [],
    );
  }

  /// `Loading new cover image`
  String get loadingNewCoverImage {
    return Intl.message(
      'Loading new cover image',
      name: 'loadingNewCoverImage',
      desc: '',
      args: [],
    );
  }

  /// `Empty Streets`
  String get emptyStreets {
    return Intl.message(
      'Empty Streets',
      name: 'emptyStreets',
      desc: '',
      args: [],
    );
  }

  /// `Choose your Muse`
  String get chooseYourMuse {
    return Intl.message(
      'Choose your Muse',
      name: 'chooseYourMuse',
      desc: '',
      args: [],
    );
  }

  /// `Your Muse will guide you through the setup of your plot and will make sure that you reach the finish line and help you along the way.`
  String get yourMuseInstructions {
    return Intl.message(
      'Your Muse will guide you through the setup of your plot and will make sure that you reach the finish line and help you along the way.',
      name: 'yourMuseInstructions',
      desc: '',
      args: [],
    );
  }

  /// `SOCIAL REGISTER`
  String get socialRegister {
    return Intl.message(
      'SOCIAL REGISTER',
      name: 'socialRegister',
      desc: '',
      args: [],
    );
  }

  /// `FINISH REGISTRATION`
  String get finishRegistration {
    return Intl.message(
      'FINISH REGISTRATION',
      name: 'finishRegistration',
      desc: '',
      args: [],
    );
  }

  /// `NEXT STEP`
  String get nextStep {
    return Intl.message(
      'NEXT STEP',
      name: 'nextStep',
      desc: '',
      args: [],
    );
  }

  /// `Choose Genre`
  String get chooseGenre {
    return Intl.message(
      'Choose Genre',
      name: 'chooseGenre',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `What is the main genre of your plot?`
  String get chooseGenreInstructionTitle {
    return Intl.message(
      'What is the main genre of your plot?',
      name: 'chooseGenreInstructionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select one, so I can customise your experience. Click NEXT when you are done.`
  String get chooseGenreInstructionSubtitle {
    return Intl.message(
      'Please select one, so I can customise your experience. Click NEXT when you are done.',
      name: 'chooseGenreInstructionSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Plot Summary`
  String get plotSummary {
    return Intl.message(
      'Plot Summary',
      name: 'plotSummary',
      desc: '',
      args: [],
    );
  }

  /// `What’s your story about?`
  String get whatsYourStoryTitle {
    return Intl.message(
      'What’s your story about?',
      name: 'whatsYourStoryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please try to summarise what your story is about. It’s important to have the core of your story early on, so you never lose track of your North Star. Think about it like the short summary at the back of the books you have read.`
  String get whatsYourStorySubtitle {
    return Intl.message(
      'Please try to summarise what your story is about. It’s important to have the core of your story early on, so you never lose track of your North Star. Think about it like the short summary at the back of the books you have read.',
      name: 'whatsYourStorySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Please enter story summary`
  String get pleaseEnterStorySummary {
    return Intl.message(
      'Please enter story summary',
      name: 'pleaseEnterStorySummary',
      desc: '',
      args: [],
    );
  }

  /// `Send Invites`
  String get sendInvites {
    return Intl.message(
      'Send Invites',
      name: 'sendInvites',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to collaborate with someone on this story?`
  String get inviteTitle {
    return Intl.message(
      'Do you want to collaborate with someone on this story?',
      name: 'inviteTitle',
      desc: '',
      args: [],
    );
  }

  /// `You can invite Co-authors, Editors, Proofreaders who can actively edit your story, or your fans, friends or family to help you with ideas via comments.`
  String get inviteSubtitle {
    return Intl.message(
      'You can invite Co-authors, Editors, Proofreaders who can actively edit your story, or your fans, friends or family to help you with ideas via comments.',
      name: 'inviteSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `e.g. they@theiremail.com`
  String get egTheytheiremailcom {
    return Intl.message(
      'e.g. they@theiremail.com',
      name: 'egTheytheiremailcom',
      desc: '',
      args: [],
    );
  }

  /// `Edit permissions`
  String get editPermissions {
    return Intl.message(
      'Edit permissions',
      name: 'editPermissions',
      desc: '',
      args: [],
    );
  }

  /// `ADD MORE`
  String get addMore {
    return Intl.message(
      'ADD MORE',
      name: 'addMore',
      desc: '',
      args: [],
    );
  }

  /// `Read only`
  String get readOnly {
    return Intl.message(
      'Read only',
      name: 'readOnly',
      desc: '',
      args: [],
    );
  }

  /// `Can Comment`
  String get canComment {
    return Intl.message(
      'Can Comment',
      name: 'canComment',
      desc: '',
      args: [],
    );
  }

  /// `Can create entries`
  String get canCreateEntries {
    return Intl.message(
      'Can create entries',
      name: 'canCreateEntries',
      desc: '',
      args: [],
    );
  }

  /// `Can edit entries`
  String get canEditEntries {
    return Intl.message(
      'Can edit entries',
      name: 'canEditEntries',
      desc: '',
      args: [],
    );
  }

  /// `Can delete entries`
  String get canDeleteEntries {
    return Intl.message(
      'Can delete entries',
      name: 'canDeleteEntries',
      desc: '',
      args: [],
    );
  }

  /// `Collaborator Permissions`
  String get collaboratorPermissions {
    return Intl.message(
      'Collaborator Permissions',
      name: 'collaboratorPermissions',
      desc: '',
      args: [],
    );
  }

  /// `SAVE SELECTION`
  String get saveSelection {
    return Intl.message(
      'SAVE SELECTION',
      name: 'saveSelection',
      desc: '',
      args: [],
    );
  }

  /// `What An Amazing Cover!`
  String get whatAnAmazingCover {
    return Intl.message(
      'What An Amazing Cover!',
      name: 'whatAnAmazingCover',
      desc: '',
      args: [],
    );
  }

  /// `Share it with your friends, so they’ll know`
  String get shareItWithYourFriendsSoTheyllKnow {
    return Intl.message(
      'Share it with your friends, so they’ll know',
      name: 'shareItWithYourFriendsSoTheyllKnow',
      desc: '',
      args: [],
    );
  }

  /// `what you are working on.`
  String get whatYouAreWorkingOn {
    return Intl.message(
      'what you are working on.',
      name: 'whatYouAreWorkingOn',
      desc: '',
      args: [],
    );
  }

  /// `SHARE`
  String get share {
    return Intl.message(
      'SHARE',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `TWEET`
  String get tweet {
    return Intl.message(
      'TWEET',
      name: 'tweet',
      desc: '',
      args: [],
    );
  }

  /// `Save image to Camera Roll`
  String get saveImageToCameraRoll {
    return Intl.message(
      'Save image to Camera Roll',
      name: 'saveImageToCameraRoll',
      desc: '',
      args: [],
    );
  }

  /// `Your Muse`
  String get yourMuse {
    return Intl.message(
      'Your Muse',
      name: 'yourMuse',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get summary {
    return Intl.message(
      'Summary',
      name: 'summary',
      desc: '',
      args: [],
    );
  }

  /// `A novel by`
  String get aNovelBy {
    return Intl.message(
      'A novel by',
      name: 'aNovelBy',
      desc: '',
      args: [],
    );
  }

  /// `With special thanks to`
  String get withSpecialThanksTo {
    return Intl.message(
      'With special thanks to',
      name: 'withSpecialThanksTo',
      desc: '',
      args: [],
    );
  }

  /// `Choose SubGenre`
  String get chooseSubgenre {
    return Intl.message(
      'Choose SubGenre',
      name: 'chooseSubgenre',
      desc: '',
      args: [],
    );
  }

  /// `What is the subgenre of your novel?`
  String get SubgenreInstructionTitle {
    return Intl.message(
      'What is the subgenre of your novel?',
      name: 'SubgenreInstructionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select one, so I can show you genre relevant tips. Click NEXT when you are done.`
  String get SubgenreInstructionSubtitle {
    return Intl.message(
      'Please select one, so I can show you genre relevant tips. Click NEXT when you are done.',
      name: 'SubgenreInstructionSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Start With An Outline`
  String get sliderPage1Title {
    return Intl.message(
      'Start With An Outline',
      name: 'sliderPage1Title',
      desc: '',
      args: [],
    );
  }

  /// `Outline briefly what each chapter will be about. Then dig deep and add bulletpoint level detail to each chapter, `
  String get sliderPage1Subtitle {
    return Intl.message(
      'Outline briefly what each chapter will be about. Then dig deep and add bulletpoint level detail to each chapter, ',
      name: 'sliderPage1Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Keep It in Order`
  String get sliderPage2Title {
    return Intl.message(
      'Keep It in Order',
      name: 'sliderPage2Title',
      desc: '',
      args: [],
    );
  }

  /// `Tap to create, or drag the orange button to a specific spot to add your your entry or chapter there. `
  String get sliderPage2Subtitle {
    return Intl.message(
      'Tap to create, or drag the orange button to a specific spot to add your your entry or chapter there. ',
      name: 'sliderPage2Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Retain Every Version`
  String get sliderPage3Title {
    return Intl.message(
      'Retain Every Version',
      name: 'sliderPage3Title',
      desc: '',
      args: [],
    );
  }

  /// `Each chapter and entry has multiple states. The default 3 are Outline, Draft and Edited, but you can add up to 20 states to each entry.`
  String get sliderPage3Subtitle {
    return Intl.message(
      'Each chapter and entry has multiple states. The default 3 are Outline, Draft and Edited, but you can add up to 20 states to each entry.',
      name: 'sliderPage3Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Use Tags`
  String get sliderPage4Title {
    return Intl.message(
      'Use Tags',
      name: 'sliderPage4Title',
      desc: '',
      args: [],
    );
  }

  /// `Use @ and # in your entries to create cards and collect your research and allocate attached media,`
  String get sliderPage4Subtitle {
    return Intl.message(
      'Use @ and # in your entries to create cards and collect your research and allocate attached media,',
      name: 'sliderPage4Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Your Plots`
  String get yourPlots {
    return Intl.message(
      'Your Plots',
      name: 'yourPlots',
      desc: '',
      args: [],
    );
  }

  /// `Writing Prompts`
  String get writingPrompts {
    return Intl.message(
      'Writing Prompts',
      name: 'writingPrompts',
      desc: '',
      args: [],
    );
  }

  /// `Invites`
  String get invites {
    return Intl.message(
      'Invites',
      name: 'invites',
      desc: '',
      args: [],
    );
  }

  /// `START WRITING`
  String get startWriting {
    return Intl.message(
      'START WRITING',
      name: 'startWriting',
      desc: '',
      args: [],
    );
  }

  /// `NEXT TIP`
  String get nextTip {
    return Intl.message(
      'NEXT TIP',
      name: 'nextTip',
      desc: '',
      args: [],
    );
  }

  /// `LOG IN`
  String get logInBtn {
    return Intl.message(
      'LOG IN',
      name: 'logInBtn',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}