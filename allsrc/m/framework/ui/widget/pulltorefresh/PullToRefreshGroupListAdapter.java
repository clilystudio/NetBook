package m.framework.ui.widget.pulltorefresh;

import android.view.View;
import android.view.ViewGroup;

public abstract class PullToRefreshGroupListAdapter extends PullToRefreshAdatper
{
  private GroupListView.GroupListAdapter adapter;
  private boolean fling;
  private ScrollableGroupListView listView = new ScrollableGroupListView(getContext());
  private OnListStopScrollListener osListener;

  public PullToRefreshGroupListAdapter(PullToRefreshView paramPullToRefreshView)
  {
    super(paramPullToRefreshView);
    this.listView.setOnScrollListener(new PullToRefreshGroupListAdapter.1(this));
    this.adapter = new PullToRefreshGroupListAdapter.2(this);
    this.listView.setAdapter(this.adapter);
  }

  public Scrollable getBodyView()
  {
    return this.listView;
  }

  public abstract Object getChild(int paramInt1, int paramInt2);

  public abstract View getChildView(int paramInt1, int paramInt2, View paramView, ViewGroup paramViewGroup);

  public abstract int getChildrenCount(int paramInt);

  public abstract int getGroupCount();

  public abstract String getGroupTitle(int paramInt);

  public abstract View getGroupTitleView(int paramInt, View paramView, ViewGroup paramViewGroup);

  public GroupListView getListView()
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
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.PullToRefreshGroupListAdapter
 * JD-Core Version:    0.6.0
 */