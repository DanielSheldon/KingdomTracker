package
{
	import com.google.maps.Map;
	import com.google.maps.MapOptions;
	import com.kingdomtracker.views.CheckinListView;
	import com.kingdomtracker.views.MapView;
	
	import flash.display.Sprite;
	
	[SWF(width="750", height="450")]
	
	public class Main extends Sprite
	{
		private var _mapView:MapView;
		private var _checkinListView:CheckinListView;
		
		public function Main()
		{
			setupUI();
		}
		
		private function setupUI():void
		{
			_checkinListView = new CheckinListView();
			addChild(_checkinListView);
			
			_mapView = new MapView(550,450);
			_mapView.x = 200;
			addChild(_mapView);
		}
	}
}