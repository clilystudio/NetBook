package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.model.ResponseBookFile;
import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class cp
        implements r {
    cp(WifiActivity wifiActivity) {
    }

    @Override
    public final void a(h h2, l l2) {
        Gson gson = new Gson();
        List<BookFile> list = a.f();
        ArrayList<ResponseBookFile> arrayList = new ArrayList<ResponseBookFile>();
        Iterator<BookFile> iterator = list.iterator();
        while (iterator.hasNext()) {
            arrayList.add(new ResponseBookFile(iterator.next()));
        }
        l2.a("application/json; charset=utf-8", gson.toJson(arrayList));
    }
}
