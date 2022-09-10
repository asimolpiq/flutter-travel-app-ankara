import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:searchfield/searchfield.dart';

import 'package:travel_app_ankara_flutter/product/product_colors.dart';

import '../product/home_components/countrys.dart';
import '../product/home_components/materials.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _customAppbar(context),
      body: Column(children: [
        _productDividerMin(),
        _headTextFirst(context),
        _headTextSecond(context),
        _productDividerMin(),
        _SearchBox(),
        _Categories(context),
        _productDividerMin(),
        Expanded(
          child: GridView.count(
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: <Widget>[
              _cards(context),
              _cards(context),
              _cards(context),
              _cards(context),
              _cards(context),
              _cards(context),
            ],
          ),
        ),
      ]),
    );
  }

  Card _cards(BuildContext context) {
    return Card(
      color: ProductColors.secondary,
      child: Center(
        child: ListTile(
          leading: Image.network(
            "https://picsum.photos/200/300",
            width: 40,
            fit: BoxFit.fill,
          ),
          title: Text(
            "Museum",
            style: Theme.of(context).textTheme.headline5,
          ),
          subtitle: Text(
            "View a Museum",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }

  Row _Categories(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Categories",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProductColors.primary, decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }

  Padding _SearchBox() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SearchField(
        suggestions: Countrys().countryList,
        searchInputDecoration: ProjectMaterials().searchDecoration(searchController),
        controller: searchController,
        onTap: (value) {},
      ),
    );
  }

  Divider _productDividerMin() {
    return const Divider(
      thickness: 3,
      color: Colors.transparent,
    );
  }

  Row _headTextSecond(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Where are you heading to?",
            style: Theme.of(context).textTheme.headline5?.copyWith(color: ProductColors.primary),
          ),
        ),
      ],
    );
  }

  Row _headTextFirst(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Hi, Anonymous",
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: ProductColors.primary, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  AppBar _customAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text("Travel Book",
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: ProductColors.secondary, fontWeight: FontWeight.w600)),
      bottom: PreferredSize(
          child: Container(
            color: Colors.lightBlue[200],
            height: 4.0,
          ),
          preferredSize: Size.fromHeight(4.0)),
    );
  }
}
