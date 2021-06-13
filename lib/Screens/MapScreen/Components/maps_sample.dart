
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';

final places =
    GoogleMapsPlaces(apiKey: "AIzaSyA1PkJIiq8nWSv4uo7oPfPMrX4WQAZKTyE");

class MapSample extends StatefulWidget {
  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  Future<Position> _currentLocation;
  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _currentLocation = Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _currentLocation,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              // The user location returned from the snapshot
              Position snapshotData = snapshot.data;
              LatLng _userLocation =
                  LatLng(snapshotData.latitude, snapshotData.longitude);

              if (_markers.isEmpty) {
                _retrieveNearbyHospitals(_userLocation);
              }

              return GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: _userLocation,
                  zoom: 14,
                ),
                markers: _markers
                  ..add(Marker(
                      markerId: MarkerId("Your Location"),
                      infoWindow: InfoWindow(title: "Your Location"),
                      position: _userLocation,
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                          BitmapDescriptor.hueAzure))),
              );
            } else {
              return Center(child: Text("Failed to get user location."));
            }
          }
          // While the connection is not in the done state yet
          return Center(child: CircularProgressIndicator());
        });
  }

  Future<void> _retrieveNearbyHospitals(LatLng _userLocation) async {
    PlacesSearchResponse _response = await places.searchNearbyWithRadius(
        Location(_userLocation.latitude, _userLocation.longitude), 100000,
        type: "hospital|doctor|physiotherapist|dentist");

    Set<Marker> _restaurantMarkers = _response.results
        .map((result) => Marker(
            markerId: MarkerId(result.name),
            // Use an icon with different colors to differentiate between current location
            // and the restaurants
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(
                title: result.name,
                snippet:
                    "Ratings: " + (result.rating?.toString() ?? "Not Rated")),
            position: LatLng(
                result.geometry.location.lat, result.geometry.location.lng)))
        .toSet();

    setState(() {
      _markers.addAll(_restaurantMarkers);
    });
  }
}
