import 'package:flutter/material.dart';
import 'package:selectable_box/selectable_box.dart';
//  selectable_box: ^1.0.8

class CustomSelectImage extends StatefulWidget {
  const CustomSelectImage({super.key});

  @override
  State<CustomSelectImage> createState() => CustomSelectImageState();
}

class CustomSelectImageState extends State<CustomSelectImage> {
  bool isSelected_1 = false;
  bool isSelected_2 = false;
  bool isSelected_3 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.9),
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'Selectable Box',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SelectableBox(
                  height: 250,
                  width: double.infinity,
                  onTap: () {
                    setState(() {
                      isSelected_1 = !isSelected_1;
                    });
                  },
                  isSelected: isSelected_1,
                  child: const Image(
                    image: NetworkImage(
                        'https://img.freepik.com/premium-photo/mountains-during-flowers-blossom-sunrise-flowers-mountain-hills-beautiful-natural-landscape-summer-time-mountainimage_647656-1502.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SelectableBox(
                  height: 250,
                  width: 400,
                  onTap: () {
                    setState(() {
                      isSelected_2 = !isSelected_2;
                    });
                  },
                  isSelected: isSelected_2,
                  child: const Image(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/1280px-24701-nature-natural-beauty.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SelectableBox(
                  height: 250,
                  width: 400,
                  onTap: () {
                    setState(() {
                      isSelected_3 = !isSelected_3;
                    });
                  },
                  isSelected: isSelected_3,
                  child: const Image(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/3/36/Hopetoun_falls.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
