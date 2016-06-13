package com.clilystudio.netbook.ui.post;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.model.Follower;

final class bj
        extends BaseAdapter {
    final /* synthetic */ FollowerListActivity a;

    bj(FollowerListActivity followerListActivity) {
        this.a = followerListActivity;
    }

    @Override
    public final int getCount() {
        return FollowerListActivity.a(this.a).length;
    }

    @Override
    public final Object getItem(int n) {
        return FollowerListActivity.a(this.a)[n];
    }

    @Override
    public final long getItemId(int n) {
        return 0;
    }

    @Override
    public final View getView(int n, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(2130903252, viewGroup, false);
            view.setTag(new bl(this, view));
        }
        Follower follower = (Follower) this.getItem(n);
        bl bl2 = (bl) view.getTag();
        bl2.a.setImageUrl(follower.getFullAvatar());
        bl2.b.setText(follower.getNickname());
        TextView textView = bl2.c;
        Object[] arrobject = new Object[]{follower.getTweets(), follower.getFollowings(), follower.getFollowers()};
        textView.setText(String.format("\u52a8\u6001 %d |  \u5173\u6ce8 %d |  \u7c89\u4e1d %d", arrobject));
        view.setOnClickListener(new bk(this, n));
        return view;
    }
}
