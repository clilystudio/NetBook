package com.clilystudio.netbook.ui;

import android.support.v4.app.FragmentActivity;
import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.adapter.Y;

public class UnimportantNotificationFragment extends NotifFragment
{
  protected final NotifFragment.Type a()
  {
    return NotifFragment.Type.UNIMPORTANT;
  }

  protected final NotificationAdapter b()
  {
    return new Y(getActivity().getLayoutInflater());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.UnimportantNotificationFragment
 * JD-Core Version:    0.6.0
 */