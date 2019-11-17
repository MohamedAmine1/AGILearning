package com.agil.dao;

import java.io.Serializable;
import java.util.List;

public interface GenericDao<T extends Serializable> {
	
    public List<T> findAll();
	
	public T findOne( int id );

	public void create(T entity);
	
	public void update(T entity);
	
	public void delete( T entity );
	
	public void deleteById( int entityId );

}
