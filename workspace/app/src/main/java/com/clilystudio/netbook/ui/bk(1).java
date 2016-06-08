package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.MhdInfo;

final class bk
        implements AdapterView.OnItemClickListener {
    bk(MhdListActivity paramMhdListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        MhdInfo localMhdInfo = (MhdInfo) MhdListActivity.b(this.a).getItem(paramInt);
        if (localMhdInfo != null)
            MhdListActivity.a(this.a, localMhdInfo.getBigbookid());
        b.a(this.a, "mhd_list_item_click");
    }
}

