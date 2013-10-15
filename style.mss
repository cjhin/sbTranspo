Map {
  background-image: url(citybg2.png); 
}

////////////////////////
// Water (St Joe River) 
//
#water{
	polygon-fill:lightblue;  
}

////////////////////////
// Polygons (Buildings, Schools, Parks, Shopping, etc)
//
#sbPolygonsNames[zoom>=15] { 
	::labels {
     text-name: "[name]";
     text-face-name: "Arial Regular";
     text-placement: point;
     text-halo-radius: 3px; 
     text-placement-type: simple;
     text-allow-overlap: true;
     text-halo-fill: #fff;
     text-fill: #729674;
     text-size: 13;
     text-min-distance:1;
    }
}
#sbPolygons[type='school']{
  polygon-fill: tan;
}
#sbPolygons[type='water']{
  polygon-fill: lightblue;
}
#sbPolygons[type='park'][zoom>=13]{
  polygon-fill: lightgreen;
}
#sbPolygons[type='shopping'][zoom>=13]{
  polygon-fill: lightyellow;
}
#sbPolygons[type='cemetary'][zoom>=13]{
  polygon-fill: grey;
}
#sbPolygons[type='transpo'][zoom>=14]{
  polygon-fill: teal;
}
#sbPolygons[type='other'][zoom>=14]{
  polygon-fill: purple;
}

////////////////////////
// ROADS 
//

//zoom <=13
#sbRoads[TYPE="primary"][zoom <= 13]{
	::outline {
    	line-width: 2.5;
    	line-color: #acacac;
	}
    line-width: 2;
    line-color: #fff;
}
#sbRoads[TYPE="trunk"][zoom <= 13],
#sbRoads[TYPE="motorway_link"][zoom <= 13],
#sbRoads[TYPE="motorway"][zoom <= 13]{
  ::outline {
    line-width: 3;
    line-color: #acacac;
}
    line-width: 2;
    line-color: #fff;
}

//zoom 14-15
#sbRoads[TYPE="secondary"][zoom >= 11],
#sbRoads[TYPE="tertiary"][zoom >= 13],
#sbRoads[TYPE="residential"][zoom >= 14] {
  ::outline {
    line-width: 3;
    line-color: #acacac;
}
   line-width: 2.5;
    line-color: #fff;
}
#sbRoads[TYPE="trunk"][zoom >= 14],
#sbRoads[TYPE="motorway_link"][zoom >= 14],
#sbRoads[TYPE="motorway"][zoom >= 14]{
  ::outline {
    line-width: 4;
    line-color: #acacac;
}
    line-width: 3.5;
    line-color: #fff;
}
#sbRoads[TYPE="primary"][zoom >= 14] {
  ::outline {
    line-width: 4.5;
    line-color: #acacac;
}
    line-width: 4;
    line-color: #fff;
}


//zoom >=16
#sbRoads[TYPE="secondary"][zoom >= 16],
#sbRoads[TYPE="tertiary"][zoom >= 16],
#sbRoads[TYPE="residential"][zoom >= 16] {
  ::outline {
    line-width: 4.5;
    line-color: #acacac;
}
   line-width: 4;
    line-color: #fff;
}
#sbRoads[TYPE="trunk"][zoom >= 16],
#sbRoads[TYPE="motorway_link"][zoom >= 16],
#sbRoads[TYPE="motorway"][zoom >= 16]
#sbRoads[TYPE="primary"][zoom >= 16] {
  ::outline {
    line-width: 8;
    line-color: #acacac;
}
    line-width: 7.5;
    line-color: #fff;
}


////////////////////////
// Road Names 
//
/* Duplicated version of streets so that names appear on top of streets/bus routes*/
//zoom <=13
#sbRoadsNames[TYPE="trunk"],
#sbRoadsNames[TYPE="motorway_link"],
#sbRoadsNames[TYPE="motorway"],
#sbRoadsNames[TYPE="primary"][zoom>=12],
#sbRoadsNames[TYPE="secondary"][zoom >= 13],
#sbRoadsNames[TYPE="tertiary"][zoom >= 15],
#sbRoadsNames[TYPE="residential"][zoom >= 16]{
	::labels {
    	text-character-spacing: 1;
        text-name: "[NAME]";
        text-face-name: "Trebuchet MS Regular";
        text-placement: line;
        text-halo-fill: #ffffff;
        text-halo-radius: 2px;
        text-size: 9px;
        text-transform: uppercase;
        text-fill: #8a8a8a;
    }
}



/////////////////////
//Metro Routes

