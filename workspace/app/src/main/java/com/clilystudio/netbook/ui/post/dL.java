package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.TopicPost;

final class dL implements AdapterView.OnItemClickListener {
    private /* synthetic */ TweetListFragment a;

    dL(TweetListFragment tweetListFragment) {
        this.a = tweetListFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        TopicPost topicPost;
        int n2 = n - TweetListFragment.d(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < TweetListFragment.e(this.a).size() && (topicPost = (TopicPost) TweetListFragment.e(this.a).get(n2)) != null) {
            Intent intent = new Intent(this.a.getActivity(), PostDetailActivity.class);
            intent.putExtra("PostBookId", topicPost.get_id());
            this.a.startActivity(intent);
        }
    }
}
