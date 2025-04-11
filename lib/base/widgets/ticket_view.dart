import 'package:flutter/material.dart';
import 'package:ticker_app/base/res/styles/app_styles.dart';
import 'package:ticker_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticker_app/base/widgets/big_circle.dart';
import 'package:ticker_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(

              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              child:  Column(
                children: [
                  // Show departure and destination with icons first line
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(randomDivider: 6),
                          ),
                          Center(child: Transform.rotate(angle: 1.57,
                          child: Icon(Icons.local_airport_rounded,color: Colors.white,))),
                        ],
                      )),
                      BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  // Show departure and destination name with time
                  Row(
                    children: [
                      Text(
                        "N'Djamena",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8h 30M",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Lomé",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: true,),
                  Expanded(child: Container()),
                  BigCircle(isRight: false)
                ],
              ),
            ),
            Container(

              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color:AppStyles.ticketOrange,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              child:  Column(
                children: [
                  // Show departure and destination with icons first line
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(randomDivider: 6),
                          ),
                          Center(child: Transform.rotate(angle: 1.57,
                              child: Icon(Icons.local_airport_rounded,color: Colors.white,))),
                        ],
                      )),
                      BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  // Show departure and destination name with time
                  Row(
                    children: [
                      Text(
                        "N'Djamena",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8h 30M",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Lomé",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
