
package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.widget.CoverView;

public class RelateBooksFragment$ViewHolder {

    RelateBooksFragment$ViewHolder(RelateBooksFragment RelateBooksFragment1, View View2)
    {
        ButterKnife.inject( this, View2 );
    }

    CoverView mBook;
    View mContainer;
    TextView mTitle;
}
