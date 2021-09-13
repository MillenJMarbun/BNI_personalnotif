import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Unleash extends StatefulWidget {
  @override
  _UnleashState createState() => _UnleashState();
}

class _UnleashState extends State<Unleash> {

  static const _jamvalue = 23.66;
  double _percentValue1 = _jamvalue/46*100;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.orange,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: new Text(
            'More Unleashed',
            style: TextStyle(color: Colors.teal),
          ),
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.blue,
            ),
            labelColor: Colors.white,
            isScrollable: true,
            unselectedLabelColor: Colors.teal,
            indicatorColor: Colors.orange,
            tabs: [
              Tab(text: 'Learning'),
              Tab(text: 'Sharing'),
              Tab(text: 'Experimental\nLearning Day'),
              Tab(text: 'Experimental\nSharing Day'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10, left: 30, right: 30),
              color: Color.fromRGBO(217, 237, 247, 0.4),
              child: new ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(right: 160, bottom: 15, top: 10),
                          child: Text('Learning Hours',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.teal))),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: LinearProgressIndicator(
                          minHeight: 30,
                          backgroundColor: Colors.red,
                          valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.green,
                          ),
                          value: _percentValue1/100,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          /*Padding(padding: EdgeInsets.only(right:160, bottom: 15, top: 30),*/
                          /*child:*/
                          Text(
                              'Sudah Belajar = ${(_jamvalue)} Jam (${(_percentValue1).toStringAsFixed(2)} %)',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.green))
                          /* ),*/
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          /*Padding(padding: EdgeInsets.only(right:160, bottom: 15, top: 30),*/
                          /*child:*/
                          Text(
                              'Belum Belajar = ${(46 - _jamvalue)} Jam (${(100 - _percentValue1).toStringAsFixed(2)} %)',
                              style: TextStyle(fontSize: 18, color: Colors.red))
                          /* ),*/
                        ],
                      ),
                      SizedBox(height: 30),
                      SfRadialGauge(axes: <RadialAxis>[
                        RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            labelOffset: 30,
                            axisLineStyle: AxisLineStyle(
                                thicknessUnit: GaugeSizeUnit.factor,
                                thickness: 0.03),
                            majorTickStyle: MajorTickStyle(
                                length: 6, thickness: 4, color: Colors.black),
                            minorTickStyle: MinorTickStyle(
                                length: 3, thickness: 3, color: Colors.black),
                            axisLabelStyle: GaugeTextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            ranges: <GaugeRange>[
                              GaugeRange(
                                  startValue: 0,
                                  endValue: 100,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  startWidth: 0.03,
                                  endWidth: 0.03,
                                  gradient: SweepGradient(colors: const <Color>[
                                    Colors.red,
                                    Colors.yellow,
                                    Colors.green
                                  ],
                                      stops: const <double>[
                                    0.0,
                                    0.5,
                                    1
                                  ]))
                            ],
                            pointers: <GaugePointer>[
                              NeedlePointer(
                                  value: _jamvalue,
                                  needleLength: 0.95,
                                  enableAnimation: true,
                                  animationType: AnimationType.ease,
                                  needleStartWidth: 1.5,
                                  needleEndWidth: 6,
                                  needleColor: Colors.red,
                                  knobStyle: KnobStyle(knobRadius: 0.09))
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  widget: Container(
                                      child: Column(children: <Widget>[
                                    Text(_jamvalue.toString(),
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 20),

                                  ])),
                                  angle: 90,
                                  positionFactor: 0.75)
                            ])
                      ]),
                      Text('Learning Hours',style:
                      TextStyle(fontSize: 20, color: Colors.teal)),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(padding: EdgeInsets.only(top : 55),
                        child: Text('Detail', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.teal)
                        )
                        )
                      )
                    ],
                  ),
                ],
              ),
            ),
            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10, left: 30, right: 30),
              color: Color.fromRGBO(217, 237, 247, 0.4),
              child: new ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                          padding:
                          EdgeInsets.only(right: 170, bottom: 15, top: 10),
                          child: Text('Sharing Hours',
                              style:
                              TextStyle(fontSize: 25, color: Colors.teal))),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: LinearProgressIndicator(
                          minHeight: 30,
                          backgroundColor: Colors.red,
                          valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.green,
                          ),
                          value: _percentValue1/100,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          /*Padding(padding: EdgeInsets.only(right:160, bottom: 15, top: 30),*/
                          /*child:*/
                          Text(
                              'Sudah Belajar = ${(_jamvalue)} Jam (${(_percentValue1).toStringAsFixed(2)} %)',
                              style:
                              TextStyle(fontSize: 18, color: Colors.green))
                          /* ),*/
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          /*Padding(padding: EdgeInsets.only(right:160, bottom: 15, top: 30),*/
                          /*child:*/
                          Text(
                              'Belum Belajar = ${(46 - _jamvalue)} Jam (${(100 - _percentValue1).toStringAsFixed(2)} %)',
                              style: TextStyle(fontSize: 18, color: Colors.red))
                          /* ),*/
                        ],
                      ),
                      SizedBox(height: 30),
                      SfRadialGauge(axes: <RadialAxis>[
                        RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            labelOffset: 30,
                            axisLineStyle: AxisLineStyle(
                                thicknessUnit: GaugeSizeUnit.factor,
                                thickness: 0.03),
                            majorTickStyle: MajorTickStyle(
                                length: 6, thickness: 4, color: Colors.black),
                            minorTickStyle: MinorTickStyle(
                                length: 3, thickness: 3, color: Colors.black),
                            axisLabelStyle: GaugeTextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            ranges: <GaugeRange>[
                              GaugeRange(
                                  startValue: 0,
                                  endValue: 100,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  startWidth: 0.03,
                                  endWidth: 0.03,
                                  gradient: SweepGradient(colors: const <Color>[
                                    Colors.red,
                                    Colors.yellow,
                                    Colors.green
                                  ],
                                      stops: const <double>[
                                        0.0,
                                        0.5,
                                        1
                                      ]))
                            ],
                            pointers: <GaugePointer>[
                              NeedlePointer(
                                  value: _jamvalue,
                                  needleLength: 0.95,
                                  enableAnimation: true,
                                  animationType: AnimationType.ease,
                                  needleStartWidth: 1.5,
                                  needleEndWidth: 6,
                                  needleColor: Colors.red,
                                  knobStyle: KnobStyle(knobRadius: 0.09))
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  widget: Container(
                                      child: Column(children: <Widget>[
                                        Text(_jamvalue.toString(),
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 20),

                                      ])),
                                  angle: 90,
                                  positionFactor: 0.75)
                            ])
                      ]),
                      Text('Sharing Hours',style:
                      TextStyle(fontSize: 20, color: Colors.teal)),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(padding: EdgeInsets.only(top : 55),
                              child: Text('Detail', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.teal)
                              )
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),

            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10, left: 30, right: 30),
              color: Color.fromRGBO(217, 237, 247, 0.4),
              child: new ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                          padding:
                          EdgeInsets.only(right: 10, bottom: 15, top: 10),
                          child: Text('Experimental Learning Hours',
                              style:
                              TextStyle(fontSize: 25, color: Colors.teal))),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: LinearProgressIndicator(
                          minHeight: 30,
                          backgroundColor: Colors.red,
                          valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.green,
                          ),
                          value: _percentValue1/100,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          /*Padding(padding: EdgeInsets.only(right:160, bottom: 15, top: 30),*/
                          /*child:*/
                          Text(
                              'Sudah Belajar = ${(_jamvalue)} Jam (${(_percentValue1).toStringAsFixed(2)} %)',
                              style:
                              TextStyle(fontSize: 18, color: Colors.green))
                          /* ),*/
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          /*Padding(padding: EdgeInsets.only(right:160, bottom: 15, top: 30),*/
                          /*child:*/
                          Text(
                              'Belum Belajar = ${(46 - _jamvalue)} Jam (${(100 - _percentValue1).toStringAsFixed(2)} %)',
                              style: TextStyle(fontSize: 18, color: Colors.red))
                          /* ),*/
                        ],
                      ),
                      SizedBox(height: 30),
                      SfRadialGauge(axes: <RadialAxis>[
                        RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            labelOffset: 30,
                            axisLineStyle: AxisLineStyle(
                                thicknessUnit: GaugeSizeUnit.factor,
                                thickness: 0.03),
                            majorTickStyle: MajorTickStyle(
                                length: 6, thickness: 4, color: Colors.black),
                            minorTickStyle: MinorTickStyle(
                                length: 3, thickness: 3, color: Colors.black),
                            axisLabelStyle: GaugeTextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            ranges: <GaugeRange>[
                              GaugeRange(
                                  startValue: 0,
                                  endValue: 100,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  startWidth: 0.03,
                                  endWidth: 0.03,
                                  gradient: SweepGradient(colors: const <Color>[
                                    Colors.red,
                                    Colors.yellow,
                                    Colors.green
                                  ],
                                      stops: const <double>[
                                        0.0,
                                        0.5,
                                        1
                                      ]))
                            ],
                            pointers: <GaugePointer>[
                              NeedlePointer(
                                  value: _jamvalue,
                                  needleLength: 0.95,
                                  enableAnimation: true,
                                  animationType: AnimationType.ease,
                                  needleStartWidth: 1.5,
                                  needleEndWidth: 6,
                                  needleColor: Colors.red,
                                  knobStyle: KnobStyle(knobRadius: 0.09))
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  widget: Container(
                                      child: Column(children: <Widget>[
                                        Text(_jamvalue.toString(),
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 20),

                                      ])),
                                  angle: 90,
                                  positionFactor: 0.75)
                            ])
                      ]),
                      Text('Experimental Learning Hours',style:
                      TextStyle(fontSize: 20, color: Colors.teal)),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(padding: EdgeInsets.only(top : 55),
                              child: Text('Detail', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.teal)
                              )
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),


            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 10, left: 30, right: 30),
              color: Color.fromRGBO(217, 237, 247, 0.4),
              child: new ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                          padding:
                          EdgeInsets.only(right: 20, bottom: 15, top: 10),
                          child: Text('Experimental Sharing Hours',
                              style:
                              TextStyle(fontSize: 25, color: Colors.teal))),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: LinearProgressIndicator(
                          minHeight: 30,
                          backgroundColor: Colors.red,
                          valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.green,
                          ),
                          value: _percentValue1/100,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          /*Padding(padding: EdgeInsets.only(right:160, bottom: 15, top: 30),*/
                          /*child:*/
                          Text(
                              'Sudah Belajar = ${(_jamvalue)} Jam (${(_percentValue1).toStringAsFixed(2)} %)',
                              style:
                              TextStyle(fontSize: 18, color: Colors.green))
                          /* ),*/
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          /*Padding(padding: EdgeInsets.only(right:160, bottom: 15, top: 30),*/
                          /*child:*/
                          Text(
                              'Belum Belajar = ${(46 - _jamvalue)} Jam (${(100 - _percentValue1).toStringAsFixed(2)} %)',
                              style: TextStyle(fontSize: 18, color: Colors.red))
                          /* ),*/
                        ],
                      ),
                      SizedBox(height: 30),
                      SfRadialGauge(axes: <RadialAxis>[
                        RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            labelOffset: 30,
                            axisLineStyle: AxisLineStyle(
                                thicknessUnit: GaugeSizeUnit.factor,
                                thickness: 0.03),
                            majorTickStyle: MajorTickStyle(
                                length: 6, thickness: 4, color: Colors.black),
                            minorTickStyle: MinorTickStyle(
                                length: 3, thickness: 3, color: Colors.black),
                            axisLabelStyle: GaugeTextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            ranges: <GaugeRange>[
                              GaugeRange(
                                  startValue: 0,
                                  endValue: 100,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  startWidth: 0.03,
                                  endWidth: 0.03,
                                  gradient: SweepGradient(colors: const <Color>[
                                    Colors.red,
                                    Colors.yellow,
                                    Colors.green
                                  ],
                                      stops: const <double>[
                                        0.0,
                                        0.5,
                                        1
                                      ]))
                            ],
                            pointers: <GaugePointer>[
                              NeedlePointer(
                                  value: _jamvalue,
                                  needleLength: 0.95,
                                  enableAnimation: true,
                                  animationType: AnimationType.ease,
                                  needleStartWidth: 1.5,
                                  needleEndWidth: 6,
                                  needleColor: Colors.red,
                                  knobStyle: KnobStyle(knobRadius: 0.09))
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  widget: Container(
                                      child: Column(children: <Widget>[
                                        Text(_jamvalue.toString(),
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 20),

                                      ])),
                                  angle: 90,
                                  positionFactor: 0.75)
                            ])
                      ]),
                      Text('Experimental Sharing Hours',style:
                      TextStyle(fontSize: 20, color: Colors.teal)),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(padding: EdgeInsets.only(top : 55),
                              child: Text('Detail', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.teal)
                              )
                          )
                      )
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
