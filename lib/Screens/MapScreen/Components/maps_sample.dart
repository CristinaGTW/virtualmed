import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart' as GMW;
import 'package:location/location.dart' as LOC;



class MapSample extends StatefulWidget {
  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {

  static String kGoogleApiKey = 'AIzaSyA1PkJIiq8nWSv4uo7oPfPMrX4WQAZKTyE';
  GMW.GoogleMapsPlaces _places = GMW.GoogleMapsPlaces(apiKey: kGoogleApiKey);
  LatLng _initialcameraposition = LatLng(20.5937, 78.9629);
  GoogleMapController _controller;
  LOC.Location _location = LOC.Location();
  GMW.Location gmwLocation = GMW.Location(20.5937, 78.9629);

  void _onMapCreated(GoogleMapController _cntlr)
  {
    _controller = _cntlr;
    _location.onLocationChanged().listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude, l.longitude),zoom: 15),
        ),
      );
      double lat = l.latitude;
      double long = l.longitude;
      gmwLocation = GMW.Location(lat, long);
      getNearbyPlaces(LatLng(l.latitude,l.longitude));
    });


  }


  @override
  Widget build(BuildContext context) {
    GoogleMap map = GoogleMap(
      initialCameraPosition: CameraPosition(target: _initialcameraposition),
      mapType: MapType.normal,
      onMapCreated: _onMapCreated,
      myLocationEnabled: true,
    );
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            map
          ],
        ),
      ),
    );
  }

  void getNearbyPlaces(LatLng latLng) async {
    final location = GMW.Location(latLng.latitude, latLng.longitude);
    final result = await _places.searchNearbyWithRadius(gmwLocation, 2500);

    setState(() {
      if (result.status == "OK") {
        //this._places = result.results;

      }
    });

  }


}