import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  List<dynamic> _data = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    setState(() {
      _isLoading = true; // Show CircularProgressIndicator
    });
    try {
      final res = await http.get(Uri.parse("https://euromedapi.softclub.tj/api/subscriptions"));
      if (res.statusCode == 200) {
        setState(() {
          _data = json.decode(res.body);
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      // Handle error gracefully, e.g., show Snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to load data: $error'),
        ),
      );
    } finally {
      setState(() {
        _isLoading = false; // Hide CircularProgressIndicator
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 20.0),
          child: Text(
            "Подписки",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 13.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Выберите подходящую подписку",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
            Expanded(
              child: _isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : _data.isEmpty
                      ? Center(
                          child: Text('No data available'),
                        )
                      : ListView.builder(
                          itemCount: _data.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(_data[index]['subscriptionName'] ?? ''),
                              // Adjust the above line to match your data structure
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}