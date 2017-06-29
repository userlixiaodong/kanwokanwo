package cv.focus.common.infrastructure.util.paginaction;

import java.util.List;

public class WebPage<E> {

	public static int DEFAULT_PAGE_SIZE = 12;

	public Integer pageSize = DEFAULT_PAGE_SIZE;

	private Integer currentPage = 1;

	private Integer startCount;

	private Integer endCount;

	private Integer totalCount;

    private Integer totalPage = 1;

	private List<E> data;

	private List<E> dataView;

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
		try {
		    if (totalCount % pageSize == 0) {
		    	this.totalPage = totalCount / pageSize;
		    } else {
		    	this.totalPage = totalCount / pageSize + 1;
		    }
        } catch (Exception e) {
            this.totalPage = 1;
        }
	}

	public Integer getTotalPage() {
		return this.totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public List<E> getData() {
		return data;
	}

	public void setData(List<E> data) {
		this.data = data;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getStartCount() {
		try {
            if (this.currentPage == 1) {
				this.startCount = 0;
			} else {
				this.startCount = (this.currentPage - 1) * this.getPageSize();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return startCount;
	}

	public void setStartCount(Integer startCount) {
		this.startCount = startCount;
	}

	public Integer getEndCount() {
		this.endCount = this.currentPage * this.pageSize;
		return endCount;
	}

	public void setEndCount(Integer endCount) {
		this.endCount = endCount;
	}

	public List<E> getDataView() {
		return dataView;
	}

	public void setDataView(List<E> dataView) {
		this.dataView = dataView;
	}

}
