import 'package:flutter/material.dart';

import 'package:compedia/config/themes/resources/app_color.dart';

class TabWidgetBuilder extends StatefulWidget {
  final List<String> tabName;
  final List<Widget> tabWidget;
  final int? lenTab;
  const TabWidgetBuilder({
    super.key,
    required this.tabName,
    required this.tabWidget,
    this.lenTab,
  });

  @override
  State<TabWidgetBuilder> createState() => _TabWidgetBuilderState();
}

class _TabWidgetBuilderState extends State<TabWidgetBuilder>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.lenTab ?? 2, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();

    super.dispose();
  }

  void _handleTabChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints.expand(height: 50),
          child: TabBar(
            controller: _tabController,
            tabs: widget.tabName
                .map(
                  (item) => Tab(child: Text(item)),
                )
                .toList(),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: AppColor.primaryColor,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.tabWidget,
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
