package com.kingdomtracker
{
	import com.google.maps.Map;
	import com.google.maps.MapOptions;
	
	import flash.display.Sprite;
	
	public class MapView extends Sprite
	{
		private const API_KEY:String = "ABQIAAAAsN_leWfZHQW9BxMkgsN0mhSYKaLdv8ry_UaUOjyopRMmezUSfhS-gL0zDufqmSIf8RKnc_56qlrpyw";
		
		private var _map:Map;
		private var _mapOptions:MapOptions;
		
		public function MapView()
		{
			super();
			initMap();
		}
		
		private function initMap():void
		{
			_mapOptions = new MapOptions();
			_mapOptions.scrollWheelZoom = true;
			
			_map = new Map();
			_map.key = API_KEY;
			_map.sensor = "true";
			_map.setInitOptions(_mapOptions);
			
			addChild(_map);
		}
	}
}