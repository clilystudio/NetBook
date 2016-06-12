package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

import com.clilystudio.netbook.model.MhdInfo;

final class bk implements AdapterView$OnItemClickListener {

    private MhdListActivity a;

    bk(MhdListActivity MhdListActivity1) {
        a = MhdListActivity1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        MhdInfo MhdInfo6 = (MhdInfo) MhdListActivity.b(a).getItem(int3);

        if (MhdInfo6 != null)
            MhdListActivity.a(a, MhdInfo6.getBigbookid());
        com.clilystudio.netbook.umeng.a.b.a((Context) a, "mhd_list_item_click");
    }
}
