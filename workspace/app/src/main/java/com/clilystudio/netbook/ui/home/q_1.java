
package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemLongClickListener;
import com.clilystudio.netbook.model.BookShelf;

final class q implements AdapterView$OnItemLongClickListener {

    q(HomeShelfFragment HomeShelfFragment1)
    {
        a = HomeShelfFragment1;
    }

    private HomeShelfFragment a;

    public final boolean onItemLongClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        BookShelf BookShelf6 = HomeShelfFragment.a( a, int3 );

        if( BookShelf6 != null )
        {
            int int7 = BookShelf6.getType();
            Object[] Object_1darray8;

            if( int7 == 1 )
                Object_1darray8 = new String[] { "\u5220\u9664", "\u53BB\u5E7F\u544A" };
            else if( int7 == 0 )
            {
                if( BookShelf6.isTop() )
                    Object_1darray8 = new String[] { "\u53D6\u6D88\u7F6E\u9876", "\u4E66\u7C4D\u8BE6\u60C5", "\u79FB\u5165\u517B\u80A5\u533A", "\u7F13\u5B58\u5168\u672C", "\u5220\u9664", "\u6279\u91CF\u7BA1\u7406" };
                else
                    Object_1darray8 = new String[] { "\u7F6E\u9876", "\u4E66\u7C4D\u8BE6\u60C5", "\u79FB\u5165\u517B\u80A5\u533A", "\u7F13\u5B58\u5168\u672C", "\u5220\u9664", "\u6279\u91CF\u7BA1\u7406" };
            }
            else if( int7 == 2 )
            {
                if( BookShelf6.isTop() )
                    Object_1darray8 = new String[] { "\u53D6\u6D88\u7F6E\u9876", "\u5220\u9664", "\u6279\u91CF\u7BA1\u7406" };
                else
                    Object_1darray8 = new String[] { "\u7F6E\u9876", "\u5220\u9664", "\u6279\u91CF\u7BA1\u7406" };
            }
            else
            {
                Object_1darray8 = null;
                if( int7 == 4 )
                {
                    if( BookShelf6.isTop() )
                        Object_1darray8 = new String[] { "\u53D6\u6D88\u7F6E\u9876", "\u4E66\u7C4D\u8BE6\u60C5", "\u5220\u9664", "\u6279\u91CF\u7BA1\u7406" };
                    else
                        Object_1darray8 = new String[] { "\u7F6E\u9876", "\u4E66\u7C4D\u8BE6\u60C5", "\u5220\u9664", "\u6279\u91CF\u7BA1\u7406" };
                }
            }
            HomeShelfFragment.a( a, (CharSequence[]) Object_1darray8, BookShelf6 );
        }
        return true;
    }
}
