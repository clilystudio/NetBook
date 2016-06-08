package com.clilystudio.netbook.adapter;

import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.util.ag;

public final class HomeTopicAdapter extends u<BookShelfTopic> {
    private LayoutInflater a;
    private ag b;

    public HomeTopicAdapter(FragmentActivity paramFragmentActivity) {
        this.a = paramFragmentActivity.getLayoutInflater();
        this.b = ag.a(paramFragmentActivity);
    }

    private BookShelfTopic a(int paramInt) {
        if (paramInt == 0)
            return null;
        return (BookShelfTopic) super.getItem(paramInt - 1);
    }

    public final int getCount() {
        if (f().size() == 0)
            return 0;
        return 1 + super.getCount();
    }

    public final int getItemViewType(int paramInt) {
        if (paramInt == 0)
            return 0;
        return 1;
    }

    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
        int i = getItemViewType(paramInt);
        if (paramView == null)
            switch (i) {
                default:
                case 0:
                case 1:
            }
        while (true) {
            if (i == 1) {
                BookShelfTopic localBookShelfTopic = a(paramInt);
                HomeTopicAdapter.ViewHolder localViewHolder = (HomeTopicAdapter.ViewHolder) paramView.getTag();
                localViewHolder.mTitle.setText(localBookShelfTopic.getTitle());
                localViewHolder.mCover.setImageUrl(localBookShelfTopic.getFullCover(), 2130837766);
                TextView localTextView1 = localViewHolder.mCount;
                String str = localBookShelfTopic.getBookId();
                localTextView1.setVisibility(8);
                localTextView1.setText("");
                localTextView1.setTag(str);
                this.b.a(str, new s(this, localTextView1, localBookShelfTopic));
            }
            return paramView;
            TextView localTextView2 = (TextView) this.a.inflate(2130903233, paramViewGroup, false);
            localTextView2.setText("我的社区");
            paramView = localTextView2;
            continue;
            paramView = this.a.inflate(2130903284, paramViewGroup, false);
            paramView.setTag(new HomeTopicAdapter.ViewHolder(paramView));
        }
    }

    public final int getViewTypeCount() {
        return 2;
    }
}

