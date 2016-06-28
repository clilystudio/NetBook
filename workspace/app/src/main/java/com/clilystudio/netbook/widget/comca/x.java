package com.clilystudio.netbook.widget.comca;

import com.clilystudio.netbook.widget.comca.w;
import java.util.ArrayList;

final class x extends ThreadLocal<ArrayList<w>> {
    x() {
    }

    @Override
    protected final /* synthetic */ ArrayList<w> initialValue() {
        return new ArrayList();
    }
}
