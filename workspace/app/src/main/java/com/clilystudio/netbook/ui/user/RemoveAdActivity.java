package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.arcsoft.hpay100.a.a;
import com.squareup.a.b;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.util.D;

public class RemoveAdActivity extends BaseLoadingActivity
{
  al a;
  private RecyclerView b;

  protected final void b()
  {
    i();
    new aj(this, 0).b(new Void[0]);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(2130903125);
    b("免广告");
    this.b = ((RecyclerView)findViewById(2131493175));
    this.b.setLayoutManager(new D(this));
    this.a = new al(this);
    this.b.setAdapter(this.a);
    i.a().a(this);
    b();
    if (a.r(this, "switch_share_remove_ad"))
    {
      findViewById(2131493176).setVisibility(0);
      findViewById(2131493177).setVisibility(0);
      findViewById(2131493179).setOnClickListener(new ai(this));
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    i.a().b(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.RemoveAdActivity
 * JD-Core Version:    0.6.0
 */