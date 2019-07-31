package com.etc.admin.daos;

import java.util.List;

import com.etc.admin.models.CarGoods;
import com.etc.admin.models.CarGoodsKey;
import com.etc.admin.models.CarType;

public interface CarGoodsMapper {
    int deleteByPrimaryKey(CarGoodsKey key);

    int insert(CarGoods record);

    int insertSelective(CarGoods record);

    CarGoods selectByPrimaryKey(CarGoodsKey key);

    int updateByPrimaryKeySelective(CarGoods record);

    int updateByPrimaryKeyWithBLOBs(CarGoods record);

    int updateByPrimaryKey(CarGoods record);
    //分页，手动输入跳转到指定页
    List<CarGoods> selectcarGoodsPaging(Integer start);
    //分页，总条数
    Integer selectcarGoodsCountPaging();
    
    int deleteCarGoodsById(Integer id);
    
    List<CarType> selectCarGoodsOfType();
    
    int insertCarGoods(CarGoods car);
    
    int selectCarGoodsMaxId();
    
    //插入goods的img_id
    int insertCarGoodsImgId();
    
    
}