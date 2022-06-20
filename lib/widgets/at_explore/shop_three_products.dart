import 'package:flutter/material.dart';
import 'package:slicing_homepage/models/store_model.dart';
import 'package:slicing_homepage/pages/storepage/store_page.dart';

class ShopThreeProducts extends StatelessWidget {
  final StoreModel storeModel;

  ShopThreeProducts({
    Key? key,
    required this.storeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 11.0, top: 11.0, bottom: 11.0),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 3,
            color: Color(0xffEDEDED),
            // color: Color(0xffEDEDED),
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFBA1E),
                      image: DecorationImage(
                        scale: 1.75,
                        image: AssetImage("assets/icons/icon_small_store.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${storeModel.storeName}",
                        style: TextStyle(fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 12),
                          children: [
                            TextSpan(
                                text: "Manado - Sekitar ",
                                style: TextStyle(color: Color(0xff63767e))),
                            TextSpan(
                              text: "${storeModel.kiloMeter} Km",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StorePage()));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.035,
                  ),
                  width: MediaQuery.of(context).size.width * 0.23,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green.shade700),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Lihat Toko",
                    style: TextStyle(color: Colors.green.shade700),
                  )),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.height * 0.135,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("${storeModel.product[0].imageUrl}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '${storeModel.product[0].price}',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.height * 0.135,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("${storeModel.product[1].imageUrl}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '${storeModel.product[1].price}',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.height * 0.135,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("${storeModel.product[2].imageUrl}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '${storeModel.product[2].price}',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.0001,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
