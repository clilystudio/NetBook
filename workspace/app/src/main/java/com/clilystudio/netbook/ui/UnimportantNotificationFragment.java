package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.am;

public class UnimportantNotificationFragment extends NotifFragment {
    @Override
    protected final NotifFragment.Type a() {
        return NotifFragment.Type.UNIMPORTANT;
    }

    @Override
    protected final NotificationAdapter b() {
        return new NotificationAdapter(this.getActivity().getLayoutInflater()) {

            @Override
            protected String a() {
                return am.i(this.b());
            }
        };
    }
}
