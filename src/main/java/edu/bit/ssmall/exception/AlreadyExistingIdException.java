package edu.bit.ssmall.exception;

public class AlreadyExistingIdException extends RuntimeException{

	private static final long serialVersionUID = 1L;
   
	 public AlreadyExistingIdException(String message) {
	        super("이미존재합니다.");
	 }


	
}



