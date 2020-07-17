package com.onlinefitness.Repository;

import org.springframework.data.repository.CrudRepository;

import com.onlinefitness.model.OnlineModel;

public interface OnlineRepository extends CrudRepository<OnlineModel, Integer> {

		public OnlineModel findByUsernameAndPassword(String username, String password);
}
