package com.clilystudio.netbook.ui.home;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;

final class N
        implements AdapterView.OnItemClickListener {
    N(HomeTopicFragment paramHomeTopicFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = -1 + (paramInt - HomeTopicFragment.b(this.a).getHeaderViewsCount());
        if ((i < 0) || (i >= HomeTopicFragment.c(this.a).size()))
            return;
        BookShelfTopic localBookShelfTopic = (BookShelfTopic) HomeTopicFragment.c(this.a).get(i);
        Intent localIntent = BookPostTabActivity.a(this.a.getActivity(), localBookShelfTopic.getBookId(), localBookShelfTopic.getTitle());
        this.a.startActivity(localIntent);
        BookTopicEnterRecord.updateCount(localBookShelfTopic.getBookId(), localBookShelfTopic.getPostCount());
    }
}
