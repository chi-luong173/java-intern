package chiluong.citynow.model;

import java.security.GuardedObject;
import java.security.Timestamp;
import java.util.Date;

public class PostModel extends AbstractModel<PostModel> {
	private String title;
	private String review;
	private String thumbnail;
	private int rate;
	private int upvoted;
	private int downvoted;
	private int status;
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	private Long userId;
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getUpvoted() {
		return upvoted;
	}
	public void setUpvoted(int upvoted) {
		this.upvoted = upvoted;
	}
	public int getDownvoted() {
		return downvoted;
	}
	public void setDownvoted(int downvoted) {
		this.downvoted = downvoted;
	}
	
}
