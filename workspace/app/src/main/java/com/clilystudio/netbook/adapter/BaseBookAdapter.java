package com.clilystudio.netbook.adapter;

import android.widget.BaseAdapter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class BaseBookAdapter<T> extends BaseAdapter {
    private List<T> mDatas = new ArrayList<>();

    public void setDatas(List<T> datas) {
        if (datas == null) {
            return;
        }
        mDatas = datas;
        notifyDataSetChanged();
    }

    public void addDatas(T[] datas) {
        if (datas == null) {
            return;
        }
        Collections.addAll(mDatas, datas);
        notifyDataSetChanged();
    }

    public final List<T> getDatas() {
        return mDatas;
    }

    @Override
    public int getCount() {
        return mDatas.size();
    }

    public T getItem(int position) {
        return mDatas.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }
}
