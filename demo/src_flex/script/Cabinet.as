package script
{
	import spark.components.Group;
	
	import flash.geom.Vector3D;
	
	import twaver.ElementBox;
	import twaver.Node;
	import twaver.Utils;
	import twaver.threed.network.Network3D;
	import twaver.threed.util.Consts3D;
	import twaver.threed.util.Style3D;
	import twaver.threed.util.Util3D;
	
	public class Cabinet extends Group
	{
		
		private var box:ElementBox=new ElementBox();
		private var network3d:Network3D;
		
		[Embed(source="images/machine.png")]
		private static const Cabinet:Class;
		
		
		public function Cabinet()
		{
			super();
			Util3D.registVector3D();
			Utils.registerImageByClass("cabinet",Cabinet);
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			network3d=new Network3D(box);
			network3d.showAxises();
			network3d.applyHoverCamera(-180, 5, 500);
			network3d.tiltAngleLowLimit=-80;
			network3d.tiltAngleUpLimit=80
			network3d.percentWidth=100;
			network3d.percentHeight=100;
			network3d.backgroundColor = 0x925618;
			
			var cube:Node = new Node();
			cube.setStyle(Style3D.THREED_SHAPE_TYPE,Consts3D.THREED_SHAPE_TYPE_CUBE);
			cube.setStyle(Style3D.MAPPINGTYPE,Consts3D.MAPPINGTYPE_MAP6);
			cube.setStyle(Style3D.MAPPING_COMMON_PATH,"cabinet");
			cube.setStyle(Style3D.PROPERTY_SIZE, new Vector3D(80, 150, 80));
			cube.setStyle(Style3D.PROPERTY_SPACE_LOCATION, new Vector3D(x, 150 / 2 + 10, z));
			box.add(cube);
			this.addElement(network3d);
		}
	}
}