import 'package:expansion_tile_example/ui/widgets/custom_expansion_tile.dart'
    as cet;
import 'package:expansion_tile_example/ui/widgets/custom_list_tile_item.dart';
import 'package:expansion_tile_example/utils/colors_palette.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String title;

  Home({this.title});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return _buildScaffold();
  }

  /// Creates a Scaffold with body content.
  Widget _buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        /// If [title] doens't has value, then set a default message.
        title: Text(widget.title == null ? 'Home' : widget.title),
      ),
      backgroundColor: ColorsPalette.backgroundColorLight,
      body: SingleChildScrollView(
        child: Container(
          color: ColorsPalette.expansionParentHeaderColor,
          child: Column(
            children: _listOccurrencesWidgets(),
          ),
        ),
      ),
    );
  }

  /// List of Occurrences (Widget)
  List<Widget> _listOccurrencesWidgets() {
    List<Widget> list = new List();

    list.add(cet.ExpansionTile(
      title: Text(
        'Thursday, July 1',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      headerBackgroundColor: ColorsPalette.expansionParentHeaderColor,
      backgroundColor: ColorsPalette.expansionParentHeaderColor,
      iconColor: Colors.white,
      children: _listEventsWidgets(),
    ));

    list.add(cet.ExpansionTile(
      title: Text(
        'Friday, July 2',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      headerBackgroundColor: ColorsPalette.expansionParentHeaderColor,
      backgroundColor: ColorsPalette.expansionParentHeaderColor,
      iconColor: Colors.white,
      children: _listEventsWidgets(),
    ));

    list.add(cet.ExpansionTile(
      title: Text(
        'Saturday, July 3',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      headerBackgroundColor: ColorsPalette.expansionParentHeaderColor,
      backgroundColor: ColorsPalette.expansionParentHeaderColor,
      iconColor: Colors.white,
      children: _listEventsWidgets(),
    ));

    return list;
  }

  /// List of Events (Widget)
  List<Widget> _listEventsWidgets() {
    List<Widget> list = new List();

    list.add(ListTileItem(
      colorHeader: ColorsPalette.expansionChildHeaderColor,
      eventName: 'First Event',
      eventTime: '7:00',
    ));

    list.add(ListTileItem(
      colorHeader: ColorsPalette.expansionChildHeaderColor,
      eventName: 'Second Event',
      eventTime: '9:00',
    ));

    list.add(ListTileItem(
      colorHeader: ColorsPalette.expansionChildHeaderColor,
      eventName: 'Third Event',
      eventTime: '11:00',
      divider: false,
    ));

    return list;
  }
}
