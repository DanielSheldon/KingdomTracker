package
{
	import com.kingdomtracker.MapView;
	import com.google.maps.Map;
	import com.google.maps.MapOptions;
	
	import flash.display.Sprite;
	
	[SWF(width="750", height="450")]
	
	public class Main extends Sprite
	{
		private var _mapView:MapView;
		
		public function Main()
		{
			setupUI();
		}
		
		private function setupUI():void
		{
			_mapView = new MapView();
			addChild(_mapView);
		}
	}
}