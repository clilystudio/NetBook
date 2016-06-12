
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.util.AttributeSet;
import com.clilystudio.netbook.widget.UserInfoExTaskView;

public class UserInfoTaskLaunchView extends UserInfoExTaskView {

    public UserInfoTaskLaunchView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        setExp( "\u7ECF\u9A8C+10" );
    }
}
