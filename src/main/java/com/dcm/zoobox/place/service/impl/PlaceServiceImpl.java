package com.dcm.zoobox.place.service.impl;

import com.dcm.zoobox.place.mapper.PlaceMapper;
import com.dcm.zoobox.place.model.AnimalBusi;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dcm.zoobox.place.service.PlaceService;

import lombok.extern.log4j.Log4j;

import java.util.ArrayList;

@Service
@Log4j
public class PlaceServiceImpl implements PlaceService {

    @Setter(onMethod_ = @Autowired)
    private PlaceMapper placeMapper;


    @Override
    public void save(ArrayList<AnimalBusi> list) {
        placeMapper.save(list);

    }
}
