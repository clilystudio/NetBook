package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.TopicPost;

final class dL
        implements AdapterView.OnItemClickListener {
    dL(TweetListFragment paramTweetListFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - TweetListFragment.d(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < TweetListFragment.e(this.a).size())) {
            TopicPost localTopicPost = (TopicPost) TweetListFragment.e(this.a).get(i);
            if (localTopicPost != null) {
                Intent localIntent = new Intent(this.a.getActivity(), PostDetailActivity.class);
                localIntent.putExtra("PostBookId", localTopicPost.get_id());
                this.a.startActivity(localIntent);
            }
        }
    }
}
