// CzR 20200502

// allow 3-rd person view as driver only

	while { true } do {

		//sleep 0.1;
				
		if ( (alive player) && (cameraView == "EXTERNAL") ) then { 
		
			if ( (player != driver vehicle player) || (player == vehicle player) ) then { 
				
				player switchCamera "INTERNAL";
				
			};
			
		};
		
	};
