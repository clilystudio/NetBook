package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookShelf;

final class q implements AdapterView.OnItemLongClickListener {
    private /* synthetic */ HomeShelfFragment a;

    q(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int n2, long l2) {
        CharSequence[] arrcharSequence;
        BookShelf bookShelf = HomeShelfFragment.a(this.a, n2);
        if (bookShelf == null) {
            return true;
        }
        int n3 = bookShelf.getType();
        if (n3 == 1) {
            arrcharSequence = new String[]{"\u5220\u9664", "\u53bb\u5e7f\u544a"};
        } else if (n3 == 0) {
            arrcharSequence = bookShelf.isTop() ? new String[]{"\u53d6\u6d88\u7f6e\u9876", "\u4e66\u7c4d\u8be6\u60c5", "\u79fb\u5165\u517b\u80a5\u533a", "\u7f13\u5b58\u5168\u672c", "\u5220\u9664", "\u6279\u91cf\u7ba1\u7406"} : new String[]{"\u7f6e\u9876", "\u4e66\u7c4d\u8be6\u60c5", "\u79fb\u5165\u517b\u80a5\u533a", "\u7f13\u5b58\u5168\u672c", "\u5220\u9664", "\u6279\u91cf\u7ba1\u7406"};
        } else if (n3 == 2) {
            arrcharSequence = bookShelf.isTop() ? new String[]{"\u53d6\u6d88\u7f6e\u9876", "\u5220\u9664", "\u6279\u91cf\u7ba1\u7406"} : new String[]{"\u7f6e\u9876", "\u5220\u9664", "\u6279\u91cf\u7ba1\u7406"};
        } else {
            arrcharSequence = null;
            if (n3 == 4) {
                arrcharSequence = bookShelf.isTop() ? new String[]{"\u53d6\u6d88\u7f6e\u9876", "\u4e66\u7c4d\u8be6\u60c5", "\u5220\u9664", "\u6279\u91cf\u7ba1\u7406"} : new String[]{"\u7f6e\u9876", "\u4e66\u7c4d\u8be6\u60c5", "\u5220\u9664", "\u6279\u91cf\u7ba1\u7406"};
            }
        }
        HomeShelfFragment.a(this.a, arrcharSequence, bookShelf);
        return true;
    }
}
