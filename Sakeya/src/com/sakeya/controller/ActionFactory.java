package com.sakeya.controller;

import com.sakeya.admin.controller.action.AdminIndexAction;
import com.sakeya.admin.controller.action.AdminLoginAction;
import com.sakeya.admin.controller.action.AdminLogoutAction;
import com.sakeya.admin.controller.action.AdminMemberListAction;
import com.sakeya.admin.controller.action.AdminOrderListAction;
import com.sakeya.admin.controller.action.AdminOrderSaveAction;
import com.sakeya.admin.controller.action.AdminProductDetailAction;
import com.sakeya.admin.controller.action.AdminProductListAction;
import com.sakeya.admin.controller.action.AdminProductUpdateAction;
import com.sakeya.admin.controller.action.AdminProductUpdateFormAction;
import com.sakeya.admin.controller.action.AdminProductWriteAction;
import com.sakeya.admin.controller.action.AdminProductWriteFormAction;
import com.sakeya.admin.controller.action.AdminQnaDetailAction;
import com.sakeya.admin.controller.action.AdminQnaListAction;
import com.sakeya.admin.controller.action.AdminQnaResaveAction;
import com.sakeya.controller.action.Action;
import com.sakeya.controller.action.CartDeleteAction;
import com.sakeya.controller.action.CartInsertAction;
import com.sakeya.controller.action.CartListAction;
import com.sakeya.controller.action.ContractAction;
import com.sakeya.controller.action.FindZipNumAction;
import com.sakeya.controller.action.IndexAction;
import com.sakeya.controller.action.JoinAction;
import com.sakeya.controller.action.JoinFormAction;
import com.sakeya.controller.action.LoginAction;
import com.sakeya.controller.action.LoginFormAction;
import com.sakeya.controller.action.LogoutAction;
import com.sakeya.controller.action.MyPageAction;
import com.sakeya.controller.action.OftenQuestionsAction1;
import com.sakeya.controller.action.OftenQuestionsAction2;
import com.sakeya.controller.action.OftenQuestionsAction3;
import com.sakeya.controller.action.OftenQuestionsAction4;
import com.sakeya.controller.action.OftenQuestionsAction5;
import com.sakeya.controller.action.OftenQuestionsAction6;
import com.sakeya.controller.action.OrderAllAction;
import com.sakeya.controller.action.OrderDetailAction;
import com.sakeya.controller.action.OrderInsertAction;
import com.sakeya.controller.action.ProductDetailAction;
import com.sakeya.controller.action.ProductKindAction;
import com.sakeya.controller.action.QnaListAction;
import com.sakeya.controller.action.QnaViewAction;
import com.sakeya.controller.action.QnaWriteAction;
import com.sakeya.controller.action.QnaWriteFormAction;
import com.sakeya.controller.action.idCheckFormAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	public ActionFactory() {
		super();
	}
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action =null;
		System.out.println("ActionFactory :" + command);
		
		if(command.equals("index")) {
			action = new IndexAction();
		}else if (command.equals("product_detail")) {
			action = new ProductDetailAction();
		}else if(command.equals("catagory")) {
			action=new ProductKindAction();
		}else if(command.equals("contract")) {
			action=new ContractAction();
		}else if(command.equals("join_form")) {
			action = new JoinFormAction();
		}else if(command.equals("id_check_form")) {
			action = new idCheckFormAction();
		}else if (command.equals("find_zip_num")) {
			 action = new FindZipNumAction();
		} else if(command.equals("join")) {
			action = new JoinAction();
		} else if(command.equals("login_form")) {
			action = new LoginFormAction();
		}else if (command.equals("login")) {
			 action = new LoginAction();
		}else if(command.equals("logout")) {
			action = new LogoutAction();
		}
		else if (command.equals("cart_insert")) {
			 action = new CartInsertAction();
		}
		else if (command.equals("cart_list")) {
			 action = new CartListAction();
		}else if(command.equals("cart_delete")) {
			action = new CartDeleteAction();
		}else if(command.equals("order_list")) {
			action = new OrderInsertAction();
		}else if (command.equals("order_insert")) {
			 action = new OrderInsertAction();
		 }  else if (command.equals("mypage")) {
			 action = new MyPageAction();
		 } else if (command.equals("order_detail")) {
			 action = new OrderDetailAction();
		 } else if (command.equals("order_all")) {
			 action = new OrderAllAction();
		 }
		else if (command.equals("customer1")) {
			 action = new OftenQuestionsAction1();
		 }else if (command.equals("customer2")) {
			 action = new OftenQuestionsAction2();
		 }else if (command.equals("customer3")) {
			 action = new OftenQuestionsAction3();
		 }else if (command.equals("customer4")) {
			 action = new OftenQuestionsAction4();
		 }else if (command.equals("customer5")) {
			 action = new OftenQuestionsAction5();
		 }else if (command.equals("customer6")) {
			 action = new OftenQuestionsAction6();
		 }else if(command.equals("qna_list")) {
			 action = new QnaListAction();
		 }else if(command.equals("qna_write_form")) {
			 action = new QnaWriteFormAction();
		 }else if (command.equals("qna_write")) {
			 action = new QnaWriteAction();
		 }else if (command.equals("qna_view")) {
			 action = new QnaViewAction();
		 } 
		
		 if(command.equals("admin_login_form")){
	        	action = new AdminIndexAction();
	        } else if(command.equals("admin_login")) {
	        	action = new AdminLoginAction();
	        } else if (command.equals("admin_logout")) {
	        	action = new AdminLogoutAction();
	        } else if(command.equals("admin_product_list")) {
	        	action = new AdminProductListAction();
	        } else if (command.equals("admin_product_write_form")){
	        	action = new AdminProductWriteFormAction();
	        } else if (command.equals("admin_product_write")) {
	        	action = new AdminProductWriteAction();
	        } else if (command.equals("admin_product_detail")) {
	        	action = new AdminProductDetailAction();
	        } else if (command.equals("admin_product_update_form")) {
	        	action = new AdminProductUpdateFormAction();
	        } else if (command.equals("admin_product_update")) {
	        	action = new AdminProductUpdateAction();
	        } else if (command.equals("admin_order_list")) {
	        	action = new AdminOrderListAction();
	        } else if (command.equals("admin_order_save")) {
	        	action = new AdminOrderSaveAction();
	        } else if (command.equals("admin_member_list")) {
	        	action = new AdminMemberListAction();
	        } else if (command.equals("admin_qna_list")) {
	        	 action = new AdminQnaListAction();
	        }else if (command.equals("admin_qna_detail")) {
	        	 action = new AdminQnaDetailAction();
	        } else if (command.equals("admin_qna_repsave")) {
	        	 action = new AdminQnaResaveAction();
	        }
	         
		
		return action;
		
		
	}
	
	

}
