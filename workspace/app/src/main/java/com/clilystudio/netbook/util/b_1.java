package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.MenuAd;

import java.util.Comparator;

final class b
        implements Comparator<MenuAd> {
    b(a a2) {
    }

    @Override
    public final /* synthetic */ int compare(Object object, Object object2) {
        MenuAd menuAd = (MenuAd) object;
        MenuAd menuAd2 = (MenuAd) object2;
        return menuAd.getSettings().getReaderMenuPriority() - menuAd2.getSettings().getReaderMenuPriority();
    }
}
