
package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.MenuAd;
import com.clilystudio.netbook.model.MenuAd$Settings;
import java.util.Comparator;

final class b implements Comparator {

    b(a a1)
    {
    }

    public final int compare(Object Object1, Object Object2)
    {
        MenuAd MenuAd3 = (MenuAd) Object1;
        MenuAd MenuAd4 = (MenuAd) Object2;

        return MenuAd3.getSettings().getReaderMenuPriority() - MenuAd4.getSettings().getReaderMenuPriority();
    }
}
