import 'package:compedia/config/gen/image_resources.dart';
import 'package:get/get.dart';

class OnBoardingModel {
  String title;
  String image;
  String content;
  OnBoardingModel({
    required this.title,
    required this.image,
    required this.content,
  });
}

List<OnBoardingModel> onboardingConstan = [
  OnBoardingModel(
    title: 'txt_title1'.tr,
    image: appImages.onboarding1.path,
    content: 'txt_contents1'.tr,
  ),
  OnBoardingModel(
    title: 'txt_title3'.tr,
    image: appImages.onboarding3.path,
    content: 'txt_contents3'.tr,
  ),
  OnBoardingModel(
    title: 'txt_title4'.tr,
    image: appImages.onboarding4.path,
    content: 'txt_contents4'.tr,
  ),
];

List<OnBoardingModel> mOnBoardingConstans = [
  OnBoardingModel(
    title: "Selamat Datang Calon Mentor Lomba!",
    image: appImages.imgMonboarding1.path,
    content:
        "Kami sangat mengapresiasi dukungan yang kamu berikan untuk mewujudkan equality education di lingkungan universitas di Indonesia!",
  ),
  OnBoardingModel(
    title: "Lengkapi Data untuk Proses Verifikasi Tim Compedia",
    image: appImages.imgMonboarding2.path,
    content:
        "Verifikasi data dilakukan untuk memastikan bahwa calon mentor compedia adalah pengguna asli bukan bot dengan data dummy!",
  ),
];
