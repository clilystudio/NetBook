
package com.clilystudio.netbook.ui;

import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.adapter.Y;

public class UnimportantNotificationFragment extends NotifFragment {

    protected final NotifFragment$Type a()
    {
        return NotifFragment$Type.UNIMPORTANT;
    }

    protected final NotificationAdapter b()
    {
        return (NotificationAdapter) new Y( getActivity().getLayoutInflater() );
    }
}
