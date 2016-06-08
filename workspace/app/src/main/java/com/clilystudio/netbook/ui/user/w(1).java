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
    w(MyFavTopicFragment paramMyFavTopicFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - MyFavTopicFragment.g(this.a).getHeaderViewsCount();
        TopicPost localTopicPost;
        String str;
        Object localObject;
        if ((i >= 0) && (i < MyFavTopicFragment.h(this.a).size())) {
            localTopicPost = (TopicPost) MyFavTopicFragment.h(this.a).get(i);
            str = localTopicPost.getBlock();
            if (!"help".equals(str))
                break label117;
            Intent localIntent1 = new Intent(this.a.getActivity(), BookHelpActivity.class);
            localIntent1.putExtra("extraBookHelpId", localTopicPost.get_id());
            localObject = localIntent1;
        }
        while (true) {
            this.a.startActivity((Intent) localObject);
            return;
            label117:
            if ("review".equals(str)) {
                Intent localIntent2 = new Intent(this.a.getActivity(), ReviewActivity.class);
                localIntent2.putExtra("extraReviewId", localTopicPost.get_id());
                localObject = localIntent2;
                continue;
            }
            Intent localIntent3 = new Intent(this.a.getActivity(), PostDetailActivity.class);
            localIntent3.putExtra("PostBookId", localTopicPost.get_id());
            localObject = localIntent3;
        }
    }
}

