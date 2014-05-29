package com.webapp.version.service;

import com.webapp.version.entity.Version;

import java.util.List;

/**
 * Created by cako on 2014/5/5.
 */
public interface VersionService {
    public Version get(String id);

    public Version save(Version version);

    public List<Version> findVersions(List<String> versionIds);


}
