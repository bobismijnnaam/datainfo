package nl.utwente.di;

public class Quoter {

	public double getBookPrice(String param) {
		if (param.equals("1")) {
			return 10.0;
		} else if (param.equals("2")) {
			return 45.0;
		} else if (param.equals("3")) {
			return 20.0;
		} else if (param.equals("4")) {
			return 35.0;
		} else if (param.equals("5")) {
			return 50.0;
		} else {
			return 0.0;
		}
	}
}