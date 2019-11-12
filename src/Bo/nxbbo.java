package Bo;

import java.util.ArrayList;

import Dao.nxbdao;
import bean.nxbbean;

public class nxbbo {
ArrayList<nxbbean> listnxb= new ArrayList<nxbbean>();
nxbdao nxbd =new nxbdao();
public ArrayList<nxbbean> getnxb() throws Exception{
	listnxb =nxbd.getnxb();
	return listnxb;
	
}
}
