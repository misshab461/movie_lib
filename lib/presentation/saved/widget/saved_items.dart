import 'package:flutter/material.dart';
import 'package:movie_lib/core/constance.dart';

class SavedItems extends StatelessWidget {
  const SavedItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 170,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.2),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: NetworkImage(
                'https://rukminim2.flixcart.com/image/850/1000/l0e6kcw0/poster/f/8/q/medium-the-dark-knight-rises-batman-on-good-quality-hd-quality-original-imagc6xwnzfbwday.jpeg?q=20&crop=false',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        kWidth,
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Dart knight rises',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  kWidth,
                  Text('(2012)', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              kWidth,
              Text('⭐ 9.4'),
              kHeight,
              Text(
                'With the help of allies Lt. Jim Gordon (Gary Oldman) and DA Harvey Dent (Aaron Eckhart), Batman (Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.',
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 7,
              ),
            ],
          ),
        )
      ],
    );
  }
}
