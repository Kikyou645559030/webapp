package com.webapp.version.dao;


import com.webapp.version.entity.Version;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by cako on 2014/5/5.
 */
public interface VersionDao extends JpaRepository<Version, String> {

    @Query("select v from Version v where v.id in ?1")
    public List<Version> findVersions(List<String> versionIds);
}
