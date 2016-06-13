package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.adapter.Y;

public class UnimportantNotificationFragment
        extends NotifFragment {
    @Override
    protected final NotifFragment$Type a() {
        return NotifFragment$Type.UNIMPORTANT;
    }

    @Override
    protected final NotificationAdapter b() {
        return new Y(this.getActivity().getLayoutInflater());
    }
}
