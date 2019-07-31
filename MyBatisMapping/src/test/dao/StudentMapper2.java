package test.dao;

import java.util.List;

import test.model.Student;

public interface StudentMapper2 {
    int deleteById(Integer id);
    int insertStudent(Student student);
    int updateNameById(String name,Integer id);
    List<Student> selectAllStudent();
    List<Student> selectAllStudentAndClassName();
	

    
    

    
}