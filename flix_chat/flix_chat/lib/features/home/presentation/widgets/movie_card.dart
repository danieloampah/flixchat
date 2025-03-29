import 'package:flix_chat/core/extensions/index.dart';
import 'package:flutter/widgets.dart';

class MovieCard extends StatelessWidget {
  final bool isTrending;
  const MovieCard({super.key, this.isTrending = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width(0.02)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: context.height(0.34),
            width: context.width(isTrending ? 0.6 : 0.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(context.height(0.03)),
                image: const DecorationImage(
                  image: AssetImage('assets/images/artoflove.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                )),
          ),
          const Text('Avatar')
        ],
      ),
    );
  }
}
