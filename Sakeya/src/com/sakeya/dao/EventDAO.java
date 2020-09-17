package com.sakeya.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sakeya.dto.EventVO;


import util.DBManager;

public class EventDAO {

  private EventDAO() {
  }

  private static EventDAO instance = new EventDAO();

  public static EventDAO getInstance() {
    return instance;
  }

  public ArrayList<EventVO> listEvent(String id) {
    ArrayList<EventVO> eventList = new ArrayList<EventVO>();
    String sql = "select * from event order by eseq desc";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try {
      conn = DBManager.getConnection();
      pstmt = conn.prepareStatement(sql);
//      pstmt.setString(1, id);
      rs = pstmt.executeQuery();
      while (rs.next()) {
    	EventVO eventVO = new EventVO();
    	eventVO.setEseq(rs.getInt("eseq"));
    	eventVO.setEvtitle(rs.getString("evtitle"));
    	eventVO.setEvcontent(rs.getString("evcontent"));
    	eventVO.setIndate(rs.getTimestamp("indate"));
    	eventList.add(eventVO);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return eventList;
  }

  public EventVO getEvent(int seq) {
	EventVO eventVO = null;
    String sql = "select * from event where eseq=?";
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try {
      conn = DBManager.getConnection();
      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, seq);
      rs = pstmt.executeQuery();
      if (rs.next()) {
    	eventVO = new EventVO();
    	eventVO.setEseq(rs.getInt("eseq"));
    	eventVO.setEvtitle(rs.getString("evtitle"));
    	eventVO.setEvcontent(rs.getString("evcontent"));
    	eventVO.setIndate(rs.getTimestamp("indate"));
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      DBManager.close(conn, pstmt);
    }
    return eventVO;
  }

  public void insertevent(EventVO eventVO) {
    String sql = "insert into event (eseq, evtitle, "
        + "evcontent, indate) values(event_seq.nextval, ?, ?, ?)";

    Connection conn = null;
    PreparedStatement pstmt = null;
    try {
      conn = DBManager.getConnection();
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, eventVO.getEvtitle());
      pstmt.setString(2, eventVO.getEvcontent());
      pstmt.executeUpdate();
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      DBManager.close(conn, pstmt);
    }
  }

  /* *
   * 관리자 모드에서 필요한 메소드
   */
  public ArrayList<EventVO> listAllEvent() {
    ArrayList<EventVO> eventList = new ArrayList<EventVO>();
    // 게시판의 데이터를 가지고 오는 쿼리 rep:1:게시물 2: 답변
    String sql = "select * from event order by indate desc";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try {
      conn = DBManager.getConnection();
      pstmt = conn.prepareStatement(sql);
      rs = pstmt.executeQuery();
      while (rs.next()) {
    	EventVO eventVO = new EventVO();
    	eventVO.setEseq(rs.getInt("eseq"));
    	eventVO.setEvtitle(rs.getString("evtitle"));
    	eventVO.setEvcontent(rs.getString("evcontent"));
    	eventVO.setIndate(rs.getTimestamp("indate"));
        eventList.add(eventVO);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return eventList;
  }

//  public void updateEvent(EventVO eventVO) {
//    String sql = "update event set reply=?, rep='2' where qseq=?";
//
//    Connection conn = null;
//    PreparedStatement pstmt = null;
//    try {
//      conn = DBManager.getConnection();
//      pstmt = conn.prepareStatement(sql);
//      pstmt.setString(1, eventVO.getReply());
//      pstmt.setInt(2, eventVO.getEseq());      
//      pstmt.executeUpdate();
//    } catch (Exception e) {
//      e.printStackTrace();
//    } finally {
//      DBManager.close(conn, pstmt);
//    }
//  }
}
