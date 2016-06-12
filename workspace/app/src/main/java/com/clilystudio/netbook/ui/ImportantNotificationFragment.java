package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;

import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.adapter.t;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.util.J;

public class ImportantNotificationFragment extends NotifFragment {

    private LinearLayout a;
    private ImageView b;

    private void a(boolean boolean1) {
        ImageView ImageView2 = b;
        int int3;

        if (boolean1)
            int3 = 0;
        else
            int3 = 8;
        ImageView2.setVisibility(int3);
    }

    protected final NotifFragment$Type a() {
        return NotifFragment$Type.IMPORTANT;
    }

    protected final void a(ListView ListView1) {
        View View2 = getActivity().getLayoutInflater().inflate(2130903242, (ViewGroup) ListView1, false);

        ListView1.addHeaderView(View2);
        a = (LinearLayout) View2.findViewById(2131493571);
        b = (ImageView) View2.findViewById(2131493572);
        a.setOnClickListener((View$OnClickListener) new bb(this));
    }

    protected final NotificationAdapter b() {
        return (NotificationAdapter) new t(getActivity().getLayoutInflater());
    }

    public void onNotifEvent(w w1) {
        boolean boolean2;

        if (J.a((Context) getActivity()).b() > 0)
            boolean2 = true;
        else
            boolean2 = false;
        a(boolean2);
    }

    public void onPause() {
        super.onPause();
        J.a((Context) getActivity()).c();
        i.a().b(this);
    }

    public void onResume() {
        boolean boolean1;

        super.onResume();
        i.a().a(this);
        if (J.a((Context) getActivity()).b() > 0)
            boolean1 = true;
        else
            boolean1 = false;
        a(boolean1);
    }
}
