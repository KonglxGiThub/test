package test.dao;

import java.util.List;

import test.model.Student;

public interface StudentMapper2 {
	Student selectByIf(Student s);
	Student selectByChoose(Student s);
	Student selectByTrim(Student s);
	Student selectByWhere(Student s);
	int updateBySet(Student s);
	//传入一组学生id，查出对应的这些学生
	List<Student> selectByForEach(Integer[]sidArray);
}