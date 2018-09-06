
@train-color: #81bd27;
@tram-color: #fff;
@subway-color: #f60;

#roads-fill[zoom >= 10],
#bridges[zoom >= 10],
#tunnels[zoom >= 10] {

  ::fill {

    [feature = 'railway_rail'][zoom >= 8] {
      [zoom >= 10] {
        #roads-fill, #bridges, #tunnels {
          dark/line-join: round;
          light/line-color: white;
          light/line-join: round;
          [feature = 'railway_rail'] {
            dark/line-color: @train-color;
            dark/line-width: 3;
            light/line-width: 1;
            light/line-dasharray: 8,8;
            [zoom >= 15] {
              light/line-dasharray: 0,8,8,1;
            }
            [zoom >= 18] {
              dark/line-width: 4;
              light/line-width: 2;
            }
          }
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [zoom >= 8] {
        line-color: #ccc;
        [zoom >= 10] { line-color: #aaa; }
        [zoom >= 13] { line-color: #666; }
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
      }
    }

    [feature = 'railway_tram'] {
      [zoom >= 10] {
        line-color: @tram-color;
        line-width: 0.75;
        [zoom >= 14] {
          line-width: 1;
        }
        [zoom >= 15] {
          line-width: 1.5;
        }
        [zoom >= 17] {
          line-width: 2;
        }
      }
    }

    [feature = 'railway_subway'] {
      [zoom >= 10] {
        line-width: 2;
        line-color: @subway-color; 
        line-dasharray: 5,3;
      }
    }

    [feature = 'railway_INT-preserved-ssy'] {
      [zoom >= 12] {
        dark/line-width: 1;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 2;
          dark/line-color: #999999;
          light/line-width: 0.8;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_monorail'] {
      [zoom >= 14] {
        background/line-width: 4;
        background/line-color: #fff;
        background/line-opacity: 0.4;
        background/line-cap: round;
        background/line-join: round;
        line/line-width: 3;
        line/line-color: #777;
        line/line-dasharray: 2,3;
        line/line-cap: round;
        line/line-join: round;
      }
    }
  }
}