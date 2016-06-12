package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.db.DownloadItem;
import com.clilystudio.netbook.model.AppItem;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class g {

    private List a;     // final access specifier removed
    private Activity b;     // final access specifier removed
    public g(Activity Activity1, List List2) {
        b = Activity1;
        a = List2;
    }

    public final List a() {
        List List1 = a;
        Object Object2 = new ArrayList();
        Iterator Iterator3 = List1.iterator();
        ArrayList ArrayList4;

        while (Iterator3.hasNext()) {
            Object Object5 = (AppItem) Iterator3.next();
            String String6 = ((AppItem) Object5).getPackageName();

            if (DownloadItem.existsInDb(String6))
                ((List) Object2).add(Object5);
            else {
                if (com.clilystudio.netbook.hpay100.a.a.j((Context) b, String6))
                    continue;
                ((List) Object2).add(Object5);
            }
        }
        ArrayList4 = new ArrayList((Collection) Object2);
        if (!ArrayList4.isEmpty())
            return ArrayList4.subList(0, Math.min(2, ArrayList4.size()));
        else
            return (List) new ArrayList();
    }
}
