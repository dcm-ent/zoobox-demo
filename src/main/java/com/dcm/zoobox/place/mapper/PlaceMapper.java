package com.dcm.zoobox.place.mapper;

import com.dcm.zoobox.place.model.AnimalBusi;
import com.dcm.zoobox.place.model.kakao.ResDocuments;

import java.util.ArrayList;
import java.util.List;

public interface PlaceMapper {

    void save(ArrayList<AnimalBusi> list);

}
