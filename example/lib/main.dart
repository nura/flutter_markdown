import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

const String _markdownData = """## Blockquote

You can add a blockqoute:

> This is a blockquote

## Markdown Example
Markdown allows you to easily include formatted text, images, and even formatted Dart code in your app.

## Styling
Style text as _italic_, __bold__, or `inline code`.

- Use bulleted lists
- To better clarify
- Your points

## Links
You can use [hyperlinks](hyperlink) in markdown

## Images

You can include images:

![Flutter logo](https://flutter.dev/assets/404/dash_nest-c64796b59b65042a2b40fae5764c13b7477a592db79eaf04c86298dcb75b78ea.png)

## Markdown widget

This is an example of how to create your own Markdown widget:

    new Markdown(data: 'Hello _world_!');

## Code blocks
Formatted Dart code looks really pretty too:

```
void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      body: new Markdown(data: markdownData)
    )
  ));
}
```

Enjoy!
""";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Markdown Demo",
        home: new Scaffold(
          appBar: new AppBar(title: const Text('Markdown Demo')),
          body: Markdown(
            data: _markdownData,
            styleSheet:
                MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
              textAlign: WrapAlignment.center,
              h1Align: WrapAlignment.center,
              h2Align: WrapAlignment.center,
              h3Align: WrapAlignment.center,
              h4Align: WrapAlignment.center,
              h5Align: WrapAlignment.center,
              h6Align: WrapAlignment.center,
              unorderedListAlign: WrapAlignment.center,
              orderedListAlign: WrapAlignment.center,
              blockquoteAlign: WrapAlignment.center,
//              codeblockAlign: WrapAlignment.center,
            ),
          ),
        ));
  }
}
