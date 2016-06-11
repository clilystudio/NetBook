package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.app.Dialog;

import com.clilystudio.netbook.model.PaySheetItem;

import java.util.Iterator;
import java.util.List;

public final class ak {
    private final g b;
    private am_interface a;
    private List<PaySheetItem> c;

    public ak(Activity paramActivity, am_interface paramam, List<PaySheetItem> paramList) {
        this.a = paramam;
        this.b = new g(paramActivity);
        this.c = paramList;
        b();
    }

    private void b() {
        Iterator localIterator = this.c.iterator();
        while (localIterator.hasNext()) {
            PaySheetItem localPaySheetItem = (PaySheetItem) localIterator.next();
            this.b.a(localPaySheetItem.getId(), localPaySheetItem.getIconId(), localPaySheetItem.getTextId());
        }
    }

    public final Dialog a() {
        this.b.a().a(new al(this));
        return this.b.b();
    }
}

