package com.clilystudio.app.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.model.TopicPost;

final class aM
        implements AdapterView.OnItemClickListener {
    aM(BookTopicListFragment paramBookTopicListFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - this.a.b.getHeaderViewsCount();
        if ((i >= 0) && (i < BookTopicListFragment.d(this.a).size())) {
            TopicPost localTopicPost = (TopicPost) BookTopicListFragment.d(this.a).get(i);
            if (localTopicPost != null) {
                Intent localIntent = new Intent(this.a.getActivity(), PostDetailActivity.class);
                localIntent.putExtra("PostBookId", localTopicPost.get_id());
                this.a.startActivity(localIntent);
            }
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aM
 * JD-Core Version:    0.6.2
 */