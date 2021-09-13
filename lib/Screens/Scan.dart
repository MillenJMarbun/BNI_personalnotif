import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  bool _flashOn = false;
  bool _frontCam = false;
  GlobalKey _qrKey = GlobalKey();
  QRViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          QRView(
              key: _qrKey,
              overlay: QrScannerOverlayShape(borderColor: Colors.teal),
              onQRViewCreated: (QRViewController controller) {
                this._controller = controller;
                controller.scannedDataStream.listen((val) {
                  if (mounted) {
                    _controller.dispose();
                    Navigator.pop(context, val);
                  }
                });
              }),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  'Scan Your QR',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
          ),
          Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        color: Colors.white,
                        icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off),
                        onPressed: () {
                          setState(() {
                            _flashOn = !_flashOn;
                          });
                          _controller.toggleFlash();
                        }),
                    IconButton(
                        color: Colors.white,
                        icon: Icon(
                            _frontCam ? Icons.camera_front : Icons.camera_rear),
                        onPressed: () {
                          setState(() {
                            _frontCam = !_frontCam;
                          });
                          _controller.flipCamera();
                        }),

                  ],
                ),
              ))
        ],
      ),
    );
  }
}
