package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.view.ContextMenu;
import android.view.ContextMenu$ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$AdapterContextMenuInfo;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.F;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.widget.LabelPtrListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase$Mode;

import java.util.ArrayList;
import java.util.List;

public class MyFavTopicFragment extends Fragment {

    private z a;
    private A b;
    private LabelPtrListView c;
    private ListView d;
    private View e;
    private View f;
    private TextView g;
    private F h;
    private int j;
    private String k;
    private List i = new ArrayList();
    private com.handmark.pulltorefresh.library.j l = new x(this);

    static int a(MyFavTopicFragment MyFavTopicFragment1, int int2) {
        MyFavTopicFragment1.j = int2;
        return int2;
    }

    static TextView a(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.g;
    }

    static A a(MyFavTopicFragment MyFavTopicFragment1, A A2) {
        MyFavTopicFragment1.b = A2;
        return A2;
    }

    static z a(MyFavTopicFragment MyFavTopicFragment1, z z2) {
        MyFavTopicFragment1.a = z2;
        return z2;
    }

    static String b(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.k;
    }

    static void b(MyFavTopicFragment MyFavTopicFragment1, int int2) {
        MyFavTopicFragment1.c.setCountText("\u5171\u6536\u85CF\u4E86%d\u6761\u8BDD\u9898", int2);
    }

    static View c(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.f;
    }

    static LabelPtrListView d(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.c;
    }

    static z e(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.a;
    }

    static A f(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.b;
    }

    static ListView g(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.d;
    }

    static List h(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.i;
    }

    static View i(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.e;
    }

    static com.handmark.pulltorefresh.library.j j(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.l;
    }

    static int k(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.j;
    }

    static F l(MyFavTopicFragment MyFavTopicFragment1) {
        return MyFavTopicFragment1.h;
    }

    public boolean onContextItemSelected(MenuItem MenuItem1) {
        if (MenuItem1.getMenuInfo() instanceof AdapterView$AdapterContextMenuInfo) {
            AdapterView$AdapterContextMenuInfo AdapterContextMenuInfo2 = (AdapterView$AdapterContextMenuInfo) MenuItem1.getMenuInfo();

            if (MenuItem1.getItemId() == 0) {
                TopicPost TopicPost3 = (TopicPost) d.getAdapter().getItem(AdapterContextMenuInfo2.position);
                y y4 = new y(this, (Activity) getActivity(), 2131034218);
                String[] String_1darray5 = new String[2];

                String_1darray5[0] = k;
                String_1darray5[1] = TopicPost3.get_id();
                y4.b(String_1darray5);
            }
        }
        return super.onContextItemSelected(MenuItem1);
    }

    public void onCreateContextMenu(ContextMenu ContextMenu1, View View2, ContextMenu$ContextMenuInfo ContextMenuInfo3) {
        if (ContextMenuInfo3 instanceof AdapterView$AdapterContextMenuInfo) {
            AdapterView$AdapterContextMenuInfo AdapterContextMenuInfo4 = (AdapterView$AdapterContextMenuInfo) ContextMenuInfo3;
            TopicPost TopicPost5 = (TopicPost) d.getAdapter().getItem(AdapterContextMenuInfo4.position);
            Object Object6;

            if (TopicPost5 != null)
                Object6 = TopicPost5.getTitle();
            else
                Object6 = "\u63D0\u793A";
            ContextMenu1.setHeaderTitle((CharSequence) Object6);
            ContextMenu1.add(0, 0, 0, 2131034367);
        }
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View4 = LayoutInflater1.inflate(2130903221, ViewGroup2, false);
        Account Account5;

        f = View4.findViewById(2131493085);
        g = (TextView) View4.findViewById(2131493100);
        c = (LabelPtrListView) View4.findViewById(2131493099);
        c.setMode(PullToRefreshBase$Mode.PULL_FROM_START);
        e = LayoutInflater.from((Context) getActivity()).inflate(2130903325, null);
        d = (ListView) c.h();
        if (com.clilystudio.netbook.hpay100.a.a.i())
            d.setFooterDividersEnabled(false);
        d.addFooterView(e);
        e.setVisibility(8);
        registerForContextMenu((View) d);
        c.setOnRefreshListener((com.handmark.pulltorefresh.library.k) new u(this));
        d.setOnItemClickListener((AdapterView$OnItemClickListener) new w(this));
        h = new F(getLayoutInflater(null));
        d.setAdapter((ListAdapter) h);
        Account5 = am.e();
        if (Account5 == null) {
            f.setVisibility(8);
            g.setVisibility(0);
            g.setText((CharSequence) "\u8BF7\u767B\u5F55\u540E\u67E5\u770B");
        } else {
            A A6;
            String[] String_1darray7;

            k = Account5.getToken();
            b = new A(this, (byte) 0);
            A6 = b;
            String_1darray7 = new String[1];
            String_1darray7[0] = k;
            A6.b(String_1darray7);
        }
        return View4;
    }
}
