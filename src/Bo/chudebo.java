package Bo;

import java.util.ArrayList;

import Dao.chudedao;
import bean.ChuDebean;

public class chudebo {
	ArrayList<ChuDebean> listchude = new ArrayList<ChuDebean>();
	chudedao cdd = new chudedao();

	public ArrayList<ChuDebean> getchude() throws Exception {
		listchude = cdd.getchude();
		return listchude;

	}
}
