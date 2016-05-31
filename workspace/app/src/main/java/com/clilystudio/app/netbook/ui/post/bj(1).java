package com.clilystudio.app.netbook.ui.post;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.clilystudio.app.netbook.model.Follower;

final class bj extends BaseAdapter {
    bj(FollowerListActivity paramFollowerListActivity) {
    }

    public final int getCount() {
        return FollowerListActivity.a_initContentView(this.a).length;
    }

    public final Object getItem(int paramInt) {
        return FollowerListActivity.a_initContentView(this.a)[paramInt];
    }

    public final long getItemId(int paramInt) {
        return 0L;
    }

    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
        if (paramView == null) {
            paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903252, paramViewGroup, false);
            paramView.setTag(new bl(this, paramView));
        }
        Follower localFollower = (Follower) getItem(paramInt);
        bl localbl = (bl) paramView.getTag();
        localbl.a.setImageUrl(localFollower.getFullAvatar());
        localbl.b.setText(localFollower.getNickname());
        TextView localTextView = localbl.c;
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = Integer.valueOf(localFollower.getTweets());
        arrayOfObject[1] = Integer.valueOf(localFollower.getFollowings());
        arrayOfObject[2] = Integer.valueOf(localFollower.getFollowers());
        localTextView.setText(String.format("动态 %d |  关注 %d |  粉丝 %d", arrayOfObject));
        paramView.setOnClickListener(new bk(this, paramInt));
        return paramView;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bj
 * JD-Core Version:    0.6.2
 */