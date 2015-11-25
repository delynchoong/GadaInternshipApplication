package GameStates;

import java.awt.Graphics2D;
import java.awt.event.KeyEvent;

import javax.swing.JOptionPane;

import Audio.Audio;
import Entity.HUD;
import Main.GameLoop;

public class GameStateManager {
	
	public static GameState[] gameStates;
	public static int currentState;
	
	//set different states into array list.
	public static final int numStates = 7;
	public static final int MENU = 0;
	public static final int LEVEL = 1;
	public static final int LEVEL1 = 2;
	public static final int LEVEL2 = 3;
	public static final int LEVEL3 = 4;
	public static final int LEVEL4 = 5;
	public static final int LEVEL5 = 6;
	
	public GameStateManager() {
		
		gameStates = new GameState[numStates];
		
		currentState = MENU;
		loadState(currentState);	
	}
	
	//unload the currentstate
	public static void unloadState(int state){
		gameStates[state] = null;
	}
	
	//load the currentstate
	public static void loadState(int state){
		if (state == MENU) gameStates[state] = new Menu();
		if (state == LEVEL) gameStates[state] = new Level();
		if (state == LEVEL1) gameStates[state] = new Level1();
		if (state == LEVEL2) gameStates[state] = new Level2();
		if (state == LEVEL3) gameStates[state] = new Level3();
		if (state == LEVEL4) gameStates[state] = new Level4();
		if (state == LEVEL5) gameStates[state] = new Level5();
	}
	
	//set state by unloading the previous state and loading the next one.
	public static void setState(int state) {
		unloadState(currentState);
		currentState = state;
		loadState(currentState);
	}
	
	//call the update function from the current state.
	public void update() {
		try{
			gameStates[currentState].update();
		}catch(Exception e){}
	}
	//call the draw function from the current state.
	public void draw(Graphics2D g) {
		try{
			gameStates[currentState].draw(g);
		}catch(Exception e){} 
	}
	
	public static int getState(){ return currentState;}
	
	//capturing key events.
	@SuppressWarnings({"deprecation"})
	public void keyPressed(int p) {
		gameStates[currentState].keyPressed(p);
		if (currentState > 1 && p == KeyEvent.VK_P){
			try {
				Audio.music[GameStateManager.currentState-1].stop();
			} catch (Exception e) {
				e.printStackTrace();
			}
			HUD.timer.stop();//stop the time.
			GameLoop.thread.suspend();//stop the thread.
			Object[] options = {"Resume","Restart","Main Menu", "Quit"};//Options to choose from.
			int n = JOptionPane.showOptionDialog(null,
					"Paused",
					"Lassie",
					JOptionPane.YES_NO_CANCEL_OPTION,
					JOptionPane.INFORMATION_MESSAGE,
					null,     
					options, 
					options[0]);
	
		switch (n){
		case 0:
			HUD.timer.start();//resume the time
			GameLoop.thread.resume();//resume the thread.
			Audio.music[GameStateManager.currentState-1].resume();//resume the music.
			break;
		case 1:
			GameLoop.thread.resume();
			setState(currentState);
			break;
		case 2:
			GameLoop.thread.resume();
			setState(MENU);
			break;
		case 3:
			System.exit(0);
			break;
		}
	}
}
	public void keyReleased(int r) {
		gameStates[currentState].keyReleased(r);
	}
}
