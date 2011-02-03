package com.kingdomtracker.views
{
	import com.google.maps.Map;
	import com.google.maps.MapOptions;
	
	import flash.display.Sprite;
	import flash.geom.Point;
	
	public class MapView extends Sprite
	{
		private const API_KEY:String = "ABQIAAAAsN_leWfZHQW9BxMkgsN0mhSYKaLdv8ry_UaUOjyopRMmezUSfhS-gL0zDufqmSIf8RKnc_56qlrpyw";
		
		private var _map:Map;
		private var _mapOptions:MapOptions;
		
		public function MapView(width:Number = 200, height:Number = 200)
		{
			super();
			initMap();
			
			this.width = width;
			this.height = height;
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
		
		override public function set width(value:Number):void
		{
			_map.width = value;
		}
		
		override public function set height(value:Number):void
		{	
			_map.height = value;
		}
	}
}