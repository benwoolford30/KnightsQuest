function scr_getunoccupied() {
	//scr_getunoccupied(x,y)
	with obj_game
	{
		var samespot=true;
		while (samespot=true)
		{
			var NewX=irandom(Grid.gridx-1)+1;
			var NewY=irandom(Grid.gridy-1)+1;
			samespot=false;
			for (var check=0;check<array_length_1d(GamePiecesX);check++)
			{
				if (GamePiecesX[check]=NewX && GamePiecesY[check]=NewY)
				{
					samespot=true;
					break;
				}
			}
		}
		GamePiecesX[NoofPieces]=NewX;
		GamePiecesY[NoofPieces]=NewY;
		NoofPieces+=1;
		returndata[0]=NewX;
		returndata[1]=NewY;
		return returndata;
	}


}
