package com.webapp.version.entity;

import com.webapp.commons.IdEntity;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by cako on 2014/5/5.
 */
@Entity
@Table(name = "h_version")
public class Version extends IdEntity {

    private String fileName;
    private Long fileSize;
    private String fileType;
    private String filePath;

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Long getFileSize() {
        return fileSize;
    }

    public void setFileSize(Long fileSize) {
        this.fileSize = fileSize;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}
