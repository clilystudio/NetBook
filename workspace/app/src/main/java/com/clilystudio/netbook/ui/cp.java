package com.clilystudio.netbook.ui;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.ResponseBookFile;
import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class cp
        implements r {
    cp(WifiActivity paramWifiActivity) {
    }

    public final void a(h paramh, l paraml) {
        Gson localGson = new Gson();
        List localList = a.f();
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
            localArrayList.add(new ResponseBookFile((BookFile) localIterator.next()));
        paraml.a("application/json; charset=utf-8", localGson.toJson(localArrayList));
    }
}

