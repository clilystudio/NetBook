package com.clilystudio.app.netbook.ui.home;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.model.BookShelf;

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
                if (localBookShelf.isTop())
                    arrayOfString = new String[]{"取消置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"};
                else
                    arrayOfString = new String[]{"置顶", "书籍详情", "移入养肥区", "缓存全本", "删除", "批量管理"};
            } else if (i == 2) {
                if (localBookShelf.isTop())
                    arrayOfString = new String[]{"取消置顶", "删除", "批量管理"};
                else
                    arrayOfString = new String[]{"置顶", "删除", "批量管理"};
            } else {
                arrayOfString = null;
                if (i == 4)
                    if (localBookShelf.isTop())
                        arrayOfString = new String[]{"取消置顶", "书籍详情", "删除", "批量管理"};
                    else
                        arrayOfString = new String[]{"置顶", "书籍详情", "删除", "批量管理"};
            }
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.q
 * JD-Core Version:    0.6.2
 */