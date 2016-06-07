package m.framework.ui.widget.pulltorefresh;

import android.widget.ListView;

public abstract class PullToRefreshListAdapter extends PullToRefreshBaseListAdapter
{
  private ListInnerAdapter adapter;
  private boolean fling;
  private ScrollableListView listView = new ScrollableListView(getContext());
  private OnListStopScrollListener osListener;

  public PullToRefreshListAdapter(PullToRefreshView paramPullToRefreshView)
  {
    super(paramPullToRefreshView);
    this.listView.setOnScrollListener(new PullToRefreshListAdapter.1(this));
    this.adapter = new ListInnerAdapter(this);
    this.listView.setAdapter(this.adapter);
  }

  public Scrollable getBodyView()
  {
    return this.listView;
  }

  public ListView getListView()
  {
    return this.listView;
  }

  public boolean isFling()
  {
    return this.fling;
  }

  public boolean isPullReady()
  {
    return this.listView.isReadyToPull();
  }

  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    this.adapter.notifyDataSetChanged();
  }

  public void onScroll(Scrollable paramScrollable, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.PullToRefreshListAdapter
 * JD-Core Version:    0.6.0
 */