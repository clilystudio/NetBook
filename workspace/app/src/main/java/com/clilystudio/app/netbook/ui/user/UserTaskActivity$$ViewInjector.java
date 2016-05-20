package com.clilystudio.app.netbook.ui.user;

import android.widget.TextView;
import butterknife.ButterKnife.Finder;

public class UserTaskActivity$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, UserTaskActivity paramUserTaskActivity, Object paramObject)
  {
    paramUserTaskActivity.mExpInfo = ((TextView)paramFinder.findRequiredView(paramObject, 2131493254, "field 'mExpInfo'"));
    paramUserTaskActivity.mExpLaunch = ((TextView)paramFinder.findRequiredView(paramObject, 2131493255, "field 'mExpLaunch'"));
    paramUserTaskActivity.mExpShareTopic = ((TextView)paramFinder.findRequiredView(paramObject, 2131493256, "field 'mExpShareTopic'"));
    paramUserTaskActivity.mExpShareBook = ((TextView)paramFinder.findRequiredView(paramObject, 2131493257, "field 'mExpShareBook'"));
    paramUserTaskActivity.mExpVote = ((TextView)paramFinder.findRequiredView(paramObject, 2131493259, "field 'mExpVote'"));
    paramUserTaskActivity.mVoteView = paramFinder.findRequiredView(paramObject, 2131493258, "field 'mVoteView'");
  }

  public static void reset(UserTaskActivity paramUserTaskActivity)
  {
    paramUserTaskActivity.mExpInfo = null;
    paramUserTaskActivity.mExpLaunch = null;
    paramUserTaskActivity.mExpShareTopic = null;
    paramUserTaskActivity.mExpShareBook = null;
    paramUserTaskActivity.mExpVote = null;
    paramUserTaskActivity.mVoteView = null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.UserTaskActivity..ViewInjector
 * JD-Core Version:    0.6.2
 */