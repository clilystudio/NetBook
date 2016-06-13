package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.MhdInfo;

final class bk
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ MhdListActivity a;

    bk(MhdListActivity mhdListActivity) {
        this.a = mhdListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        MhdInfo mhdInfo = (MhdInfo) MhdListActivity.b(this.a).getItem(n);
        if (mhdInfo != null) {
            MhdListActivity.a(this.a, mhdInfo.getBigbookid());
        }
        b.a(this.a, "mhd_list_item_click");
    }
}
