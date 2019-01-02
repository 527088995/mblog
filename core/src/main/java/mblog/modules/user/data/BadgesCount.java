package mblog.modules.user.data;

import java.io.Serializable;

/**
 * @author langhsu on 2015/8/31.
 */
public class BadgesCount implements Serializable {
    private static final long serialVersionUID = 8276459939240769498L;

    private int notifies; // 通知数量
    private int messages; // 私信数量
    private int fans; // 粉丝数量
    private int follows; // 关注数量
    private int favors; // 喜欢数量
    private int comments; // 评论数量
    private int posts; // 文章数量

    public int getNotifies() {
        return notifies;
    }

    public void setNotifies(int notifies) {
        this.notifies = notifies;
    }

    public int getMessages() {
        return messages;
    }

    public void setMessages(int messages) {
        this.messages = messages;
    }

	public int getFans() {
		return fans;
	}

	public void setFans(int fans) {
		this.fans = fans;
	}

	public int getFollows() {
		return follows;
	}

	public void setFollows(int follows) {
		this.follows = follows;
	}

	public int getFavors() {
		return favors;
	}

	public void setFavors(int favors) {
		this.favors = favors;
	}

	public int getComments() {
		return comments;
	}

	public void setComments(int comments) {
		this.comments = comments;
	}

	public int getPosts() {
		return posts;
	}

	public void setPosts(int posts) {
		this.posts = posts;
	}
    
}
