@station-color: #7981b0;
@station-text: darken(saturate(@station-color, 15%), 10%);

.stations {
  [railway = 'subway_entrance'][zoom >= 18] {
    marker-file: url('symbols/entrance.10.svg');
    marker-placement: interior;
    marker-fill: @transportation-icon;
    marker-clip: false;
    [zoom >= 19] {
      text-name: [ref];
      text-face-name: @book-fonts;
      text-size: 10;
      text-fill: @transportation-icon;
      text-dy: 10;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: 0;
      text-placement: interior;
    }
  }

  [railway = 'station'][zoom >= 12] {
    marker-file: url('symbols/square.svg');
    marker-placement: interior;
    marker-fill: @station-color;
    marker-width: 4;
    marker-clip: false;
    [zoom >= 13] {
      marker-width: 6;
    }
    [zoom >= 15] {
      marker-width: 9;
    }
  }

  [railway = 'halt'] {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
    }
  }

  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
    }
    [zoom >= 15] {
      marker-width: 6;
    }
  }

  [railway = 'tram_stop'] {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
    }
  }
}
