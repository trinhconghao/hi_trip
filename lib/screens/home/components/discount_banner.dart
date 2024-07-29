import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DiscountBanner extends StatefulWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  State<DiscountBanner> createState() => _DiscountBannerState();
}

class _DiscountBannerState extends State<DiscountBanner> {
  String imageUrl = '';

  @override
  void initState() {
    super.initState();
    _fetchImageUrl();
  }

  Future<void> _fetchImageUrl() async {
    try {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('image')
          .doc('r6SxEHv12ZmLeG9KLzGT')
          .get();

      setState(() {
        imageUrl = snapshot['banner'];
      });
    } catch (e) {
      print('Error fetching image URL: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
          // Banner Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: imageUrl.isNotEmpty
                ? Image.network(imageUrl)
                : Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }
}
