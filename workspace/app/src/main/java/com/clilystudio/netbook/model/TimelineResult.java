
package com.clilystudio.netbook.model;

public class TimelineResult {

    private String code;
    private boolean ok;
    private TimelineResult$Names[] retweetNames;
    private TimelineResult$Temp[] timeline;

    public String getCode()
    {
        return code;
    }

    public TimelineResult$Names[] getRetweetNames()
    {
        return retweetNames;
    }

    public TimelineResult$Temp[] getTweets()
    {
        return timeline;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setCode(String String1)
    {
        code = String1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setRetweetNames(TimelineResult$Names[] Names_1darray1)
    {
        retweetNames = Names_1darray1;
    }

    public void setTweets(TimelineResult$Temp[] Temp_1darray1)
    {
        timeline = Temp_1darray1;
    }
}
