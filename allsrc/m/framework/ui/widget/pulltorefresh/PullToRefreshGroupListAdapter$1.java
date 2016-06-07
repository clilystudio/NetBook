package m.framework.ui.widget.pulltorefresh;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class PullToRefreshGroupListAdapter$1
  implements AbsListView.OnScrollListener
{
  private int firstVisibleItem;
  private int visibleItemCount;

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.firstVisibleItem = paramInt1;
    this.visibleItemCount = paramInt2;
    this.this$0.onScroll(PullToRefreshGroupListAdapter.access$3(this.this$0), paramInt1, paramInt2, paramInt3);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    PullToRefreshGroupListAdapter localPullToRefreshGroupListAdapter = this.this$0;
    boolean bool;
    if (paramInt == 2)
    {
      bool = true;
      PullToRefreshGroupListAdapter.access$0(localPullToRefreshGroupListAdapter, bool);
      if (paramInt == 0)
      {
        if (PullToRefreshGroupListAdapter.access$1(this.this$0) == null)
          break label60;
        PullToRefreshGroupListAdapter.access$1(this.this$0).onListStopScrolling(this.firstVisibleItem, this.visibleItemCount);
      }
    }
    label60: 
    do
    {
      return;
      bool = false;
      break;
    }
    while (PullToRefreshGroupListAdapter.access$2(this.this$0) == null);
    PullToRefreshGroupListAdapter.access$2(this.this$0).notifyDataSetChanged();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.PullToRefreshGroupListAdapter.1
 * JD-Core Version:    0.6.0
 */