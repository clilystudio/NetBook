package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.util.ai;

final class s implements ai {

    private TextView a;
    private BookShelfTopic b;
    s(HomeTopicAdapter HomeTopicAdapter1, TextView TextView2, BookShelfTopic BookShelfTopic3) {
        a = TextView2;
        b = BookShelfTopic3;
    }

    public final void a(String String1, int int2) {
        if (((String) a.getTag()).equals(String1)) {
            int int3;

            b.setPostCount(int2);
            int3 = int2 - BookTopicEnterRecord.get(String1).getVisitCount();
            if (int3 > 0) {
                a.setVisibility(0);
                a.setText((CharSequence) String.valueOf(int3));
            } else {
                a.setVisibility(8);
                return;
            }
        }
    }
}
