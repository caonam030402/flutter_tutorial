import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/photo1.jpg',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                '$user',
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/photo2.jpg'),
          SizedBox(
            height: 12,
          ),
          Text(
            'Hãy theo dõi chúng tôi để biết thêm cảm hứng về Thiết kế UI/UX, và kiểm tra liên kết trong tiểu sử để xem tài nguyên UI/UX tối ưu.',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
