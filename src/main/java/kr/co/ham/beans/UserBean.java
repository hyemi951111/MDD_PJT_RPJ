package kr.co.ham.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserBean {

		private int user_key;
		private boolean userIdExist;
		private boolean userLogin;
		
		public UserBean() {
			this.userIdExist = false;
			this.userLogin = false;
		}
		
		@Size(min=4, max=20)
		@Pattern(regexp = "[a-zA-Z0-9]*")
		private String user_id;
		
		@Size(min=4, max=20)
		@Pattern(regexp = "[a-zA-Z0-9]*")
		private String user_pw;
		
		@Size(min=4, max=20)
		@Pattern(regexp = "[a-zA-Z0-9]*")
		private String user_pw2;
		
		@Size(min=3, max=20)
		private String user_phone;
		
		@Size(min=2, max=4)
		@Pattern(regexp = "[가-힣]*")
		private String user_name;
		
		@Size(min=10, max=30)
		private String user_email;
		
		public int getUser_key() {
			return user_key;
		}
		public void setUser_key(int user_key) {
			this.user_key = user_key;
		}
		public String getUser_id() {
			return user_id;
		}
		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}
		public String getUser_pw() {
			return user_pw;
		}
		public void setUser_pw(String user_pw) {
			this.user_pw = user_pw;
		}
		public String getUser_pw2() {
			return user_pw2;
		}
		public void setUser_pw2(String user_pw2) {
			this.user_pw2 = user_pw2;
		}
		public String getUser_phone() {
			return user_phone;
		}
		public void setUser_phone(String user_phone) {
			this.user_phone = user_phone;
		}
		public String getUser_name() {
			return user_name;
		}
		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}
		public String getUser_email() {
			return user_email;
		}
		public void setUser_email(String user_email) {
			this.user_email = user_email;
		}
		public boolean isUserIdExist() {
			return userIdExist;
		}
		public void setUserIdExist(boolean userIdExist) {
			this.userIdExist = userIdExist;
		}
		public boolean isUserLogin() {
			return userLogin;
		}
		public void setUserLogin(boolean userLogin) {
			this.userLogin = userLogin;
		}
		
		
}
