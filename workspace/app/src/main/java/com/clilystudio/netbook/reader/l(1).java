package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

import java.util.ArrayList;

final class l extends Handler {
    l(LocalChapterListActivity paramLocalChapterListActivity) {
    }

    public final void handleMessage(Message paramMessage) {
        super.handleMessage(paramMessage);
        if (LocalChapterListActivity.f(this.a) != null)
            LocalChapterListActivity.f(this.a).dismiss();
        ArrayList localArrayList;
        if ((paramMessage.what == 1) && (paramMessage.obj != null)) {
            localArrayList = (ArrayList) paramMessage.obj;
            if (localArrayList.size() != 0)
                break label102;
            LocalChapterListActivity.g(this.a).setVisibility(8);
            LocalChapterListActivity.h(this.a).setVisibility(0);
            LocalChapterListActivity.h(this.a).setText("无预读章节");
        }
        while (true) {
            LocalChapterListActivity.b(this.a).a(localArrayList);
            return;
            label102:
            LocalChapterListActivity.g(this.a).setVisibility(0);
            LocalChapterListActivity.h(this.a).setVisibility(8);
        }
    }
}

