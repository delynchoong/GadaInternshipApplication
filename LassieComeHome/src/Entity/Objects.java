package Entity;

import java.awt.Graphics2D;
import java.awt.Rectangle;

import javax.swing.JPanel;

import Map.Tile;
import Map.TilesMap;

@SuppressWarnings("serial")
public abstract class Objects extends JPanel {
	
	// tile stuff
	protected TilesMap tileMap;
	protected int tileSize;
	protected double xmap;
	protected double ymap;
	
	// position and vector
	protected static double x;
	protected static double y;
	protected double dx;
	protected double dy;
	
	// dimensions
	protected int width;
	protected int height;
	
	// collision box
	protected int cwidth;
	protected int cheight;
	
	// collision
	protected int currRow;
	protected int currCol;
	protected double xdest;
	protected double ydest;
	protected double xtemp;
	protected double ytemp;
	protected boolean topLeft;
	protected boolean topRight;
	protected boolean bottomLeft;
	protected boolean bottomRight;

	// animation
	protected Animation animation;
	protected int currentAction;
	protected int previousAction;
	protected boolean facingRight;
	
	// movement
	protected boolean left;
	protected boolean right;
	protected boolean up;
	protected boolean down;
	protected boolean jumping;
	protected boolean falling;
	protected boolean dead;
	protected boolean timeUp;
	protected boolean nextLevel;
	
	
	// movement attributes
	protected double moveSpeed;
	protected double maxSpeed;
	protected double stopSpeed;
	protected double fallSpeed;
	protected double maxFallSpeed;
	protected double jumpStart;
	protected double stopJumpSpeed;
	
	
	public Objects(TilesMap tilemap) {
		tileMap = tilemap;
		tileSize = tilemap.getTileSize(); 
	}
	
	public Rectangle getRectangle() {
		return new Rectangle(
				(int)x - cwidth,
				(int)y - cheight,
				cwidth,
				cheight
		);
	}
	//check if the corner tile is the edge of the map
	public void calculateCorners(double x, double y) {
		
		int leftTile = (int)(x - cwidth / 2) / tileSize;
		int rightTile = (int)(x + cwidth / 2 - 1) / tileSize;
		int topTile = (int)(y - cheight / 2) / tileSize;
		int bottomTile = (int)(y + cheight / 2 - 1) / tileSize;
		//check corner tiles and store them if they are blocked tiles(solid)
		if(bottomTile<tileMap.getRow() && rightTile<tileMap.getCol()){
			int tl = tileMap.getType(topTile, leftTile);
			int tr = tileMap.getType(topTile, rightTile);
			int bl = tileMap.getType(bottomTile, leftTile);
			int br = tileMap.getType(bottomTile, rightTile);
			
			topLeft = tl == Tile.BLOCKED;
			topRight = tr == Tile.BLOCKED;
			bottomLeft = bl == Tile.BLOCKED;
			bottomRight = br == Tile.BLOCKED;
			
		}//check if the dog drop out of screen.
		else if (bottomTile>tileMap.getRow() || rightTile<tileMap.getCol()){
			setDead(true);
		}
		else nextLevel(true);
	}
	//check collision between the character and the tiles.
	public void checkTileMapCollision() {
		
		currCol = (int)x / tileSize;
		currRow = (int)y / tileSize;
		
		xdest = x + dx;
		ydest = y + dy;
		
		xtemp = x;
		ytemp = y;
		
		calculateCorners(x, ydest);
		if(dy < 0) {
			if(topLeft || topRight) {
				dy = 0;
				ytemp = currRow * tileSize + cheight / 2;
			}
			else {
				ytemp += dy;
			}
		}
		if(dy > 0) {
			if(bottomLeft || bottomRight) {
				dy = 0;
				falling = false;
				ytemp = (currRow + 1) * tileSize - cheight / 2;
			}
			else {
				ytemp += dy;
			}
		}
		
		calculateCorners(xdest, y);
		if(dx < 0) {
			if(topLeft || bottomLeft) {
				dx = 0;
				xtemp = currCol * tileSize + cwidth / 2;
			}
			else {
				xtemp += dx;
			}
		}
		if(dx > 0) {
			if(topRight || bottomRight) {
				dx = 0;
				xtemp = (currCol + 1) * tileSize - cwidth / 2;
			}
			else {
				xtemp += dx;
			}
		}
		
		if(!falling) {
			calculateCorners(x, ydest + 1);
			if(!bottomLeft && !bottomRight) {
				falling = true;
			}
		}
		
	}
	
	public static int getx() { return (int)x; }
	public static int gety() { return (int)y; }
	public int getWidth() { return width; }
	public int getHeight() { return height; }
	public int getCWidth() { return cwidth; }
	public int getCHeight() { return cheight; }
	//set the position of the object
	public void setPosition(double x, double y) {
		Objects.x = x;
		Objects.y = y;
	}
	//set the speed of the object
	public void setVector(double dx, double dy) {
		this.dx = dx;
		this.dy = dy;
	}
	//set the position of tilemap
	public void setMapPosition() {
		xmap = tileMap.getxpos();
		ymap = tileMap.getypos();
	}
	
	public void setLeft(boolean b) { left = b; }
	public void setRight(boolean b) { right = b; }
	public void setUp(boolean b) { up = b; }
	public void setDown(boolean b) { down = b; }
	public void setJump(boolean b) { jumping = b; }
	public void setDead(boolean b) { dead = b; }
	public void settimeUp(boolean b) { timeUp = b; }
	public void nextLevel(boolean b) { nextLevel = b;}
	
	//check if the time is up.
	public void timeEnd(){
		if (HUD.timer.isRunning()) ;
		else settimeUp(true);
	}
	
	//draw object
	public void draw(Graphics2D g) {
		if(facingRight) {
			g.drawImage(
					animation.getImage(),
					(int)(x + xmap - width / 2),
					(int)(y + ymap - height / 2),
					null
					);
		}
		else {
			g.drawImage(
					animation.getImage(),
					(int)(x + xmap - width / 2 + width),
					(int)(y + ymap - height / 2),
					-width,
					height,
					null
					);
		}
		
	}
	
}

