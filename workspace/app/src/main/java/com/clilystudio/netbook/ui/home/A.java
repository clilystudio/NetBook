package com.clilystudio.netbook.ui.home;

import android.view.View;

import com.clilystudio.netbook.util.e;

import java.util.List;

final class A
        implements View.OnClickListener {
    A(HomeShelfFragment paramHomeShelfFragment) {
    }

    public final void onClick(View paramView) {
        List localList;
        if (HomeShelfFragment.a(this.a) != null) {
            localList = HomeShelfFragment.a(this.a).e();
            if ((localList == null) || (localList.size() == 0))
                e.a(this.a.getActivity(), "你没有选择要删除的书哦");
        } else {
            return;
        }
        HomeShelfFragment.a(this.a, localList);
    }
}

