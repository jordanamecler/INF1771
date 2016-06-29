package INF1771_GameAI;
import INF1771_GameAI.Map.*;
import java.util.ArrayList;
import java.util.List;


public class GameAI
{
    Position player = new Position();
    String state = "ready";
    String dir = "north";
    long score = 0;
    int energy = 0;

    
    /**
     * Refresh player status
     * @param x			player position x
     * @param y			player position y
     * @param dir		player direction
     * @param state		player state
     * @param score		player score
     * @param energy	player energy
     */
    public void SetStatus(int x, int y, String dir, String state, long score, int energy)
    {
        player.x = x;
        player.y = y;
        this.dir = dir.toLowerCase();

        this.state = state;
        this.score = score;
        this.energy = energy;
    }

    /**
     * Get list of observable adjacent positions
     * @return List of observable adjacent positions 
     */
    public List<Position> GetObservableAdjacentPositions()
    {
        List<Position> ret = new ArrayList<Position>();

        ret.add(new Position(player.x - 1, player.y));
        ret.add(new Position(player.x + 1, player.y));
        ret.add(new Position(player.x, player.y - 1));
        ret.add(new Position(player.x, player.y + 1));

        return ret;
    }

    /**
     * Get list of all adjacent positions (including diagonal)
     * @return List of all adjacent positions (including diagonal)
     */
    public List<Position> GetAllAdjacentPositions()
    {
        List<Position> ret = new ArrayList<Position>();

        ret.add(new Position(player.x - 1, player.y - 1));
        ret.add(new Position(player.x, player.y - 1));
        ret.add(new Position(player.x + 1, player.y - 1));

        ret.add(new Position(player.x - 1, player.y));
        ret.add(new Position(player.x + 1, player.y));

        ret.add(new Position(player.x - 1, player.y + 1));
        ret.add(new Position(player.x, player.y + 1));
        ret.add(new Position(player.x + 1, player.y + 1));

        return ret;
    }

    /**
     * Get next forward position
     * @return next forward position
     */
    public Position NextPosition()
    {
        Position ret = null;
        if(dir.equals("north"))
                ret = new Position(player.x, player.y - 1);
        else if(dir.equals("east"))
                ret = new Position(player.x + 1, player.y);
        else if(dir.equals("south"))
                ret = new Position(player.x, player.y + 1);
        else if(dir.equals("west"))
                ret = new Position(player.x - 1, player.y);

        return ret;
    }

    /**
     * Player position
     * @return player position
     */
    public Position GetPlayerPosition()
    {
        return player;
    }
    
    /**
     * Set player position
     * @param x		x position
     * @param y		y position
     */
    public void SetPlayerPosition(int x, int y)
    {
        player.x = x;
        player.y = y;

    }

    /**
     * Observations received
     * @param o	 list of observations
     */
    public void GetObservations(List<String> o)
    {

        for (String s : o)
        {
            if(s.equals("blocked")){
            	
            } else if(s.equals("steps")){

            } else if(s.equals("breeze")){

            } else if(s.equals("flash")){

            } else if(s.equals("blueLight")){

            } else if(s.equals("redLight")){

            } else if(s.equals("greenLight")){

            } else if(s.equals("weakLight")){

            }
        }

    }

    /**
     * No observations received
     */
    public void GetObservationsClean()
    {
        
    }

    /**
     * Get Decision
     * @return command string to new decision
     */
    public String GetDecision()
    {
        java.util.Random rand = new java.util.Random();

	    	int  n = rand.nextInt(8);
	    	switch(n){
	     	case 0:
	            return "virar_direita";
	    	case 1:
	            return "virar_esquerda";
	    	case 2:
	            return "andar";
	    	case 3:
	            return "atacar";
	    	case 4:
	            return "pegar_ouro";
	    	case 5:
	            return "pegar_anel";
	    	case 6:
	            return "pegar_powerup";
	    	case 7:
	            return "andar_re";
	    }

    	return "";
    }
}
