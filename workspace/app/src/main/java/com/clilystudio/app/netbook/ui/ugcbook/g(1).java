package com.clilystudio.app.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.design.widget.am;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.UGCBookListRoot.UGCBook;
import com.clilystudio.app.netbook.ui.BaseActivity;

final class g
  implements DialogInterface.OnClickListener
{
  g(FavUGCListFragment paramFavUGCListFragment, UGCBookListRoot.UGCBook paramUGCBook)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Account localAccount = am_CommonUtils.1(BaseActivity)this.b.getActivity());
    if (localAccount != null)
    {
      FavUGCListFragment.a(this.b).setRefreshing();
      h localh = new h(this.b, (byte)0);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = localAccount.getToken();
      arrayOfString[1] = this.a.get_id();
      localh.b(arrayOfString);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.g
 * JD-Core Version:    0.6.2
 */