package com.webapp.commons;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@MappedSuperclass
@Access(AccessType.PROPERTY)
public class IdEntity {
    protected String id;//ID
    protected Date createTime = new Date();//创建时间
    protected Date updateTime;//修改时间

    @Id
    @GeneratedValue(generator="system-uuid")
    @GenericGenerator(name="system-uuid", strategy="uuid2")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Column(updatable=false)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;
        IdEntity other = (IdEntity)obj;
        if (getId() == null) {
            return false;
        }
        return getId().equals(other.getId());
    }
}