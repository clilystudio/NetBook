package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.util.ag;
import com.clilystudio.netbook.util.ai;

public final class HomeTopicAdapter extends u {

    private LayoutInflater a;
    private ag b;
    public HomeTopicAdapter(FragmentActivity FragmentActivity1) {
        a = FragmentActivity1.getLayoutInflater();
        b = ag.a((Context) FragmentActivity1);
    }

    private BookShelfTopic a(int int1) {
        if (int1 == 0)
            return null;
        else
            return (BookShelfTopic) super.getItem(int1 - 1);
    }

    public final int getCount() {
        if (f().size() == 0)
            return 0;
        else
            return 1 + super.getCount();
    }

    public final Object getItem(int int1) {
        return a(int1);
    }

    public final int getItemViewType(int int1) {
        if (int1 == 0)
            return 0;
        else
            return 1;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        int int4 = getItemViewType(int1);
        Object Object10;

        if (View2 == null) {
            switch (int4) {
                case 0:
                    Object Object9 = (TextView) a.inflate(2130903233, ViewGroup3, false);

                    ((TextView) Object9).setText((CharSequence) "\u6211\u7684\u793E\u533A");
                    Object10 = Object9;
                    break;
                case 1:
                    Object10 = a.inflate(2130903284, ViewGroup3, false);
                    ((View) Object10).setTag(new HomeTopicAdapter$ViewHolder((View) Object10));
                    break;
                default:
                    break;
            }
        }
        if (int4 == 1) {
            BookShelfTopic BookShelfTopic5 = a(int1);
            HomeTopicAdapter$ViewHolder ViewHolder6 = (HomeTopicAdapter$ViewHolder) ((View) Object10).getTag();
            TextView TextView7;
            String String8;

            ViewHolder6.mTitle.setText((CharSequence) BookShelfTopic5.getTitle());
            ViewHolder6.mCover.setImageUrl(BookShelfTopic5.getFullCover(), 2130837766);
            TextView7 = ViewHolder6.mCount;
            String8 = BookShelfTopic5.getBookId();
            TextView7.setVisibility(8);
            TextView7.setText((CharSequence) "");
            TextView7.setTag(String8);
            b.a(String8, (ai) new s(this, TextView7, BookShelfTopic5));
        }
        return (View) Object10;
    }

    public final int getViewTypeCount() {
        return 2;
    }
}
