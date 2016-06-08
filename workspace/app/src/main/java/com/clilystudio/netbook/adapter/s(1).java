package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.util.ai;

final class s
        implements ai {
    s(HomeTopicAdapter paramHomeTopicAdapter, TextView paramTextView, BookShelfTopic paramBookShelfTopic) {
    }

    public final void a(String paramString, int paramInt) {
        if (((String) this.a.getTag()).equals(paramString)) {
            this.b.setPostCount(paramInt);
            int i = paramInt - BookTopicEnterRecord.get(paramString).getVisitCount();
            if (i > 0) {
                this.a.setVisibility(0);
                this.a.setText(String.valueOf(i));
            }
        } else {
            return;
        }
        this.a.setVisibility(8);
    }
}

