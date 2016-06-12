package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.Advert;

import java.util.Comparator;

final class d implements Comparator {

    d(c c1) {
    }

    public final int compare(Object Object1, Object Object2) {
        Advert Advert3 = (Advert) Object1;
        Advert Advert4 = (Advert) Object2;

        return Advert3.getPriority() - Advert4.getPriority();
    }
}
