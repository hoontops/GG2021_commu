package GG2021.model;

import java.util.Date;

public class Member {
	private String M_ID;
	private String M_PASSWD;
	private String M_NAME;
	private String M_EMAIL;
	private String M_IMG;
	private int M_POINT;
	private Date M_SUBSCRIPTION_DATE;
	private Date M_ACCESS;
	
	public String getM_ID() {
		return M_ID;
	}
	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}
	public String getM_PASSWD() {
		return M_PASSWD;
	}
	public void setM_PASSWD(String m_PASSWD) {
		M_PASSWD = m_PASSWD;
	}
	public String getM_NAME() {
		return M_NAME;
	}
	public void setM_NAME(String m_NAME) {
		M_NAME = m_NAME;
	}
	public String getM_EMAIL() {
		return M_EMAIL;
	}
	public void setM_EMAIL(String m_EMAIL) {
		M_EMAIL = m_EMAIL;
	}
	public String getM_IMG() {
		return M_IMG;
	}
	public void setM_IMG(String m_IMG) {
		M_IMG = m_IMG;
	}
	public int getM_POINT() {
		return M_POINT;
	}
	public void setM_POINT(int m_POINT) {
		M_POINT = m_POINT;
	}
	public Date getM_SUBSCRIPTION_DATE() {
		return M_SUBSCRIPTION_DATE;
	}
	public void setM_SUBSCRIPTION_DATE(Date m_SUBSCRIPTION_DATE) {
		M_SUBSCRIPTION_DATE = m_SUBSCRIPTION_DATE;
	}
	public Date getM_ACCESS() {
		return M_ACCESS;
	}
	public void setM_ACCESS(Date m_ACCESS) {
		M_ACCESS = m_ACCESS;
	}
	
	
	
}
