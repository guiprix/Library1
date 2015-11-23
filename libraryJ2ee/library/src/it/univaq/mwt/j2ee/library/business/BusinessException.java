package it.univaq.mwt.j2ee.library.business;

public class BusinessException extends Exception {

	public BusinessException() {
		super();
	}


	public BusinessException(String message, Throwable cause) {
		super(message, cause);
	}

	public BusinessException(String message) {
		super(message);
	}

	public BusinessException(Throwable cause) {
		super(cause);
	}

	
	
}