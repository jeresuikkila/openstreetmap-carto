@building-fill: white;
@building-line: white;
@building-low-zoom: white;

@building-major-fill: white;
@building-major-line: white;

#buildings {
  [zoom >= 13] {
    polygon-fill: @building-low-zoom;
    polygon-clip: false;
    [zoom >= 15] {
      line-color: @building-line;
      polygon-fill: @building-fill;
      line-width: .75;
      line-clip: false;
    }
  }
}

#buildings-major {
  [zoom >= 13] {
    [aeroway = 'terminal'],
    [amenity = 'place_of_worship'],
    [building = 'train_station'],
    [aerialway = 'station'],
    [public_transport = 'station'] {
      polygon-fill: @building-major-fill;
      polygon-clip: false;
      [zoom >= 15] {
        line-width: .75;
        line-clip: false;
        line-color: @building-major-line;
      }
    }
  }
}

#bridge {
  [zoom >= 12] {
    polygon-fill: white;
  }
}
