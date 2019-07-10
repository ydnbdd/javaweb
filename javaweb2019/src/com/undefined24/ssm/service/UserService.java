package com.undefined24.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.undefined24.ssm.dao.UserMapper;
import com.undefined24.ssm.vo.Bill;
import com.undefined24.ssm.vo.Goods;
import com.undefined24.ssm.vo.Receiver;
import com.undefined24.ssm.vo.Train;
import com.undefined24.ssm.vo.User;

@Service
public class UserService {
	
	@Autowired
	UserMapper userMapper;

	@Transactional
	public int Register(User user){
		return userMapper.Register(user);
	}
	
	
	@Transactional
	public User CheckUser(User user){
		return userMapper.CheckUser(user);
	}

	@Transactional
	public User checkUserNumber(String usernumber){
		return userMapper.checkUserNumber(usernumber);
	}
	
	
	@Transactional
	public User Login(User user){
		return userMapper.Login(user);
	}
	
	@Transactional
	public int ChangeProfile(User user){
		return userMapper.ChangeProfile(user);
	}
	
	
	@Transactional
	public int addGoods(Goods goods){
		return userMapper.addGoods(goods);
	}
	
	
	@Transactional
	public int addBill(Bill bill){
		return userMapper.addBill(bill);
	}
	
	
	@Transactional
	public int addReceiver(Receiver rec){
		return userMapper.addReceiver(rec);
	}
	
	@Transactional
	public List<Goods> selectGoods(int trackingID){
		return userMapper.selectGoods(trackingID);
	}
	
	@Transactional
	public List<Bill> sendGoods(User user){
		return userMapper.sendGoods(user);
	}
	
	@Transactional
	public List<Bill> acceptGoods(User user){
		return userMapper.acceptGoods(user);
	}
	
	@Transactional
	public List<Bill> receiveGoods(Train train){
		return userMapper.receiveGoods(train);
	}
	

	@Transactional
	public List<Bill> searchBill(String search_str){
		return userMapper.searchBill(search_str);
	}
	
	
	@Transactional
	public Receiver selectReceiver(Receiver receiver){
		return userMapper.selectReceiver(receiver);
	}
	
	@Transactional
	public Receiver selectReceiverX(Receiver receiver){
		return userMapper.selectReceiverX(receiver);
	}
	

	@Transactional
	public int changeBill(Bill bill){
		return userMapper.changeBill(bill);
	}
	
	@Transactional
	public int arriveConfirm(Bill bill){
		return userMapper.arriveConfirm(bill);
	}
}
