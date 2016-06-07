package m.framework.ui.widget.pulltorefresh;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class PullToRefreshListAdapter$1
  implements AbsListView.OnScrollListener
{
  private int firstVisibleItem;
  private int visibleItemCount;

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.firstVisibleItem = paramInt1;
    this.visibleItemCount = paramInt2;
    this.this$0.onScroll(PullToRefreshListAdapter.access$3(this.this$0), paramInt1, paramInt2, paramInt3);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    PullToRefreshListAdapter localPullToRefreshListAdapter = this.this$0;
    boolean bool;
    if (paramInt == 2)
    {
      bool = true;
      PullToRefreshListAdapter.access$0(localPullToRefreshListAdapter, bool);
      if (paramInt == 0)
      {
        if (PullToRefreshListAdapter.access$1(this.this$0) == null)
          break label60;
        PullToRefreshListAdapter.access$1(this.this$0).onListStopScrolling(this.firstVisibleItem, this.visibleItemCount);
      }
    }
    label60: 
    do
    {
      return;
      bool = false;
      break;
    }
    while (PullToRefreshListAdapter.access$2(this.this$0) == null);
    PullToRefreshListAdapter.access$2(this.this$0).notifyDataSetChanged();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.PullToRefreshListAdapter.1
 * JD-Core Version:    0.6.0
 */