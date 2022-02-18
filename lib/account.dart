import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 70, 0, 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(30)),
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Omar Mohammed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text(
                      "Sharga",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        child: Text(
                          "SignOut",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              textTheme: TextTheme(
                bodyText2: TextStyle(
                    color: Colors.white,
                    fontSize: 14.8,
                    fontWeight: FontWeight.bold),
              ),
            ),
            child: Builder(builder: (context) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                height: 450,
                color: Color.fromARGB(255, 166, 166, 166),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Wish list",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadiusDirectional.circular(16)),
                            child: Text(
                              "14",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          "History Parchases",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Processing",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadiusDirectional.circular(16)),
                            child: Text(
                              "14",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 30,
                        color: Colors.grey[600],
                        thickness: 3,
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          "Privacy Policy",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          "Terms and conditions",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          "Refund and return policy",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          "Delivery and cancellation",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
