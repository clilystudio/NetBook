package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.widget.CircularSmartImageView;
import com.clilystudio.netbook.viewbinder.notification.NotifBinder;
import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;
import com.clilystudio.netbook.widget.DividerSection;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public abstract class NotificationAdapter extends BaseBookAdapter<NotificationItem> {
    private final Context b;
    private long a;
    private List<NotificationItem> c = new ArrayList<>();
    private List<NotificationItem> d = new ArrayList<>();
    private w e;
    private w f;
    private w g;
    private w h;
    private w[] i;

    public NotificationAdapter(LayoutInflater layoutInflater) {
        this.e = new w(this);
        this.f = new w(this);
        this.g = new w(this);
        this.h = new w(this);
        this.i = new w[]{this.e, this.f, this.g, this.h};
        this.b = layoutInflater.getContext();
        try {
            this.a = Long.parseLong(this.a());
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
    }

    private View a(ViewGroup viewGroup, View view, String string) {
        if (view == null) {
            view = LayoutInflater.from(this.b).inflate(R.layout.list_item_notif_header, viewGroup, false);
        }
        new HeaderHolder(view).mLabelText.setText(string);
        return view;
    }

    private NotificationItem a(int n, int n2) {
        int n3 = 1;
        if (n == n3) {
            if (this.c.size() != 0) return this.c.get(n2 - 1);
            throw new RuntimeException("unread item is 0");
        }
        if (n != 3) return null;
        if (this.c.size() != 0) {
            n3 = 2 + this.c.size();
        }
        return this.d.get(n2 - n3);
    }

    public final NotificationItem a(int n) {
        int n2 = this.getItemViewType(n);
        if (n2 == 2 || n2 == 0) {
            return null;
        }
        return this.a(n2, n);
    }

    protected abstract String a();

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void setDatas(List<NotificationItem> datas) {
        int n;
        this.d.clear();
        this.c.clear();
        for (NotificationItem notificationItem : datas) {
            Date date = notificationItem.getServerDate();
            if (this.a < date.getTime()) {
                this.c.add(notificationItem);
                continue;
            }
            this.d.add(notificationItem);
        }
        if (this.c.size() != 0) {
            this.e.a(0, 0);
            this.f.a(1, 1 + this.c.size());
            n = 1 + this.c.size();
        } else {
            n = 0;
        }
        if (this.d.size() != 0) {
            this.g.a(n, n);
            this.h.a(n + 1, n + 1 + this.d.size());
        }
        this.notifyDataSetChanged();
    }

    public final Context b() {
        return this.b;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int getCount() {
        w[] arrw = this.i;
        int n = arrw.length;
        int n2 = 0;
        int n3 = 0;
        while (n2 < n) {
            w w2 = arrw[n2];
            int n4 = w2.b == w2.a && w2.b != -1 ? 1 : w2.b - w2.a;
            n3 += n4;
            ++n2;
        }
        return n3;
    }

    @Override
    public NotificationItem getItem(int position) {
        return this.a(position);
    }

    @Override
    public int getItemViewType(int n) {
        int n2 = this.i.length;
        int n3 = 0;
        while (n3 < n2) {
            w w2 = this.i[n3];
            if (w2.a == w2.b) {
                if (n == w2.a) {
                    return n3;
                }
            } else {
                if (n >= w2.a && n < w2.b) {
                    return n3;
                }
            }
            ++n3;
        }
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public View getView(int n, View view, ViewGroup viewGroup) {
        int n2 = 1;
        int n3 = this.getItemViewType(n);
        switch (n3) {
            default: {
                return view;
            }
            case 0: {
                return this.a(viewGroup, view, "未读");
            }
            case 2: {
                return this.a(viewGroup, view, "已读");
            }
            case 1:
            case 3:
        }
        NotificationItem notificationItem = this.a(n3, n);
        if (n3 == n2) {
            if (this.c.size() == 0) {
                throw new RuntimeException("unread item is 0");
            }
        }
        View view2 = view == null ? LayoutInflater.from(this.b).inflate(R.layout.list_item_notification, viewGroup, false) : view;
        ViewHolder viewHolder = new ViewHolder(view2);
        NotifBinder notifBinder = NotifBinderFactory.create(notificationItem);
        viewHolder.mMainText.setText(notifBinder.getMainText());
        if (notificationItem !=null && "follow".equals(notificationItem.getType())) {
            viewHolder.mSubText.setVisibility(View.INVISIBLE);
        } else {
            viewHolder.mSubText.setVisibility(View.VISIBLE);
            viewHolder.mSubText.setText(notifBinder.getSubText());
            notifBinder.fillIcon(viewHolder.mSubText);
        }
        notifBinder.fillImageView(viewHolder.mAvatar);
        ((DividerSection) view2).setDividerMatchParent();
        return view2;
    }

    @Override
    public int getViewTypeCount() {
        return this.i.length;
    }

    class ViewHolder {
        CircularSmartImageView mAvatar;
        TextView mMainText;
        TextView mSubText;

        ViewHolder(View view) {
            this.mAvatar = (CircularSmartImageView) view.findViewById(R.id.avatar);
            this.mMainText = (TextView) view.findViewById(R.id.main_text);
            this.mSubText = (TextView) view.findViewById(R.id.sub_text);
        }
    }

    class HeaderHolder {
        TextView mLabelText;

        HeaderHolder(View view) {
            this.mLabelText = (TextView) view.findViewById(R.id.label_text);
        }
    }

    final class w {
        int a = -1;
        int b = -1;

        w(NotificationAdapter notificationAdapter) {
        }

        final void a(int n, int n2) {
            this.a = n;
            this.b = n2;
        }
    }
}
