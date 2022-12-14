import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:any_wash/HomeOrderAccount/Home/UI/order_placed_map.dart';
import 'package:any_wash/Locale/locales.dart';
import 'package:any_wash/Routes/routes.dart';
import 'package:any_wash/Theme/colors.dart';
import 'package:any_wash/Theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.orderText!,
            style: Theme.of(context).textTheme.headline4),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderMapPage(
              pageTitle: AppLocalizations.of(context)!.vegetable,
            ),
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: 51.0,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              color: Theme.of(context).cardColor,
              child: Text(
                AppLocalizations.of(context)!.process!,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Color(0xff99a596),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.67),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: FadedScaleAnimation(
                      child:Image.asset(
                        'assets/Stores/1.png',
                        scale: 5,
                      ),
                      //durationInMilliseconds: 400,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      locale.quickWasher!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '20 June, 11:35am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          AppLocalizations.of(context)!.pickup!,
                          style: orderMapAppBarTextStyle.copyWith(
                              color: kMainColor, letterSpacing: 0),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '\$ 11.50 | ${AppLocalizations.of(context)!.paypal}',
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Spacer(
                  flex: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.tshirts! + '  x1',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.shirts! + '  x2',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.jackets! + '  x3',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.washOnly!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.washAndIron!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.dryClean!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Spacer(
                  flex: 3,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: FadedScaleAnimation(
                      child: Image.asset(
                        'assets/Stores/1.png',
                        scale: 5,
                      ),
                      //durationInMilliseconds: 400,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      locale.laundryPoint!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '20 June, 11:35am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          locale.outForDelivery!,
                          style: orderMapAppBarTextStyle.copyWith(
                              color: kMainColor, letterSpacing: 0),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '\$ 11.50 | ${'COD'}',
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 11.7, color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Spacer(
                  flex: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.tshirts! + '  x1',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.shirts! + '  x2',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.jackets! + '  x1',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.washOnly!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.washAndIron!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.dryClean!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Spacer(
                  flex: 3,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 51.0,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              color: Theme.of(context).cardColor,
              child: Text(
                locale.pastProcess!.toUpperCase(),
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Color(0xff99a596),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.67),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: FadedScaleAnimation(
                      child: Image.asset(
                        'assets/Stores/3.png',
                        scale: 5,
                      ),
                      //durationInMilliseconds: 400,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      locale.quickWasher!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '20 June, 11:35am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          AppLocalizations.of(context)!.deliv!,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '\$ 11.50 | ${'COD'}',
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.tshirts! + '  x1',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.shirts! + '  x2',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.jackets! + '  x1',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.washOnly!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.washAndIron!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.dryClean!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PageRoutes.rate);
                  },
                  child: Text(
                    locale.rateNow!,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.lightGreen),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: FadedScaleAnimation(
                      child:Image.asset(
                        'assets/Stores/4.png',
                        scale: 5,
                      ),
                      //durationInMilliseconds: 400,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      locale.laundryPoint!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '20 June, 11:35am',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 11.7, color: Color(0xffc1c1c1)),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          AppLocalizations.of(context)!.deliv!,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '\$ 11.50 | ${AppLocalizations.of(context)!.credit}',
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              color: Color(0xffc1c1c1)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.tshirts! + '  x1',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.shirts! + '  x2',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.jackets! + '  x1',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locale.washOnly!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.washAndIron!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locale.dryClean!,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 12, color: kIconColor),
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                Row(
                  children: [
                    Text(
                      'Rated 5 ',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          fontWeight: FontWeight.w500, color: kMainTextColor),
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
