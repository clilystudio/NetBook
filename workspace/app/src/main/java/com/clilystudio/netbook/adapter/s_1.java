package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.util.ai;

final class s
        implements ai {
    private /* synthetic */ TextView a;
    private /* synthetic */ BookShelfTopic b;

    s(HomeTopicAdapter homeTopicAdapter, TextView textView, BookShelfTopic bookShelfTopic) {
        this.a = textView;
        this.b = bookShelfTopic;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final void a(String string, int n) {
        if (!((String) this.a.getTag()).equals(string)) return;
        this.b.setPostCount(n);
        int n2 = n - BookTopicEnterRecord.get(string).getVisitCount();
        if (n2 > 0) {
            this.a.setVisibility(0);
            this.a.setText(String.valueOf(n2));
            return;
        }
        this.a.setVisibility(8);
    }
}
