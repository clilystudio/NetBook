package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.design.widget.am;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.UGCBookListRoot.UGCBook;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;

final class g
  implements DialogInterface.OnClickListener
{
  g(FavUGCListFragment paramFavUGCListFragment, UGCBookListRoot.UGCBook paramUGCBook)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Account localAccount = am.a((BaseActivity)this.b.getActivity());
    if (localAccount != null)
    {
      FavUGCListFragment.a(this.b).setRefreshing();
      h localh = new h(this.b, 0);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = localAccount.getToken();
      arrayOfString[1] = this.a.get_id();
      localh.b(arrayOfString);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.g
 * JD-Core Version:    0.6.0
 */