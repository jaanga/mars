// source https://wms.lroc.asu.edu/lroc/view_rdr/WAC_GLD100

	var fs = require( 'fs' );

// https://github.com/oliver-moran
	var Jimp = require( '../node_modules/jimp' );

// lat and lon from lower left

//	var widthSource = 23040; // 256p ~ 90 degrees * 256 pixels
//	var heightSource = 15360;

	var widthSource = 11520;
	var heightSource = 5632;

	var widthDestination = 128;
	var heightDestination = 128;

	var byteArray;
	var bitmap;

	var signEW;
	var signNS;

	var path = 'c:/temp/mars-heightmaps/'
	var namePrefix = '128p';
	var fileName = process.argv[ 2 ];

	var tileXStart = parseFloat( process.argv[ 4 ] );
	var tileXFinish = parseFloat( process.argv[ 5 ] );
	var tileX = tileXStart;

	var tileYStart = parseFloat( process.argv[ 6 ] );
	var tileYFinish = parseFloat( process.argv[ 7 ] );
	var tileY = tileYStart;

	var destinationDirName = path + process.argv[ 3 ];


	init();

	function init() {

		for ( var i = tileXStart; i < tileXFinish; i++ ) {

			dname = tileX >= 0 ? destinationDirName + '/+' + i : destinationDirName + '/' + i;

			if ( !fs.existsSync( dname ) ) {

				fs.mkdirSync( dname );

console.log( 'new dir: ', dname );

			}

		}

		fs.readFile( path + 'img-128p/' + fileName, callbackReadFile );

	}

	function callbackReadFile( error, buffer ) {

		if ( error ) {

			throw console.log( error, buffer );

		}

// https://stackoverflow.com/questions/8609289/convert-a-binary-nodejs-buffer-to-javascript-arraybuffer

//		var arrayBuffer = new Uint8Array( buffer).buffer;
//		byteArray = new Int16Array( arrayBuffer );
// does not seem to work when bigger value is first - 'big endian'

		byteArray = new Uint8Array( buffer );

		elevations = [];

		for ( var i = 0; i < byteArray.length; ) {

			elevation = 256 * byteArray[ i++ ] + byteArray[ i++ ];

			elevation = elevation < 32767 ? elevation : elevation - 65535;

			elevations.push( elevation );

		}

console.log( '\nfileName: ', fileName );
console.log( 'byteArray.length: ', byteArray.length );

		processTiles();

	}

	function processTiles() {

//console.log( 'tx', tileX, '<', tileXFinish, 'ty', tileY, '>', tileYFinish, tileY > tileYFinish );

		if ( tileY > tileYFinish && tileX < tileXFinish ) {

			writePNG( tileX, tileY-- );

		} else if ( tileX < tileXFinish - 1 ) {

			tileX++;
			tileY = tileYStart;

			processTiles();

		} else {

console.log(  'reading data complete - now processing the save' );

		}

	}

	function writePNG( tX, tY ) { // tilex , tileY

		var image = new Jimp( widthDestination, heightDestination, function( error, image ) {

			this.rgba( false ); // makes smaller file

			yDelta = tileYStart - tY;

			var yStart = heightDestination * Math.abs( yDelta ); // decide manually if needs to be 0, 1 or 2

//			yStart = yStart < 2 && ( tX < 0 || tX > 90 ) ? 2 : yStart;
//			yStart = yStart < 15 ? 15 : yStart;

			var yFinish = yStart + heightDestination;
//			var yFinish = yStart < 15 ? heightDestination : yStart + heightDestination;


			var xStart = widthDestination * tX;
			var xFinish = xStart + widthDestination;

//if ( tY > -5 )
//console.log( 'tX', tX, 'xStart', xStart, 'xFinish', xFinish, ' - tY', tY, 'yStart', yStart, 'yFinish', yFinish, 'yDelta', yDelta );

			min = 1000000;
			max = 0;
			var index = 0;

			for ( var y = yStart; y < yFinish; y++ ) {

// catch the errors in the data

				ytmp = y < 1 && tX < 0 && tX > -90 ? 1 : y;

				ytmp = y < 2 && tX < -90 ? 2 : ytmp;

				ytmp = y === yFinish - 1  && tX > 89 ? yFinish - 2 : ytmp;

				for ( var x = xStart; x < xFinish; x++ ) {

// without the 32767, makes for a split in the numbers...

					elevation = elevations[ ytmp * widthSource + x ] + 32767;

//					min = elevation < min ? elevation : min;
//					max = elevation > max ? elevation : max;

					this.bitmap.data[ index++ ] = ( elevation & 0x0000ff );
					this.bitmap.data[ index++ ] = ( elevation & 0x00ff00 ) >> 8; // * 256
					this.bitmap.data[ index++ ] = ( elevation & 0xff0000 ) >> 16; // * 65536
					this.bitmap.data[ index++ ] = 255;

				}
			}

			signEW = tX < 0 ? '' : '+';

			yTmp = tY > 0 ? tY - 1 : tY;

			signNS = yTmp < 0 ? '' : '+';

			tname = namePrefix + signEW + tX + signNS + yTmp + '.png';

		}).write( destinationDirName + '/' + signEW + tX + '/' + tname, callbackWrite( tname, tX, tY, 'yTmp', yTmp ) );


	}

	function callbackWrite( txt, tX, tY, yTmp ) {

//if ( tY < -85 )
//console.log(  'write: ', txt, tX, tY, yTmp );
//console.log( 'min: ', min, 'max: ', max );

		processTiles();

	}
