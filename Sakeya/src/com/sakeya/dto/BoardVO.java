package com.sakeya.dto;

import java.sql.Timestamp;

public class BoardVO {
	
	private int eseq;
	private String evtitle;
	private String evcontent;
	private Timestamp indate;
	public int getEseq() {
		return eseq;
	}
	public void setEseq(int eseq) {
		this.eseq = eseq;
	}
	public String getEvtitle() {
		return evtitle;
	}
	public void setEvtitle(String evtitle) {
		this.evtitle = evtitle;
	}
	public String getEvcontent() {
		return evcontent;
	}
	public void setEvcontent(String evcontent) {
		this.evcontent = evcontent;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}

}
