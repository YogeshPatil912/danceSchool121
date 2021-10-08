package com.danceClass.dao;

import java.util.List;

import com.danceClass.pojo.DanceVideo;

public interface VideoDao 
{
	boolean addVideo(DanceVideo video);
	boolean deleteVideo(int vId);
	DanceVideo searchByCat(String vCat);
	List<DanceVideo> getAllVideo();
}
