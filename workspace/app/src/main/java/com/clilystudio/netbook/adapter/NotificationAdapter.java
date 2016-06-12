package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.viewbinder.notification.NotifBinder;
import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;
import com.clilystudio.netbook.widget.DividerSection;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public abstract class NotificationAdapter extends u {

    private long a;
    private Context b;     // final access specifier removed
    private w[] i;
    private List c = new ArrayList();
    private List d = new ArrayList();
    private w e = new w(this);
    private w f = new w(this);
    private w g = new w(this);
    private w h = new w(this);
    public NotificationAdapter(LayoutInflater LayoutInflater1) {
        w[] w_1darray2 = new w[4];

        w_1darray2[0] = e;
        w_1darray2[1] = f;
        w_1darray2[2] = g;
        w_1darray2[3] = h;
        i = w_1darray2;
        b = LayoutInflater1.getContext();
        a = com.clilystudio.netbook.hpay100.a.a.R(a());
    }

    private View a(ViewGroup ViewGroup1, View View2, String String3) {
        if (View2 == null)
            View2 = LayoutInflater.from(b).inflate(2130903291, ViewGroup1, false);
        new NotificationAdapter$HeaderHolder(View2).mLabelText.setText((CharSequence) String3);
        return View2;
    }

    private NotificationItem a(int int1, int int2) {
        int int3 = 1;

        if (int1 == int3) {
            if (c.size() == 0)
                throw new RuntimeException("unread item is 0");
            else
                return (NotificationItem) c.get(int2 - 1);
        } else {
            if (int1 != 3)
                return null;
            if (c.size() != 0)
                int3 = 2 + c.size();
            return (NotificationItem) d.get(int2 - int3);
        }
    }

    public final NotificationItem a(int int1) {
        int int2 = getItemViewType(int1);

        if (int2 == 2 || int2 == 0)
            return null;
        else
            return a(int2, int1);
    }

    protected abstract String a();

    public final void a(List List1) {
        Iterator Iterator2;
        int int3;

        d.clear();
        c.clear();
        Iterator2 = List1.iterator();
        while (Iterator2.hasNext()) {
            Object Object4 = (NotificationItem) Iterator2.next();
            Date Date5 = ((NotificationItem) Object4).getServerDate();

            if (a < Date5.getTime())
                c.add(Object4);
            else
                d.add(Object4);
        }
        if (c.size() != 0) {
            e.a(0, 0);
            f.a(1, 1 + c.size());
            int3 = 0 + (1 + c.size());
        } else
            int3 = 0;
        if (d.size() != 0) {
            g.a(int3, int3);
            h.a(int3 + 1, int3 + 1 + d.size());
        }
        notifyDataSetChanged();
    }

    public final Context b() {
        return b;
    }

    public int getCount() {
        w[] w_1darray1 = i;
        int int2 = w_1darray1.length;
        int int3 = 0;
        int int4 = 0;

        while (int3 < int2) {
            w w5 = w_1darray1[int3];
            int int6;

            if (w5.b == w5.a && w5.b != -1)
                int6 = 1;
            else
                int6 = w5.b - w5.a;
            int4 += int6;
            ++int3;
        }
        return int4;
    }

    public Object getItem(int int1) {
        return a(int1);
    }

    public int getItemViewType(int int1) {
        int int2 = i.length;
        int int3 = 0;

        while (int3 < int2) {
            w w4 = i[int3];
            int int5;

            if (w4.a == w4.b) {
                if (int1 == w4.a)
                    int5 = 1;
                else
                    int5 = 0;
            } else if (int1 >= w4.a && int1 < w4.b)
                int5 = 1;
            else
                int5 = 0;
            if (int5 != 0)
                return int3;
            else
                ++int3;
        }
        return 0;
    }

    public View getView(int int1, View View2, ViewGroup ViewGroup3) {
        int int4 = 1;
        int int5 = getItemViewType(int1);

        switch (int5) {
            default:
                return View2;
            case 0:
                return a(ViewGroup3, View2, "\u672A\u8BFB");
            case 2:
                return a(ViewGroup3, View2, "\u5DF2\u8BFB");
            case 3:
            case 1:
                NotificationItem NotificationItem6 = a(int5, int1);
                View View7;
                NotificationAdapter$ViewHolder ViewHolder8;
                NotifBinder NotifBinder9;

                if (int5 == int4) {
                    if (c.size() == 0)
                        throw new RuntimeException("unread item is 0");
                    else if (-1 + c.size() == int1 - 1)
                        ;
                } else if (int5 == 3) {
                    if (c.size() != 0)
                        int4 = 2 + c.size();
                    if (-1 + d.size() == int1 - int4)
                        ;
                }
                if (View2 == null)
                    View7 = LayoutInflater.from(b).inflate(2130903292, ViewGroup3, false);
                else
                    View7 = View2;
                ViewHolder8 = new NotificationAdapter$ViewHolder(View7);
                NotifBinder9 = NotifBinderFactory.create(NotificationItem6);
                ViewHolder8.mMainText.setText((CharSequence) NotifBinder9.getMainText());
                if ("follow".equals(NotificationItem6.getType()))
                    ViewHolder8.mSubText.setVisibility(4);
                else {
                    ViewHolder8.mSubText.setVisibility(0);
                    ViewHolder8.mSubText.setText((CharSequence) NotifBinder9.getSubText());
                    NotifBinder9.fillIcon(ViewHolder8.mSubText);
                }
                NotifBinder9.fillImageView((SmartImageView) ViewHolder8.mAvatar);
                ((DividerSection) View7).setDividerMatchParent();
                return View7;
        }
    }

    public int getViewTypeCount() {
        return i.length;
    }
}
