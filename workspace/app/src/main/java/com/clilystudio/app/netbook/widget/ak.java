package com.clilystudio.app.netbook.widget;

import android.app.Activity;
import android.app.Dialog;

import com.clilystudio.app.netbook.model.PaySheetItem;

import java.util.Iterator;
import java.util.List;

public final class ak {
    private am a;
    private final g b;
    private List<PaySheetItem> c;

    public ak(Activity paramActivity, am paramam, List<PaySheetItem> paramList) {
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.ak
 * JD-Core Version:    0.6.2
 */