import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_test_e_m/presentation/theme/default_colors.dart';
import 'package:hotel_test_e_m/presentation/widgets/hotel_button.dart';
import 'package:hotel_test_e_m/presentation/widgets/image_carousel.dart';

class HotelInfoPage extends StatefulWidget {
  const HotelInfoPage({Key? key}) : super(key: key);

  @override
  State<HotelInfoPage> createState() => _HotelInfoPageState();
}

class _HotelInfoPageState extends State<HotelInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Отель'),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: _buildHotelCard(),
                ),
                const SliverPadding(padding: EdgeInsets.only(top: 8.0)),
                SliverToBoxAdapter(
                  child: _buildHotelInfoCard(),
                ),
                const SliverPadding(padding: EdgeInsets.only(top: 88.0)),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.0),
                child: FilledButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
                      backgroundColor: MaterialStateProperty.all<Color>(DefaultColors.blue),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 48.0))),
                  onPressed: () {},
                  child: const Text(
                    'К выбору номера',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      height: 17.6 / 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHotelCard() => Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImageCarousel(
              imageUrls: [
                "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
                "https://media.admagazine.ru/photos/61408b2f4311246f36873963/16:9/w_1280,c_limit/w2000%20-%202020-07-14T164056.159.jpg",
                "https://travelata.ru/blog/wp-content/uploads/2019/06/Starlight-Convention-Center-Thalasso-Spa.jpg",
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHorating(),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Steigenberger Makadi',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22.0,
                      height: 26.4 / 22,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              // style: TextButton.styleFrom(
              //   padding: EdgeInsets.zero,
              // ),
              child: const Text(
                'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                style: TextStyle(
                  color: DefaultColors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  height: 16.8 / 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'от 134 673 ₽',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          height: 36 / 30,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'за тур с перелётом',
                        style: TextStyle(
                          color: DefaultColors.textGrey,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          height: 19.2 / 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildHorating() => Container(
        color: DefaultColors.backgroundOrange,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: DefaultColors.textOrange,
              size: 18.0,
            ),
            SizedBox(width: 2.0),
            Text(
              '5 Превосходно',
              style: TextStyle(
                color: DefaultColors.textOrange,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                height: 19.2 / 16,
              ),
            ),
          ],
        ),
      );

  Widget _buildHotelInfoCard() => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Об отеле',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22.0,
                height: 26.4 / 22,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Container(
                  color: DefaultColors.backgroundGrey,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: const Text(
                    '3-я линия',
                    style: TextStyle(
                      color: DefaultColors.textGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      height: 19.2 / 16,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  color: DefaultColors.backgroundGrey,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: const Text(
                    'Платный Wi-Fi в фойе',
                    style: TextStyle(
                      color: DefaultColors.textGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      height: 19.2 / 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Container(
                  color: DefaultColors.backgroundGrey,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: const Text(
                    '30км до аэропорта',
                    style: TextStyle(
                      color: DefaultColors.textGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      height: 19.2 / 16,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  color: DefaultColors.backgroundGrey,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: const Text(
                    '1км до пляжа',
                    style: TextStyle(
                      color: DefaultColors.textGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      height: 19.2 / 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                height: 19.2 / 16,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Column(children: [
                HotelButton(
                  leading: SvgPicture.asset('assets/svg/emoji_happy.svg'),
                  title: 'Удобства',
                ),
                HotelButton(
                  leading: SvgPicture.asset('assets/svg/tick_square.svg'),
                  title: 'Что включено',
                ),
                HotelButton(
                  leading: SvgPicture.asset('assets/svg/close_square.svg'),
                  title: 'Что не включено',
                  isDevided: false,
                ),
              ]),
            ),
          ],
        ),
      );
}
