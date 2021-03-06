package Map;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;

import Main.GameLoop;

public class Background {
	
	private BufferedImage img;
	
	private double xpos;
	private double ypos;
	private double dx;
	private double dy;
	private double moveScale;
	//load the background images
	public Background(String path, double ms)
	{
		try{
			img = ImageIO.read(getClass().getResourceAsStream(path));
			moveScale = ms;
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	//set the position for the background image
	public void setPosition(double x, double y)
	{
		this.xpos = (x * moveScale) % GameLoop.WIDTH;
		this.ypos = (y * moveScale) % GameLoop.HEIGHT;
	}
	//play animations
	public void animation(double dx, double dy)
	{
		this.dx = dx;
		this.dy = dy;
	}
	//redraw background image
	public void update() 
	{
		xpos = xpos + dx;
		ypos = ypos + dy;
	}
	//draw the background image
	public void draw(Graphics2D g) 
	{
		g.drawImage(img, (int) xpos, (int) ypos, null);
		
		if (xpos < 0)
		{
			g.drawImage(img, (int) xpos + GameLoop.WIDTH, (int) ypos, null);
		}	
		if (xpos > 0)
		{
			g.drawImage(img, (int) xpos - GameLoop.WIDTH, (int) ypos, null);
		}	
	}

}
