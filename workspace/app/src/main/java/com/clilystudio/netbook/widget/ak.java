package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.app.Dialog;

import com.clilystudio.netbook.model.PaySheetItem;
import com.cocosw.bottomsheet.a;

import java.util.List;

public final class ak {
    private final g b;
    private am a;
    private List<PaySheetItem> c;

    public ak(Activity activity, am am2, List<PaySheetItem> list) {
        this.a = am2;
        this.b = new g(activity);
        this.c = list;
        this.b();
    }

    static /* synthetic */ am a(ak ak2) {
        return ak2.a;
    }

    static /* synthetic */ List b(ak ak2) {
        return ak2.c;
    }

    private void b() {
        for (PaySheetItem paySheetItem : this.c) {
            this.b.a(paySheetItem.getId(), paySheetItem.getIconId(), paySheetItem.getTextId());
        }
    }

    public final Dialog a() {
        this.b.a().a(new al(this));
        return this.b.b();
    }
}
