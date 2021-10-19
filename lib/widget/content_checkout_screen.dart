import 'package:ecommerce/common/assets_path.dart';
import 'package:ecommerce/common/theme.dart';
import 'package:ecommerce/screens/checkout_sucess_screen.dart';
import 'package:ecommerce/widget/components/checkout_card.dart';
import 'package:ecommerce/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentCheckoutScreen extends StatelessWidget {
  const ContentCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _itemRowPaymentSummary(String title, String data) {
      return Padding(
        padding: EdgeInsets.only(top: defaultMargin / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              data,
              style: primaryTextStyle.copyWith(fontWeight: medium),
            )
          ],
        ),
      );
    }

    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        Padding(
          padding: EdgeInsets.only(top: defaultMargin, bottom: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "List Item",
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              CheckoutCard(),
              CheckoutCard(),
            ],
          ),
        ),
        // ? Note: Address Details
        Container(
          padding: EdgeInsets.all(defaultMargin - 4),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Address Details",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: defaultMargin / 2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        iconStoreLocation,
                        width: 40,
                      ),
                      Image.asset(
                        iconLine,
                        height: 30,
                      ),
                      Image.asset(
                        iconYourAddress,
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: defaultMargin / 2,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Store Location",
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          "Adidas Core ",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          "Your Address",
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          "Kampung cilandesan RT 02 RW 01 desa Pakuhaji Kecamatan Cisalak Kabupaten Subang Jawa Barat, 41283",
                          style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        //? Payment Summary
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: EdgeInsets.all(defaultMargin - 4),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment Summary",
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              _itemRowPaymentSummary("Product Quantity", "2 Items"),
              _itemRowPaymentSummary("Product Price", "\$512"),
              _itemRowPaymentSummary("Shipping", "Free"),
              SizedBox(
                height: defaultMargin / 2,
              ),
              Divider(
                thickness: 1,
                color: Color(0xFF2e3141),
              ),
              SizedBox(
                height: defaultMargin / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: princeTextStyle.copyWith(fontWeight: semiBold),
                  ),
                  Text(
                    "\$512",
                    style: princeTextStyle.copyWith(fontWeight: semiBold),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: defaultMargin,
        ),
        CustomButtonWidget(
            buttonName: "Checkout",
            onPressed: () {
              Get.offAll(() => ChcekoutSuccessScreen());
            },
            height: 50,
            width: MediaQuery.of(context).size.width),
        SizedBox(
          height: defaultMargin,
        ),
      ],
    );
  }
}
