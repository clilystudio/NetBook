package com.ushaqi.zhuishushenqi.ui;

import android.support.v4.app.FragmentActivity;
import com.ushaqi.zhuishushenqi.adapter.NotificationAdapter;
import com.ushaqi.zhuishushenqi.adapter.Y;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.UnimportantNotificationFragment
 * JD-Core Version:    0.6.0
 */