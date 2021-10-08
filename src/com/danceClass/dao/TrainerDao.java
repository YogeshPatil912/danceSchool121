package com.danceClass.dao;

import java.util.List;

import com.danceClass.pojo.Trainer;

public interface TrainerDao 
{
	boolean addTrainer(Trainer trainer);
	boolean updateTrainer(Trainer trainer);
	boolean deleteTrainer(String tEmailId);
	Trainer searchByCategory(String tCat);
	List<Trainer> getAllTrainer();
}
