package kr.co.ham.beans;

public class PageBeanOne {

	public String getSearchTypeKeyword() {
		 
		 if(searchType.equals("") || keyword.equals("")) {
		  return ""; 
		 } else {
		  return "&amp;searchType=" + searchType + "&amp;keyword=" + keyword; 
		 }
		}

		private String searchType;
		private String keyword; 

		public void setSearchType(String searchType) {
		 this.searchType = searchType;  
		}

		public String getSearchType() {
		 return searchType;
		} 

		public void setKeyword(String keyword) {
		 this.keyword = keyword;  
		} 

		public String getKeyword() {
		 return keyword;
		}
		
}
