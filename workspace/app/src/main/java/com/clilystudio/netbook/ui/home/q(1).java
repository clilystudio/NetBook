package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookShelf;

final class q
        implements AdapterView.OnItemLongClickListener {
    q(HomeShelfFragment paramHomeShelfFragment) {
    }

    public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        BookShelf localBookShelf = HomeShelfFragment.a(this.a, paramInt);
        if (localBookShelf == null)
            return true;
        int i = localBookShelf.getType();
        String[] arrayOfString;
        if (i == 1)
            arrayOfString = new String[]{"删除", "去广告"};
        while (true) {
            HomeShelfFragment.a(this.a, arrayOfString, localBookShelf);
            return true;
            if (i == 0) {
                if (localBookShelf.isTop()) {
                    arrayOfString = new String[]{"取消置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"};
                    continue;
                }
                arrayOfString = new String[]{"置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"};
                continue;
            }
            if (i == 2) {
                if (localBookShelf.isTop()) {
                    arrayOfString = new String[]{"取消置顶", "删除", "批量管理"};
                    continue;
                }
                arrayOfString = new String[]{"置顶", "删除", "批量管理"};
                continue;
            }
            arrayOfString = null;
            if (i != 4)
                continue;
            if (localBookShelf.isTop()) {
                arrayOfString = new String[]{"取消置顶", "书籍详情", "删除", "批量管理"};
                continue;
            }
            arrayOfString = new String[]{"置顶", "书籍详情", "删除", "批量管理"};
        }
    }
}

