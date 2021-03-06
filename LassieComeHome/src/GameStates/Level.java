package GameStates;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.event.KeyEvent;

import Audio.Audio;
import File.Load;
import Map.Background;

public class Level extends GameState{

private Background bg;
	
	private Font titleFont;
	private Font menuFont;
	private Font font;
	private Color titleColor;
	
	public static int lastState;	
	private int currentChoice = 0;
	private String[] menu = {"1","2","3","4","5"};
	
	public Level()
	{
		init();
	}

	//load the background image
	public void init() {
		try{
			bg = new Background("/Backgrounds/menubg.gif", 1);
			bg.animation(-0.1, 0);
			
			titleColor = new Color(128, 0, 0);
			titleFont = new Font("Century Gothic", Font.PLAIN, 28);
			
			menuFont = new Font("Arial", Font.PLAIN, 12);
			
			font = new Font("Arial", Font.PLAIN, 10);
			Audio.music[GameStateManager.currentState-1].loop();
			//load file automatically.
			lastState = Load.load();
			
			if (lastState < 1)	lastState = 2;
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

	//redraw the background.
	public void update() 
	{
		bg.update();
	}
	
	//draw the title, select level menu and background image.
	public void draw(Graphics2D g) 
	{
		bg.draw(g);
		
		g.setFont(font);
		g.setColor(titleColor);
		g.drawString("Esc: Back", 5, 15);
		g.setFont(titleFont);
		g.setColor(titleColor);
		g.drawString("Select Level", 60, 80);
		
		g.setFont(menuFont);
		for (int counter=0; counter < menu.length; counter++){
			if (counter == currentChoice) g.setColor(Color.GREEN);
			else if (Integer.parseInt(menu[counter]) > lastState-1) g.setColor(Color.GRAY);
			else g.setColor(Color.BLACK);
			g.drawString(menu[counter], 145, 140 + counter * 15);
		}
	}
	
	//level selection
	public void select()
	{
		Audio.music[GameStateManager.currentState-1].stop();
		switch (this.currentChoice){
		case 0: 
			GameStateManager.setState(GameStateManager.LEVEL1);
			break;
		case 1: 
			GameStateManager.setState(GameStateManager.LEVEL2);
			break;
		case 2:
			GameStateManager.setState(GameStateManager.LEVEL3);
			break;
		case 3:
			GameStateManager.setState(GameStateManager.LEVEL4);
			break;
		case 4:
			GameStateManager.setState(GameStateManager.LEVEL5);
			break;
		}

	}
	
	//select, back and reset key
	public void keyPressed(int p)
	{
		if (p == KeyEvent.VK_ENTER)	select();
		if (p == KeyEvent.VK_UP){
			currentChoice--;
			if (currentChoice <0)	currentChoice = lastState-2;
		}
		if (p == KeyEvent.VK_DOWN){
			currentChoice++;
			if (currentChoice == lastState - 1)	currentChoice = 0;
		}	
		if (p == KeyEvent.VK_ESCAPE){
			GameStateManager.setState(GameStateManager.MENU);
		}
	}
	
	public void keyReleased(int r){}
}
