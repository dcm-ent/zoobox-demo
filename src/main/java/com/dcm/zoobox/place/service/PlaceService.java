package com.dcm.zoobox.place.service;

import com.dcm.zoobox.place.model.AnimalBusi;

import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.ArrayList;

public interface PlaceService {

    void save(ArrayList<AnimalBusi> list);

    void search(String query) throws MalformedURLException, UnsupportedEncodingException;
}
