package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.squareup.a.l;
import com.ushaqi.zhuishushenqi.adapter.X;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.event.J;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.UGCBookListRoot;
import com.ushaqi.zhuishushenqi.model.UGCBookListRoot.UGCBook;
import java.util.Iterator;
import java.util.List;

public class MyUGCListFragment extends AbsUGCListFragment
{
  protected final UGCBookListRoot a(Account paramAccount, int paramInt)
  {
    com.ushaqi.zhuishushenqi.api.b.a();
    return com.ushaqi.zhuishushenqi.api.b.b().g(paramAccount.getToken(), paramInt);
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
      if (!localUGCBook.get_id().equals(paramJ.b()))
        continue;
      localUGCBook.setCover(paramJ.a());
      localUGCBook.setTitle(paramJ.c());
      localUGCBook.setDesc(paramJ.d());
      localUGCBook.setBookCount(paramJ.e());
    }
    this.c.notifyDataSetChanged();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.MyUGCListFragment
 * JD-Core Version:    0.6.0
 */