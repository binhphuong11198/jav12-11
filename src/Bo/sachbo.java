package Bo;

import java.util.ArrayList;

import Dao.sachdao;
import bean.sachbean;

public class sachbo {
	ArrayList<sachbean> listsach = new ArrayList<sachbean>();
	sachdao sd = new sachdao();

	public ArrayList<sachbean> getSach() throws Exception {
		listsach = sd.getSach();
		return listsach;
	}
}
