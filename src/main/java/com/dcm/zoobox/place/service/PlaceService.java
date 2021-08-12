package com.dcm.zoobox.place.service;

import com.dcm.zoobox.place.model.AnimalBusi;
import com.dcm.zoobox.place.model.kakao.ResDocuments;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.json.simple.parser.ParseException;

import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

public interface PlaceService {

    void save(ArrayList<AnimalBusi> list);

    List<ResDocuments> search(String query) throws MalformedURLException, UnsupportedEncodingException, ParseException, JsonProcessingException;
}
