package com.hodro.dto;

public class PageMakerDTO {
	private int totalCount;   //전체 데이터 개수
	private int startPage;    //시작 페이지 번호
	private int endPage;      //끝 페이지 번호
	private boolean prev;     //이전 페이지
	private boolean next;     //이후 페이지 
	private int displayPageNum = 10; // 화면에 보여지는 블럭수
	private int finalPage;
	private int firstPage;
	
	private CriteriaDTO criDto; 

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcDate();
	}
	private void calcDate() {
		//math 클래스의 ceil 메서드는 무조건 소수점을 올림함 0.2 = 1로처리
		endPage = (int)Math.ceil(criDto.getPage()/(double)displayPageNum)*displayPageNum; //10
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int)(Math.ceil(totalCount/(double)(criDto.getPerPageNum()/criDto.getPage())));
		
		setFinalPage(tempEndPage);
		
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false: true;
		next = (endPage *(criDto.getPerPageNum()/criDto.getPage())) >= totalCount? false : true;
		
		firstPage =1;
	}

	public int getFirstPage() {
		return firstPage;
	}

	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public CriteriaDTO getCriDto() {
		return criDto;
	}

	public void setCriDto(CriteriaDTO criDto) {
		this.criDto = criDto;
	}

	public int getFinalPage() {
		return finalPage;
	}

	public void setFinalPage(int finalPage) {
		
		this.finalPage = finalPage;
	}

	@Override
	public String toString() {
		return "PageMakerDTO [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", finalPage="
				+ finalPage + ", criDto=" + criDto + "]";
	}

	
	
	
}
