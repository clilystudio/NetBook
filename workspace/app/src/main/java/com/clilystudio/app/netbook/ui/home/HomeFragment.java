package com.clilystudio.app.netbook.ui.home;

import android.support.v4.app.Fragment;
import com.umeng.a.b;

public abstract class HomeFragment extends Fragment
{
  public abstract String a();

  public void onPause()
  {
    super.onPause();
    b.b(a());
  }

  public void onResume()
  {
    super.onResume();
    b.a(a());
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.HomeFragment
 * JD-Core Version:    0.6.2
 */