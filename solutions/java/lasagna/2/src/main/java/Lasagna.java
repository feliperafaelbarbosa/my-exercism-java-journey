public class Lasagna {
	private static final int EXPECTED_MINUTES_IN_OVEN = 40;
	private static final int PREPARATION_TIME_PER_LAYER = 2;
	
	public int expectedMinutesInOven() {
		return EXPECTED_MINUTES_IN_OVEN;
	}

	public int remainingMinutesInOven(int time) {
		return expectedMinutesInOven() - time;
	}
	
	public int preparationTimeInMinutes(int layerAmount) {
		return layerAmount * PREPARATION_TIME_PER_LAYER;
	}
	
	public int totalTimeInMinutes(int layerAmount, int time) {
		return preparationTimeInMinutes(layerAmount) + time;
	}
}
