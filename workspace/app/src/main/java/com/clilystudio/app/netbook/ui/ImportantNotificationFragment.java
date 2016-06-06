package com.clilystudio.app.netbook.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;

import com.clilystudio.app.netbook.adapter.NotificationAdapter;
import com.clilystudio.app.netbook.adapter.t;
import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.event.w;
import com.clilystudio.app.netbook.util.J;
import com.squareup.a.b;

public class ImportantNotificationFragment extends NotifFragment {
    private LinearLayout a;
    private ImageView b;

    private void a(boolean paramBoolean) {
        ImageView localImageView = this.b;
        if (paramBoolean) ;
        for (int i = 0; ; i = 8) {
            localImageView.setVisibility(i);
            return;
        }
    }

    protected final NotifFragment.Type a() {
        return NotifFragment.Type.IMPORTANT;
    }

    protected final void a(ListView paramListView) {
        View localView = getActivity().getLayoutInflater().inflate(2130903242, paramListView, false);
        paramListView.addHeaderView(localView);
        this.a = ((LinearLayout) localView.findViewById(2131493571));
        this.b = ((ImageView) localView.findViewById(2131493572));
        this.a.setOnClickListener(new bb(this));
    }

    protected final NotificationAdapter b() {
        return new t(getActivity().getLayoutInflater());
    }

    @l
    public void onNotifEvent(w paramw) {
        if (J.a(getActivity()).b() > 0) ;
        for (boolean bool = true; ; bool = false) {
            a(bool);
            return;
        }
    }

    public void onPause() {
        super.onPause();
        J.a(getActivity()).c();
        i_OttoBus.a().b(this);
    }

    public void onResume() {
        super.onResume();
        i_OttoBus.a().a(this);
        if (J.a(getActivity()).b() > 0) ;
        for (boolean bool = true; ; bool = false) {
            a(bool);
            return;
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ImportantNotificationFragment
 * JD-Core Version:    0.6.2
 */