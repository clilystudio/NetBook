package com.clilystudio.netbook.adapter;

import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.BookShelfTopic;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.ag;
import com.clilystudio.netbook.util.ai;

public final class HomeTopicAdapter extends u<BookShelfTopic> {
    private LayoutInflater a;
    private ag b;

    public HomeTopicAdapter(FragmentActivity fragmentActivity) {
        this.a = fragmentActivity.getLayoutInflater();
        this.b = ag.a(fragmentActivity);
    }

    private BookShelfTopic a(int n) {
        if (n == 0) {
            return null;
        }
        return super.getItem(n - 1);
    }

    @Override
    public final int getCount() {
        if (this.f().size() == 0) {
            return 0;
        }
        return 1 + super.getCount();
    }

    @Override
    public final /* synthetic */ BookShelfTopic getItem(int n) {
        return this.a(n);
    }

    @Override
    public final int getItemViewType(int n) {
        if (n == 0) {
            return 0;
        }
        return 1;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final View getView(final int n, View view, ViewGroup viewGroup) {
        int n2 = this.getItemViewType(n);
        if (view == null) {
            switch (n2) {
                case 0: {
                    TextView textView = (TextView) this.a.inflate(R.layout.home_topic_label, viewGroup, false);
                    textView.setText("\u6211\u7684\u793e\u533a");
                    view = textView;
                }
                default: {
                    break;
                }
                case 1: {
                    view = this.a.inflate(R.layout.list_item_home_topic, viewGroup, false);
                    view.setTag(new ViewHolder(view));
                }
            }
        }
        if (n2 == 1) {
            final BookShelfTopic bookShelfTopic = this.a(n);
            final ViewHolder viewHolder = (ViewHolder) view.getTag();
            if (bookShelfTopic != null) {
                String title = bookShelfTopic.getTitle();
                viewHolder.mTitle.setText(title);
                viewHolder.mCover.setImageUrl(bookShelfTopic.getFullCover(), R.drawable.cover_default);
                final String string = bookShelfTopic.getBookId();
                viewHolder.mCount.setVisibility(View.GONE);
                viewHolder.mCount.setText("");
                viewHolder.mCount.setTag(string);
                this.b.a(string, new ai() {
                    @Override
                    public void a(String var1, int var2) {
                        if (!viewHolder.mCount.getTag().equals(var1)) return;
                        bookShelfTopic.setPostCount(var2);
                        int n2 = var2 - BookTopicEnterRecord.get(var1).getVisitCount();
                        if (n2 > 0) {
                            viewHolder.mCount.setVisibility(View.VISIBLE);
                            viewHolder.mCount.setText(String.valueOf(n2));
                            return;
                        }
                        viewHolder.mCount.setVisibility(View.GONE);
                    }
                });
            }
        }
        return view;
    }

    @Override
    public final int getViewTypeCount() {
        return 2;
    }

    class ViewHolder {
        TextView mCount;
        SmartImageView mCover;
        TextView mTitle;

        ViewHolder(View view) {
            this.mCover = (SmartImageView) view.findViewById(R.id.cover);
            this.mTitle = (TextView)view. findViewById(R.id.title);
            this.mCount = (TextView)view. findViewById(R.id.message_count);
        }
    }
}
