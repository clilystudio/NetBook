package com.clilystudio.app.netbook.ui.post;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.clilystudio.app.netbook.adapter.a;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.ui.BaseActivity;
import java.util.List;
import uk.me.lewisdeane.ldialogs.h;

public class AddReviewActivity extends BaseActivity
{
  private a a;
  private String b;
  private int c = 0;

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 0) && (paramInt2 == -1))
      this.c = paramIntent.getIntExtra("extraNextRating", 0);
    if (paramInt2 == 256)
      finish();
  }

  public void onBackPressed()
  {
    if ((this.b != null) || (this.c != 0))
    {
      h localh = new h(this);
      localh.d = "提示";
      localh.e = "离开将丢失已编辑的内容，确定离开？";
      localh.b("留在此页", null);
      localh.a("离开", new C(this));
      localh.a().show();
      return;
    }
    super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903147);
    a(2131034298, 2131034419, new A(this));
    View localView = findViewById(2131493270);
    ListView localListView = (ListView)findViewById(2131493271);
    localListView.setOnItemClickListener(new B(this));
    this.a = new a(getLayoutInflater());
    localListView.setAdapter(this.a);
    List localList = BookReadRecord.getAll();
    if ((localList != null) && (localList.size() > 0))
      this.a.a(localList);
    for (int i = 1; i != 0; i = 0)
    {
      localView.setVisibility(8);
      return;
    }
    localView.setVisibility(0);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.AddReviewActivity
 * JD-Core Version:    0.6.2
 */