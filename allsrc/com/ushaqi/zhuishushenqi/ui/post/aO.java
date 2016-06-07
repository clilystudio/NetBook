package com.ushaqi.zhuishushenqi.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class aO
  implements DialogInterface.OnClickListener
{
  aO(BookTopicListFragment paramBookTopicListFragment)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (this.a.g != paramInt)
    {
      this.a.g = paramInt;
      BookTopicListFragment localBookTopicListFragment = this.a;
      ((BookPostTabActivity)this.a.getActivity());
      localBookTopicListFragment.f = BookPostTabActivity.f(this.a.g);
      this.a.a.setRefreshing();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aO
 * JD-Core Version:    0.6.0
 */