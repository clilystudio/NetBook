package com.clilystudio.netbook.widget.comca;

import com.clilystudio.netbook.widget.comca.w;
import java.util.ArrayList;

final class z extends ThreadLocal<ArrayList<w>> {
    z() {
    }

    @Override
    protected final /* synthetic */ ArrayList<w> initialValue() {
        return new ArrayList();
    }
}
