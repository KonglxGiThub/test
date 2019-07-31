package test.dao;

import java.util.List;

import test.model.Student;

public interface StudentMapper2 {
    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
   Student selectStudentAndClassName(Integer id);
}