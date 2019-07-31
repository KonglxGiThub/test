package test.dao;
import test.model.User;

public interface UserMapper {

    User selectByPrimaryKey(Integer uid);
    User selectUserAndProductByID(Integer uid);

}