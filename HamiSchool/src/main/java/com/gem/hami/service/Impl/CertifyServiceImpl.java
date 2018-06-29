package com.gem.hami.service.Impl;


import com.gem.hami.dao.PersonApplicationMapper;
import com.gem.hami.dao.SchoolApplicationMapper;
import com.gem.hami.dao.SchoolMapper;
import com.gem.hami.entity.PersonApplication;
import com.gem.hami.entity.School;
import com.gem.hami.entity.SchoolApplication;
import com.gem.hami.service.CertifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CertifyServiceImpl implements CertifyService {

    @Autowired
    private SchoolApplicationMapper schoolApplicationMapper;
    @Autowired
    private SchoolMapper schoolMapper;
    @Autowired
    private PersonApplicationMapper personApplicationMapper;

    @Override
    public boolean addSchoolApplication(SchoolApplication schoolApplication) {
        return schoolApplicationMapper.insetSchoolApplication(schoolApplication);
    }

    @Override
    public List<School> findCertifiedSchool() {
        return schoolMapper.selectCertifiedSchool();
    }

    @Override
    public int findSchoolIdByName(String name) {
        return schoolMapper.selectSchoolIdByName(name);
    }

    @Override
    public boolean addPersonAplication(PersonApplication personApplication) {
        return personApplicationMapper.insertPersonAplication(personApplication);
    }

    @Override
    public boolean removePersonApplication(int adminId, int personApplicationId) {
        return false;
    }

    @Override
    public boolean removeSchoolApplication(int adminId, int schoolApplicationId) {
        return false;
    }
}
