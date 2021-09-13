import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'absenquestion.dart';

class Absen extends StatefulWidget {
  @override
  _AbsenState createState() => _AbsenState();
}

class _AbsenState extends State<Absen> {
  bool _flashOn=false;
  bool _frontCam = false;
  GlobalKey _qrKey = GlobalKey();
  QRViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Absen',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: Stack(
        children: [
          QRView(
              key: _qrKey,
              overlay: QrScannerOverlayShape(
                  borderColor: Colors.teal
              ),
              onQRViewCreated: (QRViewController controller){
                this._controller = controller;
                controller.scannedDataStream.listen((val) {
                  if(mounted){
                    _controller.dispose();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AbsenQuestions(),
                        ),
                      );
                  }
                });
              }
          ),
          Align(
            alignment: Alignment.topCenter,
            child:Row(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 60, left: 120),
                    child: Text('Scanner Absence', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),)
                ),
                SizedBox(width: 40,),

                Container(
                    margin: EdgeInsets.only(top: 60, left: 10),
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.refresh),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Absen()));
                        }
                    )
                ),
              ],
            )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    color: Colors.white,
                    icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off),
                    onPressed: (){
                      setState(() {
                        _flashOn = !_flashOn;
                      });
                      _controller.toggleFlash();
                    }
                ),
                IconButton(
                    color: Colors.white,
                    icon: Icon(_frontCam ? Icons.camera_front : Icons.camera_rear),
                    onPressed: (){
                      setState(() {
                        _frontCam = !_frontCam;
                      });
                      _controller.flipCamera();
                    }
                ),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.close),
                  onPressed: ()=> Navigator.pop(context),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
