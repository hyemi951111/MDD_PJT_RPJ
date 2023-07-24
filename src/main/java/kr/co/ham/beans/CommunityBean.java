package kr.co.ham.beans;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

public class CommunityBean {

		private int com_key;
		private int com_writer_index;
		private String com_date;
		private MultipartFile upload_file;
		private String com_file;
		private String com_writer_name;
		
		private String searchType;
		private String keyword;
		
		@NotBlank
		private String com_title;
		@NotBlank
		private String com_content;
		
		
		
		public String getSearchType() {
			return searchType;
		}
		public void setSearchType(String searchType) {
			this.searchType = searchType;
		}
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}
		public int getCom_key() {
			return com_key;
		}
		public void setCom_key(int com_key) {
			this.com_key = com_key;
		}
		public int getCom_writer_index() {
			return com_writer_index;
		}
		public void setCom_writer_index(int com_writer_index) {
			this.com_writer_index = com_writer_index;
		}
		public String getCom_date() {
			return com_date;
		}
		public void setCom_date(String com_date) {
			this.com_date = com_date;
		}
		public String getCom_title() {
			return com_title;
		}
		public void setCom_title(String com_title) {
			this.com_title = com_title;
		}
		public String getCom_content() {
			return com_content;
		}
		public void setCom_content(String com_content) {
			this.com_content = com_content;
		}
		public String getCom_file() {
			return com_file;
		}
		public void setCom_file(String com_file) {
			this.com_file = com_file;
		}
		public MultipartFile getUpload_file() {
			return upload_file;
		}
		public void setUpload_file(MultipartFile upload_file) {
			this.upload_file = upload_file;
		}
		public String getCom_writer_name() {
			return com_writer_name;
		}
		public void setCom_writer_name(String com_writer_name) {
			this.com_writer_name = com_writer_name;
		}
		
		
}
