package com.clilystudio.netbook.reader;

import android.view.View;

final class bt
        implements View.OnClickListener {
    bt(ReaderMenuFragment paramReaderMenuFragment) {
    }

    public final void onClick(View paramView) {
        if (!ReaderMenuFragment.j(this.a).isApk()) {
            ReaderMenuFragment.j(this.a).onAdClick(paramView);
            return;
        }
        h localh = new h(this.a.getActivity()).a(2131034371);
        localh.e = ("是否下载" + ReaderMenuFragment.j(this.a).getTitle() + "(建议使用WIFI下载)？");
        localh.a(true).a("确认", new bv(this, paramView)).b("取消", new bu(this)).b();
    }
}

