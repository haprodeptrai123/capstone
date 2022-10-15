import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:any_wash/Components/bottom_bar.dart';
import 'package:any_wash/Locale/locales.dart';
import 'package:any_wash/Routes/routes.dart';
import 'package:any_wash/Theme/colors.dart';
import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> listDrop = [];
int? selected;
int? selected1;

void loadData() {
  listDrop = [];
  listDrop.add(DropdownMenuItem(
    child: Text('Wash only'),
    value: 'A',
  ));
  listDrop.add(DropdownMenuItem(
    child: Text('Wash & Iron'),
    value: 'B',
  ));
  listDrop.add(DropdownMenuItem(
    child: Text('Dry Clean'),
    value: 'C',
  ));
}

class ViewCart extends StatefulWidget {
  @override
  _ViewCartState createState() => _ViewCartState();
}

class _ViewCartState extends State<ViewCart> {
  int _itemCount = 0;
  int _itemCount1 = 0;
  int _itemCount2 = 0;

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.confirm!,
            style: Theme.of(context).textTheme.headline4),
      ),
      body: FadedSlideAnimation(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Theme.of(context).cardColor,
              child: Text(
                  AppLocalizations.of(context)!.quickWasher!.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Color(0xff616161), letterSpacing: 0.67)),
            ),
            cartOrderItemListTile(
                context,
                AppLocalizations.of(context)!.shirts!,
                '3.00',
                _itemCount,
                () => setState(() => _itemCount--),
                () => setState(() => _itemCount++)),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 1.0,
            ),
            cartOrderItemListTile(
                context,
                AppLocalizations.of(context)!.shirts!,
                '4.50',
                _itemCount1,
                () => setState(() => _itemCount1--),
                () => setState(() => _itemCount1++)),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 1.0,
            ),
            cartOrderItemListTile(
                context,
                AppLocalizations.of(context)!.jackets!,
                '2.50',
                _itemCount2,
                () => setState(() => _itemCount2--),
                () => setState(() => _itemCount2++)),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 6.7,
            ),
            Container(
              height: 53.3,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/Icons/ic_instruction.png',
                    color: kDisabledColor,
                    height: 16.0,
                    width: 16.7,
                  ),
                  SizedBox(
                    width: 17.3,
                  ),
                  Expanded(
                    child: Text(AppLocalizations.of(context)!.anyInstruction!,
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 11.7, color: Color(0xffb2b2b2))),
                  )
                ],
              ),
            ),
            Container(
              height: 100.0,
              color: Theme.of(context).cardColor,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: Text(
                  AppLocalizations.of(context)!.paymentInfo!.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: kDisabledColor)),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context)!.sub!,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      '\$ 15.50',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ]),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 1.0,
            ),
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context)!.service!,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      '\$ 1.50',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ]),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 1.0,
            ),
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context)!.amount!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$ 17.00',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 10.0,
            ),
            BottomBar(
              text: " " + AppLocalizations.of(context)!.continueText!,
              onTap: () =>
                  Navigator.pushNamed(context, PageRoutes.paymentMethod),
            ),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  Column cartOrderItemListTile(
    BuildContext context,
    String title,
    String price,
    int itemCount,
    Function onPressedMinus,
    Function onPressedPlus,
  ) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Theme.of(context).secondaryHeaderColor),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 30.0,
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            size: 16.7,
                          ),
                          iconEnabledColor: Colors.green,
                          value: selected,
                          items: listDrop,
                          hint: Text(
                            AppLocalizations.of(context)!.washOnly!,
                            style: Theme.of(context).textTheme.caption,
                          ),
                          onChanged: (dynamic value) {
                            setState(() {
                              selected = value;
                            });
                          }),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    height: 30.0,
                    //width: 76.7,
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: Color(0xffE6F6FF),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          onTap: (itemCount > 0)
                              ? onPressedMinus as void Function()?
                              : null,
                          child: Icon(
                            Icons.remove,
                            color: kMainColor,
                            size: 20.0,
                            //size: 23.3,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text(itemCount.toString(),
                            style: Theme.of(context).textTheme.caption),
                        SizedBox(width: 8.0),
                        InkWell(
                          onTap: onPressedPlus as void Function()?,
                          child: Icon(
                            Icons.add,
                            color: kMainColor,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$ $price',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
