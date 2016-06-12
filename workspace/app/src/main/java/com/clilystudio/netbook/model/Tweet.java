
package com.clilystudio.netbook.model;

import java.util.Date;

public class Tweet {

    private String _id;
    private Book book;
    private int commented;
    private String content;
    private Date created;
    private boolean deleted;
    private User from;
    private boolean isHot;
    public String[] names;
    private Tweet$Post post;
    private Tweet refTweet;
    private int retweeted;
    private int score;
    private String shareLinkUrl;
    private String title;
    private String type;
    private User user;
    private Tweet$VoteOption[] votes;
    public static final String TYPE_ARTICLE = "ARTICLE";
    public static final String TYPE_COMMENT = "REVIEW";
    public static final String TYPE_RETWEET = "RETWEET";
    public static final String TYPE_TWEET = "TWEET";
// Error: Internal #201: 
// The following method may not be correct.

    public boolean equals(Object Object1)
    {
    }

    public Book getBook()
    {
        return book;
    }

    public int getCommented()
    {
        return commented;
    }

    public String getContent()
    {
        return content;
    }

    public Date getCreated()
    {
        return created;
    }

    public User getFrom()
    {
        return from;
    }

    public String[] getNames()
    {
        return names;
    }

    public Tweet$Post getPost()
    {
        return post;
    }

    public Tweet getRefTweet()
    {
        return refTweet;
    }

    public int getRetweeted()
    {
        return retweeted;
    }

    public int getScore()
    {
        return score;
    }

    public String getShareLinkUrl()
    {
        return shareLinkUrl;
    }

    public String getTitle()
    {
        return title;
    }

    public String getType()
    {
        return type;
    }

    public User getUser()
    {
        return user;
    }

    public int getVoteCount()
    {
        Tweet$VoteOption[] VoteOption_1darray1 = votes;
        int int2 = 0;

        if( VoteOption_1darray1 != null )
        {
            int int3 = votes.length;

            int2 = 0;
            if( int3 != 0 )
            {
                Tweet$VoteOption[] VoteOption_1darray4 = votes;
                int int5 = VoteOption_1darray4.length;
                int int6 = 0;

                while( int6 < int5 )
                {
                    int int7 = int2 + VoteOption_1darray4[int6].count;

                    ++int6;
                    int2 = int7;
                }
            }
        }
        return int2;
    }

    public Tweet$VoteOption[] getVotes()
    {
        return votes;
    }

    public String get_id()
    {
        return _id;
    }

    public boolean isArticle()
    {
        return "ARTICLE".equals( type );
    }

    public boolean isDeleted()
    {
        return deleted;
    }

    public boolean isHot()
    {
        return isHot;
    }

    public boolean isRetween()
    {
        return getType().equals( "RETWEET" );
    }

    public boolean isTweet()
    {
        return "TWEET".equals( type );
    }

    public void setBook(Book Book1)
    {
        book = Book1;
    }

    public void setCommented(int int1)
    {
        commented = int1;
    }

    public void setContent(String String1)
    {
        content = String1;
    }

    public void setCreated(Date Date1)
    {
        created = Date1;
    }

    public void setDeleted(boolean boolean1)
    {
        deleted = boolean1;
    }

    public void setFrom(User User1)
    {
        from = User1;
    }

    public void setIsHot(boolean boolean1)
    {
        isHot = boolean1;
    }

    public void setNames(String[] String_1darray1)
    {
        names = String_1darray1;
    }

    public void setPost(Tweet$Post Post1)
    {
        post = Post1;
    }

    public void setRefTweet(Tweet Tweet1)
    {
        refTweet = Tweet1;
    }

    public void setRetweeted(int int1)
    {
        retweeted = int1;
    }

    public void setScore(int int1)
    {
        score = int1;
    }

    public void setShareLinkUrl(String String1)
    {
        shareLinkUrl = String1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }

    public void setType(String String1)
    {
        type = String1;
    }

    public void setUser(User User1)
    {
        user = User1;
    }

    public void setVotes(Tweet$VoteOption[] VoteOption_1darray1)
    {
        votes = VoteOption_1darray1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
