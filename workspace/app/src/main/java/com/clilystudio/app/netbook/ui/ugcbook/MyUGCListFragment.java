package com.clilystudio.app.netbook.ui.ugcbook;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.squareup.a.l;
import com.clilystudio.app.netbook.adapter.X;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.event.J;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.UGCBookListRoot;
import com.clilystudio.app.netbook.model.UGCBookListRoot.UGCBook;
import java.util.Iterator;
import java.util.List;

public class MyUGCListFragment extends AbsUGCListFragment
{
  protected final UGCBookListRoot a(Account paramAccount, int paramInt)
  {
    com.clilystudio.app.netbook.api.b.a();
    return com.clilystudio.app.netbook.api.b.b().g(paramAccount.getToken(), paramInt);
  }

  protected final String c()
  {
    return "这里还没有书单，去发布一个吧";
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i.a().a(this);
  }

  public void onDestroy()
  {
    super.onDestroy();
    i.a().b(this);
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - this.b.getHeaderViewsCount();
    if ((i >= 0) && (i < this.i.size()))
    {
      UGCBookListRoot.UGCBook localUGCBook = (UGCBookListRoot.UGCBook)this.i.get(i);
      if (localUGCBook != null)
      {
        Intent localIntent = new Intent(getActivity(), UGCDetailActivity.class);
        localIntent.putExtra("book_id", localUGCBook.get_id());
        localIntent.putExtra("my_list", true);
        startActivity(localIntent);
      }
    }
  }

  @l
  public void onUpdateUgcList(J paramJ)
  {
    if ((this.i == null) || (this.c == null))
      return;
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
    {
      UGCBookListRoot.UGCBook localUGCBook = (UGCBookListRoot.UGCBook)localIterator.next();
      if (localUGCBook.get_id().equals(paramJ.b()))
      {
        localUGCBook.setCover(paramJ.a());
        localUGCBook.setTitle(paramJ.c());
        localUGCBook.setDesc(paramJ.d());
        localUGCBook.setBookCount(paramJ.e());
      }
    }
    this.c.notifyDataSetChanged();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.MyUGCListFragment
 * JD-Core Version:    0.6.2
 */