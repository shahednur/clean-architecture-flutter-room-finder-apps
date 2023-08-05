import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:roomdeal/components/RFCommonAppComponent.dart';
import 'package:roomdeal/utils/RFString.dart';

class RfSigninScreen extends StatefulWidget {
  const RfSigninScreen({Key? key}) : super(key: key);

  @override
  _RfSigninScreenState createState() => _RfSigninScreenState();
}

class _RfSigninScreenState extends State<RfSigninScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RFCommonAppComponent(
          title: RFAppName,
          subTitle: RFAppSubTitle,
          cardWidget: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Mobile Number', style: boldTextStyle(size: 18)),
              16.height,
              Text('Please enter your phone number, We will send you 4-digit code to verify your account',
                      style: primaryTextStyle(),
                      maxLines: 4,
                      textAlign: TextAlign.center)
                  .flexible(),
              16.height,
              Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  color: context.cardColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 25.0,
                      width: 1.0,
                      color: context.dividerColor,
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {},
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Phone Number"),
                    ).expand(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
