package INF1771_GameAI.Map;

public class Position {
	/**
	 * Player x position
	 */
	public int x;
	/**
	 * Player y position
	 */
	public int y;

	public Position() {
		x = 0;
		y = 0;
	}

	/**
	 * Set new position
	 * @param x	position x
	 * @param y position y
	 */
	public Position(int x, int y) {
		this.x = x;
		this.y = y;
	}

}
