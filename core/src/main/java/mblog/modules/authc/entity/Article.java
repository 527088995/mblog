package mblog.modules.authc.entity;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.search.annotations.NumericField;
import org.hibernate.search.annotations.SortableField;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * 文章的JavaBean.
 * date:2017-02-09
 */
@Entity
@Table(name = "mto_csdn")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Article  implements Serializable {

    private static final long serialVersionUID = -1153854616385727165L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @SortableField
    @NumericField
    private long id;
	/**
	 * 文章链接的相对地址
	 */
	private String address;

    /**
     * 文章标题
     */
    private String title;

    /**
     * 文章简介
     */
    private String desption;

    /**
     * 文章发表时间
     */
    @Temporal(value = TemporalType.TIMESTAMP)
    private Date time;
    /**
     * 阅读数
     */
    @Column(name = "read_num")
    private int readNum;
    /**
     * 评论数
     */
    @Column(name = "comment_num")
    private int commentNum;

    @Column(name = "type")
    private  String type;

    @Column(name = "status")
    private  int status;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getReadNum() {
        return readNum;
    }

    public void setReadNum(int readNum) {
        this.readNum = readNum;
    }

    public int getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(int commentNum) {
        this.commentNum = commentNum;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDesption() {
        return desption;
    }

    public void setDesption(String desption) {
        this.desption = desption;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
