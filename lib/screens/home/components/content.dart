import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  Future<Map<String, dynamic>> _fetchContentData() async {
    try {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('content')
          .doc('bwbAWwiUaOfakP3U6mFn')
          .get();

      return snapshot.data() as Map<String, dynamic>;
    } catch (e) {
      print('Error fetching content data: $e');
      return {};
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _fetchContentData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No data available'));
        } else {
          final data = snapshot.data!;
          final imageUrl = data['image'];
          final title = data['title'];
          final description = data['content'];

          return Card(
            margin: const EdgeInsets.all(15),
            color: Colors.white,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
