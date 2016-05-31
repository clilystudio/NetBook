package com.clilystudio.app.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.model.MhdInfo;

final class bk
        implements AdapterView.OnItemClickListener {
    bk(MhdListActivity paramMhdListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        MhdInfo localMhdInfo = (MhdInfo) MhdListActivity.b_initContentView(this.a).getItem(paramInt);
        if (localMhdInfo != null)
            MhdListActivity.a(this.a, localMhdInfo.getBigbookid());
        b.a(this.a, "mhd_list_item_click");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bk
 * JD-Core Version:    0.6.2
 */