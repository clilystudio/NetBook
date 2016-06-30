package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.util.J;
import com.squareup.otto.Subscribe;

public class ImportantNotificationFragment extends NotifFragment {
    private ImageView b;

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        this.b.setVisibility(bl ? View.VISIBLE : View.GONE);
    }

    @Override
    protected final NotifFragment.Type a() {
        return NotifFragment.Type.IMPORTANT;
    }

    @Override
    protected final void a(ListView listView) {
        View view = this.getActivity().getLayoutInflater().inflate(R.layout.important_notif_header, listView, false);
        listView.addHeaderView(view);
        LinearLayout a = (LinearLayout) view.findViewById(R.id.unimportant_section);
        this.b = (ImageView) view.findViewById(R.id.red_dot);
        a.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(ImportantNotificationFragment.this.getActivity(), UnimportantNotificationActivity.class);
                ImportantNotificationFragment.this.startActivity(intent);
            }
        });
    }

    @Override
    protected final NotificationAdapter b() {
        return new NotificationAdapter(this.getActivity().getLayoutInflater()) {

            @Override
            protected String a() {
                return am.h(this.b());
            }
        };
    }

    @Subscribe
    public void onNotifEvent(w w2) {
        boolean bl = J.a(this.getActivity()).b() > 0;
        this.a(bl);
    }

    @Override
    public void onPause() {
        super.onPause();
        J.a(this.getActivity()).c();
        i.a().unregister(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        i.a().register(this);
        boolean bl = J.a(this.getActivity()).b() > 0;
        this.a(bl);
    }
}
