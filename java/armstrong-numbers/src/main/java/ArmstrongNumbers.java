class ArmstrongNumbers {
	boolean isArmstrongNumber(int numberToCheck) {
		String numberString = Integer.toString(numberToCheck);
		double numDigits = numberString.length();
		int sum = 0;

		for (int i = 0; i < numDigits; i++) {
			char numChar = numberString.charAt(i);
			double digit = (double) (numChar - '0');
			sum += Math.pow(digit, numDigits);
		}
		return sum == numberToCheck;
	}
}
