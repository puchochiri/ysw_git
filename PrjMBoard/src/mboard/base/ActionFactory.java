package mboard.base;

import mboard.impl.MenuActionList;
import mboard.impl.MenuActionUpdate;
import mboard.impl.MenuActionUpdateForm;
import mboard.impl.MenuActionWrite;
import mboard.impl.MenuActionWriteForm;
import mboard.impl.MenuDelete;

public class ActionFactory {
	
	public  Action  getAction(String command) {
		
		Action   action = null;
		switch (command) {
		// Menu
		case "MENULIST":   // 메뉴록록
			action     =  new  MenuActionList();
			break;
		case  "MENUWRITEFORM": // 새메뉴입력
			action   =  new  MenuActionWriteForm();
			break;
		case  "MENUWRITE":     // 메누저장하기
			action   =  new  MenuActionWrite();
			break;
		case  "MENUDELETE":     // 메뉴삭제하기
			action   =  new  MenuDelete();
			break;
		case  "MENUUPDATEFORM":     // 메뉴삭제하기
			action   =  new  MenuActionUpdateForm();
			break;
		case  "MENUUPDATE":     // 메뉴삭제하기
			action   =  new  MenuActionUpdate();
			break;

	
			
		
		// Board
		case "LIST":
			//action   =  new  BoardActionList();   

		default:
			break;
		}
		
		return action;
		
	} 
	
}






