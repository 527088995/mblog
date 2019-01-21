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
@Table(name = "mto_monitor")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Monitor implements Serializable {

    private static final long serialVersionUID = -1153854616385727165L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @SortableField
    @NumericField
    private long id;
	/**
	 * 文章链接的相对地址
	 */
	private String ip;
    /**
     * 文章标题
     */
    @Column(name = "user_id")
    private long userId;

    @Column(name = "post_id")
    private long postId;
    /**
     * 文章发表时间
     */
    @Temporal(value = TemporalType.TIMESTAMP)
    @Column(name = "create_time")
    private Date createTime;
    /**
     * 文章发表时间
     */
    @Temporal(value = TemporalType.TIMESTAMP)
    @Column(name = "modified_time")
    private Date modifiedTime;

    private String address;

    private String isp;

    private String ipjson;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getModifiedTime() {
        return modifiedTime;
    }

    public void setModifiedTime(Date modifiedTime) {
        this.modifiedTime = modifiedTime;
    }

    public long getPostId() {
        return postId;
    }

    public void setPostId(long postId) {
        this.postId = postId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIsp() {
        return isp;
    }

    public void setIsp(String isp) {
        this.isp = isp;
    }

    public String getIpjson() {
        return ipjson;
    }

    public void setIpjson(String ipjson) {
        this.ipjson = ipjson;
    }
}
