package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.adapter.NotificationAdapter;
import com.clilystudio.app.netbook.adapter.Y;

public class UnimportantNotificationFragment extends NotifFragment {
    protected final NotifFragment.Type a() {
        return NotifFragment.Type.UNIMPORTANT;
    }

    protected final NotificationAdapter b() {
        return new Y(getActivity().getLayoutInflater());
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.UnimportantNotificationFragment
 * JD-Core Version:    0.6.2
 */