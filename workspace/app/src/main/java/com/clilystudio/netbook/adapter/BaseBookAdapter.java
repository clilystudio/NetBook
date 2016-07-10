package com.clilystudio.netbook.adapter;

import android.widget.BaseAdapter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class BaseBookAdapter<T> extends BaseAdapter {
    private List<T> a = new ArrayList<>();

    public void a(List<T> list) {
        if (list == null) {
            return;
        }
        this.a = list;
        this.notifyDataSetChanged();
    }

    public void a(T[] arrT) {
        if (arrT == null) {
            return;
        }
        Collections.addAll(this.a, arrT);
        this.notifyDataSetChanged();
    }

    public final List<T> f() {
        return this.a;
    }

    @Override
    public int getCount() {
        return this.a.size();
    }

    public T getItem(int n) {
        return this.a.get(n);
    }

    @Override
    public long getItemId(int n) {
        return n;
    }
}
