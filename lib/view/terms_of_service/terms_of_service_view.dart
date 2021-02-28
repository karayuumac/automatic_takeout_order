import 'package:automatic_takeout_order/components/buttons/custom_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

final clickBoxStateProvider = StateProvider((_) => false);

class TermsOfServiceView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final provider = useProvider(clickBoxStateProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '利用規約',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: const Text(
                    '利用規約',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: const Text('アプリを利用するためには利用規約をお読みの上、'
                      '同意していただく必要があります。'),
                ),
                TextButton(
                  child: const Text('利用規約を読む'),
                  onPressed: () async {
                    const url = 'https://hackmd.io/@karayuu/SJVJfwwf_';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print('Could not Launch $url');
                    }
                  },
                ),
                const Divider(),
                CheckboxListTile(
                  title: const Text('利用規約に同意する'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: provider.state,
                  onChanged: (isChecked) {
                    provider.state = isChecked;
                  },
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomCircleButton(
                child: const Text(
                  '次へ',
                  style: TextStyle(color: Colors.white),
                ),
                disabled: !provider.state,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
