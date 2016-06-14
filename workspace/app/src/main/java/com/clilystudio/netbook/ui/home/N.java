package com.clilystudio.netbook.ui.home;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;

final class N implements AdapterView.OnItemClickListener {
    private /* synthetic */ HomeTopicFragment a;

    N(HomeTopicFragment homeTopicFragment) {
        this.a = homeTopicFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        int n2 = -1 + (n - HomeTopicFragment.b(this.a).getHeaderViewsCount());
        if (n2 < 0 || n2 >= HomeTopicFragment.c(this.a).size()) {
            return;
        }
        BookShelfTopic bookShelfTopic = (BookShelfTopic) HomeTopicFragment.c(this.a).get(n2);
        Intent intent = BookPostTabActivity.a(this.a.getActivity(), bookShelfTopic.getBookId(), bookShelfTopic.getTitle());
        this.a.startActivity(intent);
        BookTopicEnterRecord.updateCount(bookShelfTopic.getBookId(), bookShelfTopic.getPostCount());
    }
}
