import 'dart:io' show Platform;
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'lottovar.dart';

InterstitialAd? interstitialAd;   //에드몹 전면광고 테스트 시작
//const String testDevice = '6AAFF8BB93D774D1872C6BEAA63C4321';

RewardedAd? rewardedAd;
int numRewardedLoadAttempts = 0;
const int maxFailedLoadAttempts = 5;

RewardedInterstitialAd? rewardedInterstitialAd;
int numRewardedInterstitialLoadAttempts = 0;


void createInterstitialAd() {
  InterstitialAd.load(
    //adUnitId: InterstitialAd.testAdUnitId,
      adUnitId: 'ca-app-pub-3940256099942544/1033173712',
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          // print('$ad loaded');
          interstitialAd = ad;

        },
        onAdFailedToLoad: (LoadAdError error) {
          // print('InterstitialAd failed to load: $error.');

          interstitialAd = null;

        },
      ));
}

void showInterstitialAd() {
  if (interstitialAd == null) {
    print('Warning: attempt to show interstitial before loaded.');
    return;
  }
  interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
    onAdShowedFullScreenContent: (InterstitialAd ad) =>
        print('ad onAdShowedFullScreenContent.'),
    onAdDismissedFullScreenContent: (InterstitialAd ad) {
      print('$ad onAdDismissedFullScreenContent.');
      ad.dispose();
      createInterstitialAd();
    },
    onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
      print('$ad onAdFailedToShowFullScreenContent: $error');
      ad.dispose();
      createInterstitialAd();
    },
  );
  interstitialAd!.show();
  interstitialAd = null;
}                          //에드몹 전면광고 테스트 종료


// //리워드 광고 시작
//
void createRewardedAd() {
  RewardedAd.load(
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/5224354917'
          : 'ca-app-pub-3940256099942544/1712485313',
      request: AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (RewardedAd ad) {
          print('$ad loaded.');
          rewardedAd = ad;
          numRewardedLoadAttempts = 0;
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('RewardedAd failed to load: $error');
          rewardedAd = null;
          numRewardedLoadAttempts += 1;
          if (numRewardedLoadAttempts < maxFailedLoadAttempts) {
            createRewardedAd();
          }
        },
      ));
}

void showRewardedAd() {
  if (rewardedAd == null) {
    print('Warning: attempt to show rewarded before loaded.');
    return;
  }
  rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
    onAdShowedFullScreenContent: (RewardedAd ad) =>
        print('ad onAdShowedFullScreenContent.'),
    onAdDismissedFullScreenContent: (RewardedAd ad) {
      print('$ad onAdDismissedFullScreenContent.');
      ad.dispose();
      createRewardedAd();
    },
    onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
      print('$ad onAdFailedToShowFullScreenContent: $error');
      ad.dispose();
      createRewardedAd();
    },
  );

  rewardedAd!.setImmersiveMode(true);
  rewardedAd!.show(
      onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
        print('$ad with reward $RewardItem(${reward.amount}, ${reward.type})');
        heartCount=6;
        heart_count();
      });
  rewardedAd = null;
}
//
// //리워드 광고 종료