#sbRoutes{
	line-width: 2;
  	::labels {
    	text-character-spacing: 1;
        text-name: "[Route_No]";
        text-face-name: "Trebuchet MS Regular";
        text-placement: line;
        text-halo-radius: 1px;
        text-size: 24px;
        text-transform: uppercase;
        //text-fill: #8a8a8a;
    	text-fill:#fff;
    
    }
}
#sbRoutes[zoom>=13]{
  line-width:3;
}
#sbRoutes[zoom>=14]{
  line-width:3.5;
}
#sbRoutes[zoom>=16]{
  line-width:5.5;
}

#sbRoutes[Route_No="1"]{
  	line-color:yellowgreen;
  ::labels{
  text-halo-fill: yellowgreen;
    }
}
#sbRoutes[Route_No="3A"]{
  	line-color:blue;
  ::labels{
  text-halo-fill: blue;
    }  }
#sbRoutes[Route_No="4"]{
  	line-color:green;
  ::labels{
  text-halo-fill: green;
    }  }
#sbRoutes[Route_No="5"]{
  	line-color:orchid;
  ::labels{
  text-halo-fill: orchid;
    }  
}
#sbRoutes[Route_No="6"]{
  	line-color:orange;
  ::labels{
  text-halo-fill: orange;
    }  
}
#sbRoutes[Route_No="7"]{
  	line-color:teal;
  ::labels{
  text-halo-fill: teal;
    }  
}
#sbRoutes[Route_No="8"]{
  	line-color:brown;
  ::labels{
  text-halo-fill: brown;
    }  
}
#sbRoutes[Route_No="9"]{
  	line-color:yellow;
  ::labels{
  text-halo-fill: yellow;
    }  
}
#sbRoutes[Route_No="10"]{
  	line-color:purple;
  ::labels{
  text-halo-fill: purple;
    }  
}
#sbRoutes[Route_No="11"]{
  	line-color:darkgreen;
  ::labels{
  text-halo-fill: darkgreen;
    }  
}
#sbRoutes[Route_No="12"]{
  	line-color:steelblue;
  ::labels{
  text-halo-fill: steelblue;
    }  
}
#sbRoutes[Route_No="13"]{
  	line-color:sienna;
  ::labels{
  text-halo-fill: sienna;
    }  
}
#sbRoutes[Route_No="14"]{
  	line-color:red;
  ::labels{
  text-halo-fill: red;
    }  
}
#sbRoutes[Route_No="15A"]{
  	line-color:orangered;
  ::labels{
  text-halo-fill: orangered;
    }  
}
#sbRoutes[Route_No="16"]{
  	line-color:grey;
  ::labels{
  text-halo-fill: grey;
    }  
}
#sbRoutes[Route_No="17"]{
  	line-color:gold;
  ::labels{
  text-halo-fill: gold;
    }  
}

/* ----- POINTS OF INTEREST ----- */
#sbPOI [zoom>=14]{
      point-allow-overlap: true;
  }
#sbPOI[zoom > 15] {
     ::labels {
     text-name: "[name]";
     text-face-name: "Trebuchet MS Regular";
     text-placement: point;
     text-halo-radius: 3px; 
     //text-placement-type: simple;
     text-dy: 11;
     text-vertical-alignment: bottom;
     text-allow-overlap: true;
     text-halo-fill: #ecece6;
     text-fill: #333;
     text-size: 12;
   }
}/*
// set blank point file to make overlap apply to all points
.point[zoom > 15] {
  point-file: url();
  point-allow-overlap: true;
  }
 */
 #sbPOI[type="school"][zoom >= 14]  
    {point-file: url(maki/town-hall-12.png);}
 #sbPOI[type="school"][zoom >= 16] 
    {point-file: url(maki/town-hall-18.png);}

 #sbPOI[type="shopping"][zoom >= 14] 
    {point-file: url(maki/grocery-12.png);}
 #sbPOI[type="shopping"][zoom >= 16] 
    {point-file: url(maki/grocery-18.png);}

 #sbPOI[type="residence"][zoom >= 14] 
    {point-file: url(maki/commercial-12.png);}
 #sbPOI[type="residence"][zoom >= 16] 
    {point-file: url(maki/commercial-18.png);}

 #sbPOI[type="hospital"][zoom >= 14] 
    {point-file: url(maki/hospital-12.png);}
 #sbPOI[type="hospital"][zoom >= 16] 
    {point-file: url(maki/hospital-18.png);}

 #sbPOI[type="other"][zoom >= 14] 
    {point-file: url(maki/marker-12.png);}
 #sbPOI[type="other"][zoom >= 16] 
    {point-file: url(maki/marker-18.png);}

 #sbPOI[type="bus"][zoom >= 14] 
    {point-file: url(maki/bus-12.png);}
 #sbPOI[type="bus"][zoom >= 16] 
    {point-file: url(maki/bus-18.png);}
