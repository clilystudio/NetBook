package com.clilystudio.netbook.ui.post;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.model.Follower;

final class bj extends BaseAdapter {

    FollowerListActivity a;     // final access specifier removed

    bj(FollowerListActivity FollowerListActivity1) {
        a = FollowerListActivity1;
    }

    public final int getCount() {
        return FollowerListActivity.a(a).length;
    }

    public final Object getItem(int int1) {
        return FollowerListActivity.a(a)[int1];
    }

    public final long getItemId(int int1) {
        return 0L;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        Follower Follower4;
        bl bl5;
        TextView TextView6;
        Object[] Object_1darray7;

        if (View2 == null) {
            View2 = LayoutInflater.from(ViewGroup3.getContext()).inflate(2130903252, ViewGroup3, false);
            View2.setTag(new bl(this, View2));
        }
        Follower4 = (Follower) getItem(int1);
        bl5 = (bl) View2.getTag();
        bl5.a.setImageUrl(Follower4.getFullAvatar());
        bl5.b.setText((CharSequence) Follower4.getNickname());
        TextView6 = bl5.c;
        Object_1darray7 = new Object[3];
        Object_1darray7[0] = Integer.valueOf(Follower4.getTweets());
        Object_1darray7[1] = Integer.valueOf(Follower4.getFollowings());
        Object_1darray7[2] = Integer.valueOf(Follower4.getFollowers());
        TextView6.setText((CharSequence) String.format("\u52A8\u6001 %d |  \u5173\u6CE8 %d |  \u7C89\u4E1D %d", Object_1darray7));
        View2.setOnClickListener((View$OnClickListener) new bk(this, int1));
        return View2;
    }
}
