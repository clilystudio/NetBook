package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.ui.post.BookHelpActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;

final class w
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ MyFavTopicFragment a;

    w(MyFavTopicFragment myFavTopicFragment) {
        this.a = myFavTopicFragment;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        int n2 = n - MyFavTopicFragment.g(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < MyFavTopicFragment.h(this.a).size()) {
            Intent intent;
            TopicPost topicPost = (TopicPost) MyFavTopicFragment.h(this.a).get(n2);
            String string = topicPost.getBlock();
            if ("help".equals(string)) {
                Intent intent2 = new Intent(this.a.getActivity(), BookHelpActivity.class);
                intent2.putExtra("extraBookHelpId", topicPost.get_id());
                intent = intent2;
            } else if ("review".equals(string)) {
                Intent intent3 = new Intent(this.a.getActivity(), ReviewActivity.class);
                intent3.putExtra("extraReviewId", topicPost.get_id());
                intent = intent3;
            } else {
                Intent intent4 = new Intent(this.a.getActivity(), PostDetailActivity.class);
                intent4.putExtra("PostBookId", topicPost.get_id());
                intent = intent4;
            }
            this.a.startActivity(intent);
        }
    }
}
