package chiluong.citynow.paging;
import chiluong.citynow.sort.Sorter;
public interface Pageble {
	Integer getPage();
	Integer getOffset();
	Integer getLimit();
	Sorter getSorter();
}
