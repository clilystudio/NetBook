package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.model.TopicSummary;

import java.util.List;

final class O
        extends e<String, Void, TopicSummary> {
    private List<BookReadRecord> a;
    private /* synthetic */ HomeTopicFragment b;

    private O(HomeTopicFragment homeTopicFragment) {
        this.b = homeTopicFragment;
    }

    /* synthetic */ O(HomeTopicFragment homeTopicFragment, byte by) {
        this(homeTopicFragment);
    }

    private /* varargs */ TopicSummary a() {
        try {
            this.a = BookReadRecord.getAll();
            b.a();
            TopicSummary topicSummary = b.b().k();
            return topicSummary;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        TopicSummary topicSummary = (TopicSummary) object;
        super.onPostExecute(topicSummary);
        if (this.b.getActivity() != null) {
            HomeTopicFragment.d(this.b);
            if (topicSummary != null && topicSummary.isOk()) {
                HomeTopicFragment.c(this.b).clear();
                int n = this.a.size();
                for (int i = 0; i < n; ++i) {
                    BookReadRecord bookReadRecord = this.a.get(i);
                    String string = bookReadRecord.getBookId();
                    BookShelfTopic bookShelfTopic = new BookShelfTopic();
                    bookShelfTopic.setBookId(string);
                    bookShelfTopic.setTitle(bookReadRecord.getTitle());
                    bookShelfTopic.setFullCover(bookReadRecord.getFullCover());
                    HomeTopicFragment.c(this.b).add(bookShelfTopic);
                }
                HomeTopicFragment.e(this.b).a(HomeTopicFragment.c(this.b));
            }
        }
    }
}
