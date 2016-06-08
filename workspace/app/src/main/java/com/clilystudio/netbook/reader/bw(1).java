package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.view.View;

import com.clilystudio.netbook.model.TocSummary;

final class bw
        implements View.OnClickListener {
    bw(ReaderMenuFragment paramReaderMenuFragment, Activity paramActivity, TocSummary paramTocSummary) {
    }

    public final void onClick(View paramView) {
        h localh = new h(this.a);
        localh.e = "更换来源将会删除之前的预读章节，是否继续？";
        localh.a("更换", new bx(this)).b("取消", null).b();
    }
}

