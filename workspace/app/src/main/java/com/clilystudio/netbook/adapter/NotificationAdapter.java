package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.CircularSmartImageView;
import com.clilystudio.netbook.viewbinder.notification.NotifBinder;
import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;
import com.clilystudio.netbook.widget.DividerSection;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public abstract class NotificationAdapter extends u<NotificationItem> {
    private final Context b;
    private long a;
    private List<NotificationItem> c = new ArrayList<NotificationItem>();
    private List<NotificationItem> d = new ArrayList<NotificationItem>();
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
        w[] arrw = new w[]{this.e, this.f, this.g, this.h};
        this.i = arrw;
        this.b = layoutInflater.getContext();
        this.a = a.R(this.a());
    }

    private View a(ViewGroup viewGroup, View view, String string) {
        if (view == null) {
            view = LayoutInflater.from(this.b).inflate(R.layout.list_item_notif_header, viewGroup, false);
        }
        new HeaderHolder((View) view).mLabelText.setText(string);
        return view;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private NotificationItem a(int n, int n2) {
        int n3 = 1;
        if (n == n3) {
            if (this.c.size() != 0) return this.c.get(n2 - 1);
            throw new RuntimeException("unread item is 0");
        }
        if (n != 3) return null;
        if (this.c.size() == 0) {
            do {
                return this.d.get(n2 - n3);
                break;
            } while (true);
        }
        n3 = 2 + this.c.size();
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
    public final void a(List<NotificationItem> list) {
        int n;
        this.d.clear();
        this.c.clear();
        for (NotificationItem notificationItem : list) {
            Date date = notificationItem.getServerDate();
            if (this.a < date.getTime()) {
                this.c.add(notificationItem);
                continue;
            }
            this.d.add(notificationItem);
        }
        if (this.c.size() != 0) {
            this.e.a(0, false);
            this.f.a(1, 1 + this.c.size());
            n = 0 + (1 + this.c.size());
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
    public /* synthetic */ Object getItem(int n) {
        return this.a(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int getItemViewType(int n) {
        int n2 = this.i.length;
        int n3 = 0;
        while (n3 < n2) {
            boolean bl;
            w w2 = this.i[n3];
            if (w2.a == w2.b) {
                if (n == w2.a) {
                    return n3;
                }
                bl = false;
            } else {
                if (n >= w2.a && n < w2.b) {
                    return n3;
                }
                bl = false;
            }
            if (bl) {
                return n3;
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
                return this.a(viewGroup, view, "\u672a\u8bfb");
            }
            case 2: {
                return this.a(viewGroup, view, "\u5df2\u8bfb");
            }
            case 1:
            case 3:
        }
        NotificationItem notificationItem = this.a(n3, n);
        if (n3 == n2) {
            if (this.c.size() == 0) {
                throw new RuntimeException("unread item is 0");
            }
            if (-1 + this.c.size() == n - 1) {
                // empty if block
            }
        } else if (n3 == 3) {
            if (this.c.size() != 0) {
                n2 = 2 + this.c.size();
            }
            if (-1 + this.d.size() == n - n2) {
                // empty if block
            }
        }
        View view2 = view == null ? LayoutInflater.from(this.b).inflate(R.layout.list_item_notification, viewGroup, false) : view;
        ViewHolder viewHolder = new ViewHolder(view2);
        NotifBinder notifBinder = NotifBinderFactory.create(notificationItem);
        viewHolder.mMainText.setText(notifBinder.getMainText());
        if ("follow".equals(notificationItem.getType())) {
            viewHolder.mSubText.setVisibility(4);
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
}
