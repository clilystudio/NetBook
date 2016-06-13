package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.Advert;

import java.util.Comparator;

final class d
        implements Comparator<Advert> {
    d(c c2) {
    }

    @Override
    public final /* synthetic */ int compare(Object object, Object object2) {
        Advert advert = (Advert) object;
        Advert advert2 = (Advert) object2;
        return advert.getPriority() - advert2.getPriority();
    }
}
