package com.clilystudio.netbook.util;

import android.app.Activity;

import com.clilystudio.netbook.db.DownloadItem;
import com.clilystudio.netbook.model.AppItem;

import java.util.ArrayList;
import java.util.List;

public final class g {
    private final List<AppItem> a;
    private final Activity b;

    public g(Activity activity, List<AppItem> list) {
        this.b = activity;
        this.a = list;
    }

    public final List<AppItem> a() {
        List<AppItem> list = this.a;
        ArrayList<AppItem> arrayList = new ArrayList<AppItem>();
        for (AppItem appItem : list) {
            String string = appItem.getPackageName();
            if (DownloadItem.existsInDb(string)) {
                arrayList.add(appItem);
                continue;
            }
            if (a.j(this.b, string)) continue;
            arrayList.add(appItem);
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        if (!arrayList2.isEmpty()) {
            return arrayList2.subList(0, Math.min(2, arrayList2.size()));
        }
        return new ArrayList<AppItem>();
    }
}
