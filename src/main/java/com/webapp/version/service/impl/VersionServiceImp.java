package com.webapp.version.service.impl;

import com.webapp.version.dao.VersionDao;
import com.webapp.version.entity.Version;
import com.webapp.version.service.VersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by cako on 2014/5/5.
 */
@Component
@Transactional(readOnly = false)
public class VersionServiceImp implements VersionService {
    private VersionDao versionDao;

    @Autowired
    public void setVersionDao(VersionDao versionDao) {
        this.versionDao = versionDao;
    }

    @Override
    public Version get(String id) {
        return versionDao.findOne(id);
    }

    @Override
    public Version save(Version version) {
        return versionDao.saveAndFlush(version);
    }

    @Override
    public List<Version> findVersions(List<String> versionIds) {
        if (versionIds.size() == 0){
            versionIds.add("1");
        }
        return versionDao.findVersions(versionIds);
    }
}
