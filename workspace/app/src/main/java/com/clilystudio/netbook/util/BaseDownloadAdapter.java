package com.clilystudio.netbook.util;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.R;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public abstract class BaseDownloadAdapter<V> extends BaseAdapter {
    private final V[] a = (V[])new Object[0];
    private final LayoutInflater b;
    private final int mLayoutId;
    private final int[] mViewIds;
    private V[] mDatas;

    public BaseDownloadAdapter(Activity activity) {
        this(activity.getLayoutInflater(), R.layout.list_item_resource_download);
    }

    public BaseDownloadAdapter(Activity activity, int layoutId) {
        this(activity.getLayoutInflater(), layoutId);
    }

    public BaseDownloadAdapter(LayoutInflater layoutInflater, int layoutId) {
        this.b = layoutInflater;
        this.mLayoutId = layoutId;
        this.mDatas = a;
        this.mViewIds = getViewIds();
    }

    protected final void a(int position, View view, V item) {
        this.setTagViews(view);
        this.a(position, item);
    }

    protected abstract void a(int var1, V var2);

    public final void a(Collection<V> collection) {
        if (collection != null && !collection.isEmpty()) {
            this.setDatas((V[])collection.toArray());
        } else {
            this.setDatas(a);
        }
    }

    public final void setDatas(V[] arrobject) {
        this.mDatas = arrobject != null ? arrobject : a;
        this.notifyDataSetChanged();
    }

    protected abstract int[] getViewIds();

    public final List<V> getDatas() {
        return Arrays.asList(this.mDatas);
    }

    @Override
    public int getCount() {
        return this.mDatas.length;
    }

    public V getItem(int n) {
        return this.mDatas[n];
    }

    @Override
    public long getItemId(int n) {
        return this.mDatas[n].hashCode();
    }

    @Override
    public View getView(int n, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = addTagViews(this.b.inflate(this.mLayoutId, null), this.mViewIds);
        }
        this.a(n, view, this.getItem(n));
        return view;
    }

    private View[] mTagViews;

    protected final View setVisibility(int position, boolean shouldHide) {
        View view = this.mTagViews[position];
        if (view != null) {
            if (shouldHide) {
                view.setVisibility(View.GONE);
            } else {
                view.setVisibility(View.VISIBLE);
            }
        }
        return view;
    }

    protected final View addTagViews(View view, int[] viewIds) {
        this.mTagViews = new View[viewIds.length];
        for (int i = 0; i < viewIds.length; ++i) {
            this.mTagViews[i] = view.findViewById(viewIds[i]);
        }
        view.setTag(this.mTagViews);
        return view;
    }

    protected final TextView setText(int position, CharSequence text) {
        TextView textView = (TextView) this.mTagViews[position];
        textView.setText(text);
        return textView;
    }

    protected final <T> T getTagView(int position) {
        return (T) this.mTagViews[position];
    }

    protected final void setTagViews(View view) {
        this.mTagViews = (View[]) view.getTag();
    }

}
