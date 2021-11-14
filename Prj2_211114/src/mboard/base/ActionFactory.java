package mboard.base;

import mboard.impl.CoronaDistanceAction;
import mboard.impl.HomeAction;
import mboard.impl.LoginAction;
import mboard.impl.VaccineStaticsAction;

public class ActionFactory {
	
	public  Action  getAction(String command) {
		
		Action   action = null;
		switch (command) {
		// Menu
		case "LOGIN":   // 로그인
			action     =  new  LoginAction();
			break;
		case "HOME":   // 홈
			action     =  new  HomeAction();
			break;
		case "CORONADISTANCE":   // 사회적거리두기
			action     =  new  CoronaDistanceAction();
			break;
		case "VACCINESTATICS":   // 백신통계
			action     =  new  VaccineStaticsAction();
			break;
		

	
			
		
		  

		default:
			break;
		}
		
		return action;
		
	} 
	
}






