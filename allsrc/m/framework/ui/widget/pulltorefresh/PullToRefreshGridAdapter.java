package m.framework.ui.widget.pulltorefresh;

import android.widget.GridView;

public abstract class PullToRefreshGridAdapter extends PullToRefreshBaseListAdapter
{
  private ListInnerAdapter adapter;
  private boolean fling;
  private ScrollableGridView gridView = new ScrollableGridView(getContext());
  private OnListStopScrollListener osListener;

  public PullToRefreshGridAdapter(PullToRefreshView paramPullToRefreshView)
  {
    super(paramPullToRefreshView);
    this.gridView.setOnScrollListener(new PullToRefreshGridAdapter.1(this));
    this.adapter = new ListInnerAdapter(this);
    this.gridView.setAdapter(this.adapter);
  }

  public Scrollable getBodyView()
  {
    return this.gridView;
  }

  public GridView getGridView()
  {
    return this.gridView;
  }

  public boolean isFling()
  {
    return this.fling;
  }

  public boolean isPullReady()
  {
    return this.gridView.isReadyToPull();
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
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.PullToRefreshGridAdapter
 * JD-Core Version:    0.6.0
 */