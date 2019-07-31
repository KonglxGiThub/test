package test.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import test.model.Student;

public interface StudentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    int insertSelective(Student record);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
    
    Student selectByPrimaryKey(Integer id);
    Student selectByName(String name);
    List<HashMap> selectByNameReturnHashMap(String name);
    List<Student> selectByLikeName(String name);
    Student selectByNameAndId(Student stu);
    Student selectByNameAndId11(Integer id,@Param("name")String name);
    
    

    
}