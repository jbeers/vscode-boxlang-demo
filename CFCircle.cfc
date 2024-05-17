component {
	property name="radius";

	public void function main( array args ) {
		if( !args.len() ){
			writeOutput( "No command line args were passed in - exiting" );
			return;
		}

		writeOutput( "Our command line args" );
		for( var arg in args ){
			writeOutput( arg );
		}
		return;
		
	}

	public void function init( numeric radius = 1 ) {
		variables.radius = radius;
	}

	public numeric function getCircumference() {
		return radius * 2 * Pi();
	}

	public string function toString( required string color ) {
		return "The circle of radius #radius# has a circumference of #getCircumference()# and is the color #color#";
	}
}