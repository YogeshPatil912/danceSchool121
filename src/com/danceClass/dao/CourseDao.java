package com.danceClass.dao;

import java.util.List;

import com.danceClass.pojo.Course;

public interface CourseDao 
{
	boolean addCourse(Course course);
	boolean updateCourse(Course course);
	boolean deleteCourse(int courseId);
	List<Course> serachByTypeCat(String courseType,String courseCat);
	Course serachById(int courseId);
	List<Course> getAll();
}
