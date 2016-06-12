package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.model.TopicSummary;

import java.util.List;

final class O extends com.clilystudio.netbook.a.e {

    private List a;
    private HomeTopicFragment b;
    O(HomeTopicFragment HomeTopicFragment1, byte byte2) {
        this(HomeTopicFragment1);
    }

    private O(HomeTopicFragment HomeTopicFragment1) {
        b = HomeTopicFragment1;
    }

    private transient TopicSummary a() {
        TopicSummary TopicSummary3;

        try {
            a = BookReadRecord.getAll();
            com.clilystudio.netbook.api.b.a();
            TopicSummary3 = com.clilystudio.netbook.api.b.b().k();
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return null;
        }
        return TopicSummary3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (TopicSummary) Object1;

        super.onPostExecute(Object2);
        if (b.getActivity() != null) {
            HomeTopicFragment.d(b);
            if (Object2 != null && ((TopicSummary) Object2).isOk()) {
                int int3;
                int int4;

                HomeTopicFragment.c(b).clear();
                int3 = a.size();
                for (int4 = 0; int4 < int3; ++int4) {
                    BookReadRecord BookReadRecord5 = (BookReadRecord) a.get(int4);
                    String String6 = BookReadRecord5.getBookId();
                    Object Object7 = new BookShelfTopic();

                    ((BookShelfTopic) Object7).setBookId(String6);
                    ((BookShelfTopic) Object7).setTitle(BookReadRecord5.getTitle());
                    ((BookShelfTopic) Object7).setFullCover(BookReadRecord5.getFullCover());
                    HomeTopicFragment.c(b).add(Object7);
                }
                HomeTopicFragment.e(b).a(HomeTopicFragment.c(b));
            }
        }
    }
}
