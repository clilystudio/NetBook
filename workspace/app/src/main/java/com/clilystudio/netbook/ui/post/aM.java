package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.TopicPost;

final class aM implements AdapterView.OnItemClickListener {
    private /* synthetic */ BookTopicListFragment a;

    aM(BookTopicListFragment bookTopicListFragment) {
        this.a = bookTopicListFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        TopicPost topicPost;
        int n2 = n - this.a.b.getHeaderViewsCount();
        if (n2 >= 0 && n2 < BookTopicListFragment.d(this.a).size() && (topicPost = (TopicPost) BookTopicListFragment.d(this.a).get(n2)) != null) {
            Intent intent = new Intent(this.a.getActivity(), PostDetailActivity.class);
            intent.putExtra("PostBookId", topicPost.get_id());
            this.a.startActivity(intent);
        }
    }
}
