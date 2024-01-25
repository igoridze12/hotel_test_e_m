import 'package:flutter/material.dart';
import 'package:hotel_test_e_m/presentation/theme/default_colors.dart';

class HotelButton extends StatelessWidget {
  const HotelButton({
    Key? key,
    this.leading,
    this.title,
    this.isDevided,
  }) : super(key: key);

  final Widget? leading;
  final String? title;
  final bool? isDevided;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: DefaultColors.backgroundGrey,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      onPressed: () {},
      padding: EdgeInsets.only(
        left: 15.0,
        // top: (isDevided ?? true) ? 0 : 8.0,
        bottom: (isDevided ?? true) ? 0 : 8.0,
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leading ?? const SizedBox(),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        title ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          height: 19.2 / 16,
                        ),
                      ),
                      const Text(
                        'Самое необходимое',
                        style: TextStyle(
                          color: DefaultColors.textGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          height: 19.2 / 16,
                        ),
                      ),
                      // const SizedBox(height: 8.0)
                    ],
                  )
                ],
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Color(0xFF2C3035),
                ),
              ),
            ],
          ),
          if (isDevided ?? true)
            Positioned(
              bottom: 1,
              left: 0,
              right: 0,
              child: Container(
                color: const Color.fromRGBO(130, 135, 150, 0.15),
                height: 1.0,
                margin: const EdgeInsets.only(left: 40, right: 16),
              ),
            ),
        ],
      ),
    );
  }
}
